<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;

use DB;

class MustBeRestockedExport implements FromCollection, WithHeadings
{
    use Exportable;

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $products = DB::table('products')
            ->select('products.products_id', 'products_description.products_name', 'products.products_model', 'products.products_type')
            ->leftJoin('products_description', 'products_description.products_id', '=', 'products.products_id')
            ->get();
        $products_array = array();
        $lowLimit = 0;
        $outOfStock = 0;

        foreach ($products as $product) {
            if ($product->products_type == 1) {
            } elseif ($product->products_type == 0 or $product->products_type == 2) {
                $inventoriesIn = DB::table('inventory')->where('products_id', $product->products_id)->where('stock_type', 'in')->get();
                $inventoriesOut = DB::table('inventory')->where('products_id', $product->products_id)->where('stock_type', 'out')->get();
                $stockIn = 0;
                $stockOut = 0;
                foreach ($inventoriesIn as $inventory) {
                    $stockIn += $inventory->stock;
                }
                foreach ($inventoriesOut as $inventory) {
                    $stockOut += $inventory->stock;
                }
                $stocks = $stockIn - $stockOut;
                if ($stocks < 0) {
                    $product->quantityToRestocked = -$stocks;
                    unset($product->products_type);
                    array_push($products_array, $product);
                }
            }
        }
        $products = \collect($products_array);
        return $products;
    }

    public function headings(): array
    {
        return [
            'products_id',
            'products_name',
            'products_model',
            'quantity_to_restocked'
        ];
    }
}
