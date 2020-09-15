<?php
namespace App\Model;
use DB;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';

    public function cartitem_upcoming()
    {
        return $this->hasMany(Cart::class)->whereDate('to_date','>' ,DB::raw('CURDATE()'));
    }
    public function cartitem_past()
    {
        return $this->hasMany(Cart::class)->whereDate('to_date','<' ,DB::raw('CURDATE()'));
    }
    public function useraddress()
    {
        return $this->hasOne(UserAddress::class, 'user_id', 'user_id');
    }
    public function get_orders()
    {
        return $this->hasOne(User::class,'id','user_id');
    }
    // public function get_order($id)
    // {
    //     $order['orders'] = Order::where(['orders.id' => $id])->get();
    //     $order['caartdata'] = Cart::where(['order_id' => $id, 'status' => 'CM'])->get();
    //     $order['default'] = UserAddress::where(['user_id' => $order['orders'][0]->user_id, 'status' => 'AC', 'address_type' => 'Home'])->get();
    //     $order['delivery'] = UserAddress::where(['id' => $order['orders'][0]->address_id, 'status' => 'AC'])->get();
    //     return $order;
    // }
    public function get_user_order($id)
    {
        return Order::where(['orders.id' => $id])->first();
    }
    public function get_cart($id)
    {
        return Cart::select("cart.*","product_variations.unit_id","product_variations.weight")->join("product_variations","product_variations.id","cart.product_variation_id")->where(['cart.order_id' => $id])->where('cart.status','!=','DL')->get();
    }
    public function get_user_address($user_id)
    {
        return UserAddress::where(['user_id' => $user_id, 'status' => 'AC', 'default_address' => 1])->first();
    }
    public function get_user_delivery_address($address_id)
    {
        return UserAddress::where(['user_id' => $address_id, 'status' => 'AC'])->first();
    }
}
