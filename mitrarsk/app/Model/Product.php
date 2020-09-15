<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $table = 'products';
    protected $fillable = ['name', 'image', 'brand_id', 'description', 'price', 'quantity', 'cgst', 'igst', 'sgst'];
    // protected $visible = ['id', 'name', 'image', 'brand_id', 'description', 'price', 'quantity', 'cgst', 'igst', 'sgst'];

    public function get_product_variations()
    {
        return $this->hasMany(ProductVariation::class, "product_id");
    }

    public function product_brand()
    {
        return $this->belongsTo(ProductBrand::class,'brand_id');
    }
    public function get_all_products()
    {
        return Product::with(["getCategory","getBrand"])->where('status', '!=', 'DL')->orderBy("id","desc")->get();
    }
    public function get_products_name($id)
    {
        return Product::where(['id' => $id, 'status' => 'AC'])->pluck('name');
    }

    public function getCategory(){
        return $this->belongsTo("App\Model\Category","category_id");
    }

    public function getBrand(){
        return $this->belongsTo("App\Model\ProductBrand","brand_id");
    }
}
