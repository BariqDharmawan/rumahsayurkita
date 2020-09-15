<?php

namespace App\Http\Controllers;

use App\Model\Category;
use App\Model\Product;
use App\Model\ProductBrand;
use Illuminate\Http\Request;

class ProductController extends Controller {
    public $products;

    public function __construct() {
        $this->products = new Product;
    }

    public function index() {
        $products = $this->products->get_all_products();
        $brands = ProductBrand::where('status', 'AC')->get();
        $category = Category::where('status', 'AC')->get();
        // dd($products->toArray());
        // print_r($products[0]['get_brand']['name']);
        // echo (is_array($products[0]->get_brand))?$product->get_brand->name:'kjnkj';
        // die;
        return view('product.index', compact('products', 'brands', 'category'));
    }

    public function show(Request $request, $id = null) {
        $brands = ProductBrand::where('status', 'AC')->get();
        $category = Category::where('status', 'AC')->get();
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $Product = Product::where('id', $id)->first();
            if (isset($Product->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'name' => 'required',
                        //'image' => 'required',
                        // 'brand_id' => 'required',
                        'category_id' => 'required',
                        'quantity' => 'required|numeric|min:1',
                        // 'cgst' => 'required|numeric|min:1',
                        // 'igst' => 'required|numeric|min:1',
                        // 'sgst' => 'required|numeric|min:1',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/product/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $Product->name = $request->get('name');
                    $Product->brand_id = $request->brand_id;
                    $Product->category_id = $request->category_id;
                    $Product->price = $request->price;
                    $Product->quantity = $request->quantity;
                    $Product->cgst = $request->cgst;
                    $Product->igst = $request->igst;
                    $Product->sgst = $request->sgst;
                    $Product->description = $request->description;
                    $Product->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';
                    $Product->is_featured = ($request->post('is_featured') == 'on') ? '1' : null;
                    $Product->is_quick_grab = ($request->post('is_quick_grab') == 'on') ? '1' : null;
                    $Product->is_offered = ($request->post('is_offered') == 'on') ? '1' : null;

                    $logofile = $request->file('image');
                    if ($Product->image) {
                        if ($request->hasFile('image')) {
                            if (file_exists(public_path('uploads/products/') . $Product->image)) {
                                unlink(public_path('uploads/products/') . $Product->image);
                            }
                        }
                    }
                    if (isset($logofile)) {
                        $datetime = date('YmdHis');
                        $image = $request->image->getClientOriginalName();
                        $imageName = $datetime . '_' . $image;
                        $logofile->move(public_path('uploads/products/'), $imageName);
                        $Product->image = $imageName;
                    }

                    $Product->save();
                    $request->session()->flash('success', 'Product updated successfully');
                    return redirect('admin/products');
                }
                return view('product.view', compact('Product', 'type', 'brands', 'category'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('products');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('products');
        }
    }

    public function create(Request $request) {
        $brands = ProductBrand::where('status', 'AC')->get();
        $category = Category::where('status', 'AC')->get();
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'name' => 'required',
                'image' => 'required',
                // 'brand_id' => 'required',
                'description' => 'required',
                'category_id' => 'required',
                'quantity' => 'required|numeric|min:1',
                // 'cgst' => 'required|numeric|min:1',
                // 'igst' => 'required|numeric|min:1',
                // 'sgst' => 'required|numeric|min:1',

            ]);
            $validate->setAttributeNames(['brand_id' => 'Brand Name']);
            $validate->setAttributeNames(['category_id' => 'Category Name']);

            $validate->setAttributeNames(['quantity' => 'Product quantity']);
            $validate->setAttributeNames(['image' => 'Product image']);
            if ($validate->fails()) {
                return redirect()->route('addnewProduct')->withInput($request->all())->withErrors($validate);
            }
            $Product = new Product();
            $logofile = $request->file('image');
            if (isset($logofile)) {
                $datetime = date('YmdHis');
                $image = $request->image->getClientOriginalName();
                $imageName = $datetime . '_' . $image;
                $logofile->move(public_path('uploads/products/'), $imageName);
                $Product->name = $request->get('name');
                $Product->brand_id = $request->brand_id;
                $Product->category_id = $request->category_id;
                $Product->price = $request->price;
                $Product->quantity = $request->quantity;
                $Product->cgst = $request->cgst;
                $Product->igst = $request->igst;
                $Product->sgst = $request->sgst;
                $Product->description = $request->description;
                $Product->image = $imageName;
                $Product->is_featured = ($request->post('is_featured') == 'on') ? '1' : null;
                $Product->is_quick_grab = ($request->post('is_quick_grab') == 'on') ? '1' : null;
                $Product->is_offered = ($request->post('is_offered') == 'on') ? '1' : null;

            }
            // dd($data);
            $Product->save();
            $request->session()->flash('success', 'Product added successfully');
            return redirect()->route('addnewProduct');
        }
        return view('product.addnew', compact('brands', 'category'));
    }

    public function destroy(Request $request) {
        $id = $request->id;
        $delete = Product::find($id);
        if (isset($delete->id)) {
            if (file_exists(public_path('uploads/products/') . $delete->image)) {
                unlink(public_path('uploads/products/') . $delete->image);
            }
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Product remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }
    }

}
