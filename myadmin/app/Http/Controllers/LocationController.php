<?php

namespace App\Http\Controllers;

use App\Model\City;
use App\Model\Location;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    public $locations;

    public function __construct()
    {
        $this->locations = new Location;
    }
    public function index(Request $request)
    {
        if (strpos($request->path(), 'areas') !== false) {
            $type = 'area';
            $view_index = 'area';
        } else {
            $type = 'apartment';
            $view_index = 'location';

        }

        $locations = Location::where('type', $type)->where('status', '!=', 'DL')->get();
        return view($view_index . '.index', compact('locations'));
    }
    public function show(Request $request, $id = null)
    {
        if (strpos($request->path(), 'area') !== false) {

            $view_index = 'area';
            $complete_index = 'areas';
            $Cities = City::select("id", "name")->where(["state_id" => 33, 'status' => 'AC'])->get();
            $key = 'Cities';
            $val = $Cities;
            $field = 'city_id';
            $msg = 'Area Updated Successfully';
            $valid_masg = 'City Name';

        } else {

            $view_index = 'location';
            $complete_index = 'apartments';
            $areas = Location::select("id", "name")->where(["prnt_id" => null, 'status' => 'AC'])->get();
            $key = 'areas';
            $val = $areas;
            $field = 'prnt_id';
            $valid_masg = 'Area Name';
            $msg = 'Location Updated Successfully';
        }

        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $Location = Location::where('id', $id)->first();
            if (isset($Location->id)) {
                if ($request->isMethod('post')) {
                    $validate = Validator($request->all(), [
                        'name' => 'required',
                        $field => 'required',
                    ]);
                    $validate->setAttributeNames([$field => $valid_masg]);

                    if ($validate->fails()) {
                        return redirect('admin/' . $view_index . '/edit/' . $id)->withInput($request->all())->withErrors($validate);
                    }
                    $Location->name = $request->name;
                    //$Location->type = $type;
                    $Location->status = ($request->post('val-status') == 'on') ? 'AC' : 'IN';

                    $Location->$field = $request->$field;
                    $Location->save();
                    $request->session()->flash('success', $msg);
                    return redirect('admin/' . $complete_index);
                }

                return view($view_index . '.view')->with('Location', $Location)->with('type', $type)->with($key, $val);
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

        if (strpos($request->path(), 'area') !== false) {
            $type = 'area';
            $view_index = 'area';
            $Cities = City::select("id", "name")->where(["state_id" => 33, 'status' => 'AC'])->get();
            $data = compact('Cities');
            $field = 'city_id';
            $msg = 'Area Added Successfully';
            $view_index1 = 'createArea';
            $valid_masg = 'City Name';

        } else {
            $type = 'apartment';
            $view_index = 'location';
            $areas = Location::select("id", "name")->where(["prnt_id" => null, 'status' => 'AC'])->get();
            $field = 'prnt_id';
            $data = compact('areas');
            $msg = 'Location Added Successfully';
            $view_index1 = 'createLocation';
            $valid_masg = 'Area Name';


        }
        //dd($request->all());
        if ($request->isMethod('post')) {
            $validate = Validator($request->all(), [
                'name' => 'required',
                $field => 'required',
            ]);
            $validate->setAttributeNames([$field => $valid_masg]);

            if ($validate->fails()) {
                return redirect()->route($view_index1)->withInput($request->all())->withErrors($validate);
            }

            $location = new Location;
            $location->name = $request->name;
            $location->type = $type;
            $location->$field = $request->$field;
            $location->save();
            $request->session()->flash('success', $msg);
            return redirect()->route($view_index1);
        }
        return view($view_index . '.addnew', $data);

    }
    public function destroy(Request $request)
    {
        if (strpos($request->path(), 'area') !== false) {
            $msg = 'Area remove Successfully';
        } else {
            $msg = 'Location remove Successfully';
        }
        $id = $request->id;
        $delete = Location::find($id);
        if (isset($delete->id)) {
            $delete->status = 'DL';
            $delete->save();
            return response()->json(['status' => 'success', 'message' => $msg]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'Some thing went wrong']);
        }

    }
}
