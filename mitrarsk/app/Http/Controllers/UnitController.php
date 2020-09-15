<?php

namespace App\Http\Controllers;

use App\Model\ProductUnit;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    public $productunits;

    public function __construct()
    {
        $this->productunits = new ProductUnit;
    }
    public function index()
    {
        $productunits = ProductUnit::where('status','!=','DL')->get();
        //dd($productunits);
        return view('units.index', compact('productunits'));
    }
    public function show(Request $request, $id = null)
    {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $ProductUnit = ProductUnit::where('id', $id)->first();
            if (isset($ProductUnit->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'name' => 'required',
                        'code' => 'required',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/unit/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $ProductUnit->name = $request->get('name');
                    $ProductUnit->code = $request->get('code');
                    $ProductUnit->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';

                    $ProductUnit->save();
                    $request->session()->flash('success', 'Unit Name updated Successfully');
                    return redirect('admin/units');
                }
                return view('units.view', compact('ProductUnit', 'type'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('units');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('units');
        }
    }
    public function create(Request $request)
    {
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'name' => 'required',
                'code' => 'required',
            ]);
            if ($validate->fails()) {
                return redirect()->route('addnewUnit')->withInput($request->all())->withErrors($validate);
            }
            $productunit = new ProductUnit();
            $productunit->name = $request->name;
            $productunit->code = $request->code;
            //ProductUnit::create($data);
            $productunit->save();
            $request->session()->flash('success', 'Unit added successfully');
            return redirect()->route('addnewUnit');
        }
        return view('units.addnew');

    }
    public function destroy(Request $request)
    {
        $id = $request->id;
        $delete = ProductUnit::find($id);
        if (isset($delete->id)) {
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Unit remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }
}
