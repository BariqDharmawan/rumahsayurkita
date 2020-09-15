<?php

namespace App\Http\Controllers;

use App\Model\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller {
	public $sliders;

	public function __construct() {
		$this->sliders = new Slider;
	}
	public function index() {
		$sliders = $this->sliders->get_all_sliders();
		return view('sliders.index', compact('sliders'));
	}
	public function show(Request $request, $id = null) {
		if (isset($id) && $id != null) {
			if (strpos($request->path(), 'edit') !== false) {
				$type = 'edit';
			} else {
				$type = 'view';
			}
			$url = route('editSlider') . '/' . $id;
			$slider = Slider::where('id', $id)->first();
			// dd(isset($slider->id));
			if (isset($slider->id)) {
				if ($request->isMethod('post')) {
					$rule = '';
					if ($request->image_exists != 1) {
						$rule = 'required|';
					}

					$validate = Validator($request->all(), [
						'image' => $rule . 'mimes:jpeg,png,jpg,gif,svg|max:300',

					]);
					$validate->setAttributeNames(['image' => 'Slide image']);
					if ($validate->fails()) {
						return redirect('/admin/slider/edit/' . $id)->withInput($request->all())->withErrors($validate);
					}

					$logofile = $request->file('image');
					if ($slider->image) {
						if ($request->hasFile('image')) {
							if (file_exists(public_path('uploads/sliders/') . $slider->image)) {
								unlink(public_path('uploads/sliders/') . $slider->image);
							}
						}
					}
					if (isset($logofile)) {
						$image = $request->image->getClientOriginalName();
						$imageName = time() . '_' . $image;
						$logofile->move(public_path('uploads/sliders/'), $imageName);
						$slider->image = $imageName;
					}

					$slider->save();
					$request->session()->flash('success', 'Slide updated successfully');
					return redirect()->route('sliders');
				}

				return view('sliders.create', compact('slider', 'type', 'url'));
			} else {
				$request->session()->flash('error', 'Invalid Data');
				return redirect()->route('sliders');
			}
		} else {
			$request->session()->flash('error', 'Invalid Data');
			return redirect()->route('sliders');
		}
	}
	public function create(Request $request) {

		$type = 'add';
		$url = route('addnewSlider');
		$slider = new Slider;
		if ($request->isMethod('post')) {
			$validate = Validator($request->all(), [
				'image' => 'required|mimes:jpeg,png,jpg,gif,svg|max:300',

			]);
			$validate->setAttributeNames(['image' => 'Slide image']);
			if ($validate->fails()) {
				return redirect()->route('addnewSlider')->withInput($request->all())->withErrors($validate);
			}
			$slider = new Slider();
			$logofile = $request->file('image');

			$image = $request->image->getClientOriginalName();
			$imageName = time() . '_' . $image;
			$logofile->move(public_path('uploads/sliders/'), $imageName);
			$slider->image = $imageName;

			$slider->save();
			$request->session()->flash('success', 'Slide added successfully');
			return redirect()->route('sliders');
		}
		return view('sliders.create', compact('type', 'url'));

	}
	public function destroy(Request $request) {
		$id = $request->get('val-id');
		$delete = Slider::find($id);
		if (isset($delete->id)) {
			/*if (file_exists(public_path('uploads/sliders/') . $delete->image)) {
				unlink(public_path('uploads/sliders/') . $delete->image);
			}*/
			$delete->status = 'DL';
			$delete->save();
			$request->session()->flash('success', 'Slider remove Successfully');
			return redirect()->back();
		} else {
			$request->session()->flash('error', 'Some thing went wrong');
			return redirect()->back();
		}

	}

}
