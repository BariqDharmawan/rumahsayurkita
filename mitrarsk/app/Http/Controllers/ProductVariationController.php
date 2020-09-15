<?php

namespace App\Http\Controllers;

use App\Model\Product;
use App\Model\ProductUnit;
use App\Model\ProductVariation;
use DB;
use Illuminate\Http\Request;

class ProductVariationController extends Controller
{
    public $productvariation;

    public function __construct()
    {
        $this->productvariation = new ProductVariation;
    }
    public function index()
    {
        $productvariation = ProductVariation::select("*", DB::raw("(select name from products where product_variations.product_id = products.id and products.status='AC') as productname"), DB::raw("(select name from product_units where product_variations.unit_id = product_units.id and product_units.status='AC') as unitname"))->where('status', '!=', 'DL')->get();
        //dd($productvariation);
        return view('productvariation.index', compact('productvariation'));
    }
    public function show(Request $request, $id = null)
    {
        $products = Product::where('status', 'AC')->get();
        //$products[''] = 'Select Products';
        $units = ProductUnit::where('status', 'AC')->get();
        //$units[''] = 'Select Unit';
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $Product = ProductVariation::select("*", DB::raw("(select name from products where product_variations.product_id = products.id and products.status='AC') as productname"), DB::raw("(select name from product_units where product_variations.unit_id = product_units.id and product_units.status='AC') as unitname"))->where('id', $id)->first();

            // $Product = ProductVariation::where('id', $id)->first();
            if (isset($Product->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'weight' => 'required',
                        'product_id' => 'required',
                        'unit_id' => 'required',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/product-variations/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $price = str_replace(".","",$request->price);
                    $special_price = str_replace(".","",$request->special_price);        
                    if ($special_price >= $price) {
                        $request->session()->flash('error', 'Special price can not be greater or equal to original price');
                        return redirect('admin/product-variations/edit/' . $id)->withInput($request->all());
                    }
                    $Product->product_id = $request->product_id;
                    $Product->unit_id = $request->unit_id;
                    $Product->weight = $request->weight;
                    $Product->price = $price;
                    $Product->special_price = $special_price;
                    $Product->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';
                    $Product->save();
                    $request->session()->flash('success', 'Variation updated Successfully');
                    return redirect('admin/product-variations');
                }
                return view('productvariation.view', compact('Product', 'type', 'products', 'units'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('products');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('products');
        }
    }
    public function create(Request $request)
    {
        $products = Product::where('status', 'AC')->get();

        $units = ProductUnit::where('status', 'AC')->get();

        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'weight' => 'required',
                'price' => 'required',
                'product_id' => 'required',
                'unit_id' => 'required',
            ]);
            $validate->setAttributeNames(['product_id' => 'Product Name']);
            $validate->setAttributeNames(['unit_id' => 'Unit Name']);
            if ($validate->fails()) {
                return redirect()->route('addnewVariations')->withInput($request->all())->withErrors($validate);
            }
            if ($request->special_price >= $request->price) {
                $request->session()->flash('error', 'Special price can not be greater or equal to original price');
                return redirect()->route('addnewVariations')->withInput($request->all());
            }

            $price = str_replace(".","",$request->price);
            $special_price = str_replace(".","",$request->special_price);
            $productVariation = new ProductVariation();
            $productVariation->product_id = $request->product_id;
            $productVariation->unit_id = $request->unit_id;
            $productVariation->weight = $request->weight;
            $productVariation->price = $price;
            $productVariation->special_price = $special_price;
            $productVariation->save();
            $request->session()->flash('success', 'Product variation added successfully');
            return redirect()->route('addnewVariations');
        }
        return view('productvariation.addnew', compact('products', 'units'));
    }
    public function destroy(Request $request)
    {
        $id = $request->id;
        $delete = ProductVariation::find($id);
        if (isset($delete->id)) {
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Variation remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }

}
