<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ProductVariation extends Model
{
    protected $table = 'product_variations';
    protected $fillable = ['product_id', 'unit_id', 'weight'];

    public function product_units()
    {
        return $this->belongsTo(ProductUnit::class, 'unit_id');
    }
    public function get_all_variations()
    {
        return ProductVariation::where('status', '!=', 'DL')->orderBy("id","desc")->get();
    }
    // public function get_product()
    // {
    //   return $this->belongsTo(ProductVariation::class,'product_id');
    // }
}
