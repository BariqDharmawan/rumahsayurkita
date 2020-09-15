<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model {
	protected $table = 'cart';
	public function product_items() {
		return $this->hasOne(Product::class,'id');
	}
}
