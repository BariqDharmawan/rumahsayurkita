<?php

namespace App\Http\Controllers;

use App\Model\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller {
    public $coupon;

    public function __construct() {
        $this->coupon = new Coupon;
    }

    public function index() {
        $coupons = Coupon::whereStatus("AC")->get();
        return view('coupons.index', compact('coupons'));
    }

    public function show(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $coupon = Coupon::where('id', $id)->first();
            if (isset($coupon->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'title' => 'required',
                        'description' => 'required',
                        'coupon_code' => 'required|min:4|max:8',
                        'start_date' => 'required',
                        'end_date' => 'required',
                        'discount_value' => 'required|numeric|between:0,99.99',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/coupons/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $coupon->title = $request->title;
                    $coupon->description = $request->description;
                    $coupon->coupon_code = $request->coupon_code;
                    $coupon->start_date = $request->start_date;
                    $coupon->end_date = $request->end_date;
                    $coupon->discount_value = $request->discount_value;
                    $coupon->amount_type = "percent";
                    $coupon->save();
                    $request->session()->flash('success', 'Coupon updated Successfully');
                    return redirect('admin/coupons/edit/' . $id);
                }
                return view('coupons.view', compact('coupon', 'type'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('coupons');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('coupons');
        }
    }
    public function create(Request $request) {
        // dd($request);
        $coupon = Coupon::where('status', 'AC')->get();
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'title' => 'required',
                'description' => 'required',
                'coupon_code' => 'required|min:4|max:8|unique:coupon_codes,coupon_code',
                'start_date' => 'required',
                'end_date' => 'required',
                'discount_value' => 'required|numeric|between:0,99.99',
            ]);

            // $validate->setAttributeNames(['coupon_code' => 'Product Name']);
            // $validate->setAttributeNames(['start_date' => 'Unit Name']);
            if ($validate->fails()) {
                return redirect()->route('addCoupon')->withInput($request->all())->withErrors($validate);
            }
            $newCoupon = new Coupon();
            $newCoupon->title = $request->title;
            $newCoupon->description = $request->description;
            $newCoupon->coupon_code = $request->coupon_code;
            $newCoupon->start_date = $request->start_date;
            $newCoupon->end_date = $request->end_date;
            $newCoupon->discount_value = $request->discount_value;
            $newCoupon->amount_type = "percent";
            $newCoupon->save();
            $request->session()->flash('success', 'Coupon added successfully');
            return redirect()->route('addCoupon');
        }
        return view('coupons.addnew', compact('coupon'));
    }
    public function destroy(Request $request) {
        $id = $request->id;
        $delete = Coupon::find($id);
        if (isset($delete->id)) {
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Coupon remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }

}
