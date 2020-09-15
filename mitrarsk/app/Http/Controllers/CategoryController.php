<?php

namespace App\Http\Controllers;

use App\Model\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public $categories;

    public function __construct()
    {
        $this->categories = new Category;
    }
    public function index()
    {
        $categories = $this->categories->get_all_category();
        return view('category.index', compact('categories'));
    }
    public function show(Request $request, $id = null)
    {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $Category = Category::where('id', $id)->first();
            if (isset($Category->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'name' => 'required',
                    ]);
                    if ($validate->fails()) {
                        return redirect('admin/category/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $Category->name = $request->get('name');
                    $logofile = $request->file('image');
                    if ($request->hasFile('image')) {
                        if (file_exists(public_path('uploads/categories/') . $Category->image)) {
                            unlink(public_path('uploads/categories/') . $Category->image);
                        }
                    }
                    if (isset($logofile)) {
                        $datetime = date('YmdHis');
                        $image = $request->image->getClientOriginalName();
                        $imageName = $datetime . '_' . $image;
                        $logofile->move(public_path('uploads/categories/'), $imageName);
                        $Category->image = $imageName;
                    }
                    $Category->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';

                    $Category->save();
                    $request->session()->flash('success', 'Category updated Successfully');
                    return redirect('admin/category');
                }

                return view('category.view', compact('Category', 'type'));
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('category');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('category');
        }
    }
    public function create(Request $request)
    {
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'name' => 'required',
                'image' => 'required',
            ]);
            if ($validate->fails()) {
                return redirect()->route('createCategory')->withInput($request->all())->withErrors($validate);
            }
            $logofile = $request->file('image');
            if (isset($logofile)) {
                $datetime = date('YmdHis');
                $image = $request->image->getClientOriginalName();
                $imageName = $datetime . '_' . $image;
                $logofile->move(public_path('uploads/categories/'), $imageName);
                $data['image'] = $imageName;
                $data['name'] = $request->name;
            }
            Category::create($data);
            $request->session()->flash('success', 'Category added successfully');
            return redirect()->route('createCategory');
        }
        return view('category.addnew');
    }
    public function destroy(Request $request)
    {
        $id = $request->id;
        $delete = Category::find($id);
        if (isset($delete->id)) {
            if (file_exists(public_path('uploads/categories/') . $delete->image)) {
                unlink(public_path('uploads/categories/') . $delete->image);
            }
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => 'Category remove Successfully']);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }

}
