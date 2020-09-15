<?php

namespace App\Http\Controllers\Auth;

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class WebsiteController extends Controller {
    public function index(Request $request) {
        // return view('website.index');
        return redirect('admin');
    }

}