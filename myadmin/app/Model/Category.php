<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';
    protected $fillable = ['name', 'image'];

    public function get_all_category()
    {
        return Category::where('status', '!=', 'DL')->orderBy("id","desc")->get();
    }

}
