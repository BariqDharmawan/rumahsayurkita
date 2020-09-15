<?php

namespace App\Http\Controllers;

use App\Model\ProductBrand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    public $productbrands;

    public function __construct()
    {
        $this->productbrands = new ProductBrand;
    }
    public function index()
    {
        $productbrands = $this->productbrands->get_all_brands();
        return view('brands.index', compact('productbrands'));
    }
    public function show(Request $request, $id = null)
    {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $productbrands = ProductBrand::where('id', $id)->first();
            if (isset($productbrands->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'name' => 'required',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/brand/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $productbrands->name = $request->get('name');
                    $productbrands->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';

                    $productbrands->save();
                    $request->session()->flash('success', 'Brand Name updated Successfully');
                    return redirect('admin/brands');
                }
                return view('brands.view', compact('productbrands', 'type'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('brands');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('brands');
        }
    }
    public function create(Request $request)
    {
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'name' => 'required',
            ]);
            if ($validate->fails()) {
                return redirect()->route('addnewBrand')->withInput($request->all())->withErrors($validate);
            }
            $data['name'] = $request->name;
            ProductBrand::create($data);
            $request->session()->flash('success', 'Brand added successfully');
            return redirect()->route('addnewBrand');
        }
        return view('brands.addnew');

    }
    public function destroy(Request $request)
    {
        $id = $request->id;
        $delete = ProductBrand::find($id);
        if (isset($delete->id)) {
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Brand remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }
}
