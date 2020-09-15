<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

Route::get('/resetPassword', ['uses' => 'LoginController@resetPasswordApp'])->name('resetGetApp');
Route::post('/resetPassword', ['uses' => 'LoginController@resetPasswordApp'])->name('resetPostApp');
Route::get('/', 'WebsiteController@index')->name('home');
Route::get('/testfirebase', 'OrderController@testfirebase')->name('testfirebase');

//email templates
Route::get('/admintemp', 'WebsiteController@admintemp')->name('admintemp');
Route::get('/usertemp', 'WebsiteController@usertemp')->name('usertemp');
Route::get('/drivertemp', 'WebsiteController@drivertemp')->name('drivertemp');
Route::get('/invoicetemp', 'WebsiteController@invoicetemp')->name('invoicetemp');
Route::get('/driverinvoicetemp', 'WebsiteController@driverinvoicetemp')->name('driverinvoicetemp');

Route::get('/payment', ['uses' => 'TransactionsController@payment'])->name('payment');
Route::post('/ccavRequestHandler', ['uses' => 'TransactionsController@ccavRequestHandler'])->name('ccavRequestHandler');
Route::post('/ccavResponseHandler', ['uses' => 'TransactionsController@ccavResponseHandler'])->name('ccavResponseHandler');

Route::prefix('admin')->group(function () {
    Route::get('/', ['middleware' => ['adminAuth'], 'uses' => 'LoginController@index'])->name('index');
    Route::post('/', ['uses' => 'LoginController@login'])->name('login');
    Route::get('/export-today-order', ['uses' => 'LoginController@export_today_order'])->name('exportTodayOrder');
    Route::get('/logout', ['middleware' => ['adminAuth'], 'uses' => '\App\Http\Controllers\Auth\LoginController@logout'])->name('logout');
    Route::get('/forgot-password', ['uses' => 'LoginController@sendPasswordMail'])->name('forgotGet');
    Route::post('/forgot-password', ['uses' => 'LoginController@sendPasswordMail'])->name('forgotPost');
    Route::get('/reset-password', ['uses' => 'LoginController@resetPassword'])->name('resetGet');
    Route::post('/reset-password', ['uses' => 'LoginController@resetPassword'])->name('resetPost');

    Route::middleware(['loginAuth', 'auth', 'adminAuth'])->group(function () {

        // Index and dashboard
        Route::get('/dashboard', ['uses' => 'LoginController@index'])->name('dashboard');
        Route::any('/change-password', ['uses' => 'UserController@changePassword'])->name('changePassword');
        Route::any('/update-password', ['uses' => 'UserController@updatePassword'])->name('resetPassword');

        //Product category Module
        Route::get('/category', ['uses' => 'CategoryController@index'])->name('category');
        Route::any('/category/addnew', ['uses' => 'CategoryController@create'])->name('createCategory');
        Route::get('/category/{id?}', ['uses' => 'CategoryController@show'])->name('viewCategory');
        Route::any('/category/edit/{id?}', ['uses' => 'CategoryController@show'])->name('editCategory');
        Route::any('category/destroy/{id?}', ['uses' => 'CategoryController@destroy']);
        Route::post('category/deleteall/', ['uses' => 'UserController@deleteall']);

        //Location  Module
        Route::get('/apartments', ['uses' => 'LocationController@index'])->name('locations');
        Route::any('/apartment/addnew', ['uses' => 'LocationController@create'])->name('createLocation');
        Route::any('/area/addnew', ['uses' => 'LocationController@create'])->name('createArea');
        Route::get('/apartment/{id?}', ['uses' => 'LocationController@show'])->name('viewLocation');
        Route::get('/area/{id?}', ['uses' => 'LocationController@show'])->name('viewArea');
        Route::any('/apartment/edit/{id?}', ['uses' => 'LocationController@show'])->name('editLocation');
        Route::any('/area/edit/{id?}', ['uses' => 'LocationController@show'])->name('editArea');
        Route::any('apartment/destroy/{id?}', ['uses' => 'LocationController@destroy']);
        Route::any('area/destroy/{id?}', ['uses' => 'LocationController@destroy']);
        Route::any('apartment/destroy/{id?}', ['uses' => 'LocationController@destroy']);
        Route::get('/areas', ['uses' => 'LocationController@index'])->name('areas');
        Route::post('apartments/deleteall/', ['uses' => 'UserController@deleteall']);
        Route::post('areas/deleteall/', ['uses' => 'UserController@deleteall']);

        //Product Module
        Route::get('/products', ['uses' => 'ProductController@index'])->name('products');
        Route::any('/product/addnew', ['uses' => 'ProductController@create'])->name('addnewProduct');
        Route::get('/product/{id?}', ['uses' => 'ProductController@show'])->name('viewProduct');
        Route::any('/product/edit/{id?}', ['uses' => 'ProductController@show'])->name('editProduct');
        Route::any('product/destroy/{id?}', ['uses' => 'ProductController@destroy']);
        Route::post('products/deleteall/', ['uses' => 'UserController@deleteall']);

        //Product Brand Module
        Route::get('/brands', ['uses' => 'BrandController@index'])->name('brands');
        Route::any('/brand/addnew', ['uses' => 'BrandController@create'])->name('addnewBrand');
        Route::get('/brand/{id?}', ['uses' => 'BrandController@show'])->name('viewBrand');
        Route::any('/brand/edit/{id?}', ['uses' => 'BrandController@show'])->name('editBrand');
        Route::any('brand/destroy/{id?}', ['uses' => 'BrandController@destroy']);
        Route::post('brands/deleteall/', ['uses' => 'UserController@deleteall']);
        //Product Unit Module
        Route::get('/units', ['uses' => 'UnitController@index'])->name('units');
        Route::any('/unit/addnew', ['uses' => 'UnitController@create'])->name('addnewUnit');
        Route::get('/unit/{id?}', ['uses' => 'UnitController@show'])->name('viewUnit');
        Route::any('/unit/edit/{id?}', ['uses' => 'UnitController@show'])->name('editUnit');
        Route::any('unit/destroy/{id?}', ['uses' => 'UnitController@destroy']);
        Route::post('units/deleteall/', ['uses' => 'UserController@deleteall']);

        //Product Product Variation Module
        Route::get('/product-variations', ['uses' => 'ProductVariationController@index'])->name('variations');
        Route::any('/product-variations/addnew', ['uses' => 'ProductVariationController@create'])->name('addnewVariations');
        Route::get('/product-variations/{id?}', ['uses' => 'ProductVariationController@show'])->name('viewVariations');
        Route::any('/product-variations/edit/{id?}', ['uses' => 'ProductVariationController@show'])->name('editVariations');
        Route::any('product-variations/destroy/{id?}', ['uses' => 'ProductVariationController@destroy']);
        Route::post('product-variations/deleteall/', ['uses' => 'ProductVariationController@deleteall']);

        //Coupons Module
        Route::get('/coupons', ['uses' => 'CouponController@index'])->name('coupons');
        Route::any('/coupons/addnew', ['uses' => 'CouponController@create'])->name('addCoupon');
        Route::get('/coupons/{id?}', ['uses' => 'CouponController@show'])->name('viewCoupon');
        Route::any('/coupons/edit/{id?}', ['uses' => 'CouponController@show'])->name('editCoupon');
        Route::any('coupons/destroy/{id?}', ['uses' => 'CouponController@destroy']);
        Route::post('coupons/deleteall/', ['uses' => 'CouponController@deleteall']);

        //Setting Module
        Route::any('/setting', ['uses' => 'SettingController@show'])->name('setting');

        //Order  Module
        Route::get('/orders', ['uses' => 'OrderController@index'])->name('orders');
        Route::get('/order/{id?}', ['uses' => 'OrderController@show'])->name('viewOrder');
        Route::get('/order-by-date/{date?}', ['uses' => 'OrderController@getOrderByDate'])->name('order-by-date');
        Route::get('/print/{id?}', ['uses' => 'OrderController@showPdf']);
        Route::get('/order/edit/{id?}', ['uses' => 'OrderController@show'])->name('editOrder');
        Route::any('/order/assign/{id?}', ['uses' => 'OrderController@assign'])->name('assignOrder');
        Route::any('/order/status/{id?}', ['uses' => 'OrderController@status'])->name('statusOrder');
        Route::post('/order/cancel', ['uses' => 'OrderController@update'])->name('cancelOrder');
        Route::any('/order/send-invoice/{id?}', ['uses' => 'OrderController@sendinvoice'])->name('sendInvoice');

        //Users Module
        Route::get('/user/clear-notification', ['uses' => 'UserController@clear'])->name('clearNotifications');
        Route::get('/user/get-pending', ['uses' => 'UserController@getPending'])->name('getPending');
        Route::get('/getPendingUser', ['uses' => 'UserController@getPendingUser'])->name('getPendingUser');
        Route::get('/users', ['uses' => 'UserController@index'])->name('users');
        Route::get('/user/{id?}', ['uses' => 'UserController@show'])->name('viewUser');
        Route::get('/user/edit/{id?}', ['uses' => 'UserController@show'])->name('editUser');
        Route::post('/user/update/{id?}', ['uses' => 'UserController@updateStatus'])->name('updateUser');
        Route::post('/user/block', ['uses' => 'UserController@update'])->name('blockUser');
        Route::get('/users/updateStatus', ['uses' => 'UserController@updateUser']);

        //Notification Module
        Route::get('/notifications', ['uses' => 'NotificationController@index'])->name('notifications');
        Route::get('/notification/add', ['uses' => 'NotificationController@create'])->name('createNotification');
        Route::post('/notification/single', ['uses' => 'NotificationController@create'])->name('singleNotification');
        Route::get('/notification/store', ['uses' => 'NotificationController@store'])->name('storeNotification');

        //Drivers Module
        Route::get('/drivers', ['uses' => 'UserController@index'])->name('drivers');
        Route::any('/driver/addnew', ['uses' => 'UserController@createDriver'])->name('addnewDriver');
        Route::get('/driver/{id?}', ['uses' => 'UserController@show'])->name('viewDriver');
        Route::get('/driver/edit/{id?}', ['uses' => 'UserController@show'])->name('editDriver');
        Route::post('/driver/update/{id?}', ['uses' => 'UserController@updateStatus'])->name('updateDriver');
        Route::post('/driver/block', ['uses' => 'UserController@update'])->name('blockDriver');
        Route::post('/driver/addDoc/{id?}', ['uses' => 'UserController@addDoc'])->name('addDoc');
        Route::post('/otherDocs/delete/{id?}', ['uses' => 'UserController@deleteDoc'])->name('deleteDoc');
        //Route::any('driver/change-password', ['uses' => 'UserController@changeDriverPassword'])->name('changeDriverPassword');
        Route::any('driver/update-password/{id?}', ['uses' => 'UserController@updateDriverPassword'])->name('resetDriverPassword');

        //Store state and city session throughout the admin panel
        Route::post('/getCity', ['uses' => 'StateCityController@fetch'])->name('getCity');
        Route::post('/setCitySession', ['uses' => 'StateCityController@setSession'])->name('setCitySession');

        Route::any('driver/update-password/{id?}', ['uses' => 'UserController@updateDriverPassword'])->name('resetDriverPassword');

        //CMS module
        Route::get('/cmsPages', ['uses' => 'CMSController@index'])->name('cmsPages');
        Route::get('/cmsPage/{slug?}', ['uses' => 'CMSController@show'])->name('viewCms');
        Route::get('/cmsPage/edit/{slug?}', ['uses' => 'CMSController@show'])->name('editCms');
        Route::post('/cmsPage/update/{slug?}', ['uses' => 'CMSController@update'])->name('updateCms');

        //FAQs module
        Route::post('/addFAQs', ['uses' => 'CMSController@addFAQs'])->name('addFAQs');
        Route::post('/updateFAQs', ['uses' => 'CMSController@updateFAQ'])->name('updateFAQs');
        Route::post('/deleteFAQ/{id?}', ['uses' => 'CMSController@destroy'])->name('deleteFAQ');

        //Transactions module and paytm integration
        Route::post('/updateFAQs', ['uses' => 'CMSController@updateFAQ'])->name('updateFAQs');
        Route::post('/deleteFAQ/{id?}', ['uses' => 'CMSController@destroy'])->name('deleteFAQ');

        //Slider Module
        Route::get('/sliders', ['uses' => 'SliderController@index'])->name('sliders');
        Route::any('/slider/addnew', ['uses' => 'SliderController@create'])->name('addnewSlider');
        Route::any('/slider/edit/{id?}', ['uses' => 'SliderController@show'])->name('editSlider');
        Route::any('slider/destroy/{id?}', ['uses' => 'SliderController@destroy'])->name('deleteSlider');
        Route::post('sliders/deleteall/', ['uses' => 'UserController@deleteall']);
    });
});
