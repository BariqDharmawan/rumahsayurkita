<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Carbon;

use DB;

class NetProfitPerItemExport implements FromCollection, withHeadings
{
    use Exportable;

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $firstDayThisMonth = Carbon::today()->startOfMonth();
        $products = DB::table('products')
            ->select('products.products_id', 'products_description.products_name', 'products.products_model')
            ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
            ->get();
        foreach ($products as $product) {
            $product->netProfit = 0;
        }
        $ordersThisMonth = DB::table('orders')
            ->where('customers_id', '!=', '')
            ->where('date_purchased', '>=', $firstDayThisMonth->format('Y-m-d H:m:s'))
            ->get();
        foreach ($ordersThisMonth as $order) {
            $history = DB::table('orders_status_history')
                ->where('orders_id', $order->orders_id)
                ->orderBy('date_added', 'DESC')
                ->first();
            if ($history->orders_status_id != 3 && $history->orders_status_id != 4) {
                $order_products = DB::table('orders_products')
                    ->where('orders_id', $order->orders_id)
                    ->get();
                foreach ($order_products as $order_product) {
                    $purchasedPrice = 0;
                    $soldPrice = 0;
                    $soldPrice += $order_product->final_price;
                    $stock = DB::table('inventory')
                        ->where('products_id', $order_product->products_id)
                        ->where('stock_type', 'in')
                        ->latest()
                        ->first();
                    $purchasedPrice += $stock->purchase_price * $order_product->products_quantity;
                    foreach ($products as $product){
                        if ($product->products_id == $order_product->products_id){
                            $product->netProfit += $soldPrice - $purchasedPrice;
                        }
                    }
                }
            }
        }
        return $products;
    }

    public function headings(): array
    {
        $date = Carbon::today()->format('F Y');
        return [
            'products_id',
            'products_name',
            'products_model',
            "net profit ({$date})"
        ];
    }
}
