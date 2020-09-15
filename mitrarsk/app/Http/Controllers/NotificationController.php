<?php

namespace App\Http\Controllers;
use App\Model\Notification;
use App\Model\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Library\SendMail;
use DB;

class NotificationController extends Controller {


	public function __construct() {
		$this->notification = new Notification;
	
	}

	public function index() {
		$query = Notification::where('status', '!=', 'DL')->orderBy("id","desc");
		
		$notifications = $query->get();
		return view('notifications.index', compact('notifications'));
	}

	public function create(Request $request) {
		$user_id = 0;
		(isset($request->user_id)) ? $user_id = implode(',', $request->user_id) : 0;
		return view('notifications.create', compact('user_id'));
	}

	public function store(Request $request) {
		$user_ids='';
		if($request->user_type=='user')
		{
			$user_ids=array(2);
		}
		elseif ($request->user_type=='driver') {
			$user_ids=array(3);
		}
		elseif ($request->user_type=='all') {
			$user_ids=array(2,3);
		}
		//$users = User::select(DB::raw("GROUP_CONCAT(users.device_token,'=>') as device_token"),DB::raw("GROUP_CONCAT(users.id) as user_ids"))->join('user_roles','user_roles.user_id','=','users.id')->where(['users.status'=>'AC'])->whereNotNull('users.device_token')->whereIn('user_roles.role_id',$user_ids)->first();
		//dd($users->device_token);
		$tokensList = array();
		$userIdList = array();
		$users = User::select('users.device_token','users.id')->join('user_roles','user_roles.user_id','=','users.id')->where(['users.status'=>'AC'])->where('users.device_token','!=',"")->whereNotNull('users.device_token')->whereIn('user_roles.role_id',$user_ids)->get();
		foreach($users as $item){
			array_push($tokensList,$item->device_token);
			array_push($userIdList,$item->id);
		}
		if(count($userIdList)>0)
		{
    		// print_r($tokensList);
    		// print_r($userIdList);
    		// die;
    		$userIdList = implode(",",$userIdList);
    		$notification = new Notification();
    		$notification->title = $request->title;
    		$notification->description = $request->description;
    		$notification->notification_type = "CustomNotification";
    		$notification->user_id = $userIdList;
    			if ($notification->save()) {
    			//Firebase::sendCustomNotifications($notification, $request);
    			SendMail::sendBulkNotifications(array_filter($tokensList),$notification);
    			$request->session()->flash('success', 'Notifications Sent');
    			return redirect("admin/notifications");
    		} else {
    			$request->session()->flash('error', 'Something goes wrong');
    			return redirect("admin/notifications");
    		}
		}else{
    			$request->session()->flash('error', 'No device tokens found to send notifications');
    			return redirect("admin/notifications");
		}
	}
}
