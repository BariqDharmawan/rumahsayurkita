<?php

namespace App\Http\Controllers;

use App\Model\BusRuleRef;
use Illuminate\Http\Request;

class SettingController extends Controller {

    public function show(Request $request) {
        $setting = BusRuleRef::whereIn('rule_name', ['delivery_charges', 'minimum_order_amount'])->get();
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'delivery_charges' => 'required|numeric',
                'minimum_order_amount' => 'required|numeric',
            ]);
            if ($validate->fails()) {
                return redirect('admin/coupons/edit/' . $id)->withInput($request->all())->withErrors($validate);
            }
            $mySetting = BusRuleRef::where("rule_name", "delivery_charges")->first();
            $mySetting->rule_value = $request->delivery_charges;
            $mySetting->save();
            $mySetting = BusRuleRef::where("rule_name", "minimum_order_amount")->first();
            $mySetting->rule_value = $request->minimum_order_amount;
            $mySetting->save();
            $request->session()->flash('success', 'Setting updated Successfully');
            return redirect('admin/setting');
        }
        return view('setting.addnew', compact('setting'));
    }

}
