<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model {
	protected $table = 'sliders';

	public function get_all_sliders() {
		return Slider::where('status', '!=', 'DL')->orderBy("id","desc")->get();
	}
}
