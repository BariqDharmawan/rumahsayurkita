<?php

namespace App\Http\Controllers;

use App\Library\SendMail;
use App\Model\BusRuleRef;
use App\Model\Cart;
use App\Model\Notification;
use App\Model\Order;
use App\Model\OrderDelivery;
use App\Model\User;
use DB;
use FCM;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use LaravelFCM\Message\OptionsBuilder;
use LaravelFCM\Message\PayloadDataBuilder;
use LaravelFCM\Message\PayloadNotificationBuilder;

class OrderController extends Controller {
    public $orders;
    public $user;
    public $order_status;

    public function __construct() {
        $this->orders = new Order;
        $this->user = new User;
        $this->order_status = ["CM" => "Completed", "CL" => "Canceled", "FL" => "Failed"];
    }
    public function index() {
        $orders = Order::with(['get_orders', 'useraddress'])->orderBy('id', 'desc')->get();

        return view('order.index', compact('orders'));
        // return $orders;
        // header('content-type:application/json');
        // echo json_encode($orders,JSON_PRETTY_PRINT);
    }

    public function show(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $status = $this->order_status;
            $order = $this->orders->get_user_order($id);
            // dd($order);
            $cartdata = $this->orders->get_cart($id);
            $default_address = $this->orders->get_user_address($order->user_id);
            $delivery_address = $this->orders->get_user_delivery_address($order->user_id);
            $drivers = $this->user->fetchUsers('driver');
            $order_delivery = Cart::select("order_delivery.status", "order_delivery.id")->join("order_delivery", "cart.id", "order_delivery.cart_id")->where("cart.order_id", $id)->first();
            // dd($cartdata);
            $id =$id;
            //$drivers[''] = 'Select Driver';
            return view('order.view', compact('type', 'order', 'status', 'drivers', 'default_address', 'delivery_address', 'cartdata', 'order_delivery','id'));
            // return $delivery_address;
        }
    }


    public function showPdf(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            if (strpos($request->path(), 'edit') !== false) {
                $type = 'edit';
            } else {
                $type = 'view';
            }
            $status = $this->order_status;
            $order = $this->orders->get_user_order($id);
            // dd($order);
            $delivery_charge = DB::table('bus_rule_ref')
                                ->select('rule_value')
                                ->where('rule_name','delivery_charges')->pluck('rule_value')[0];
            
            $cartdata = $this->orders->get_cart($id);
            $default_address = $this->orders->get_user_address($order->user_id);
            $delivery_address = $this->orders->get_user_delivery_address($order->user_id);
            
            $drivers = $this->user->fetchUsers('driver');
            $order_delivery = Cart::select("order_delivery.status", "order_delivery.id")->join("order_delivery", "cart.id", "order_delivery.cart_id")->where("cart.order_id", $id)->first();
            // dd($cartdata);
            $no=1;
            $total = null;
            foreach($cartdata as $item){
                $total = $total + $item->total_without_tax;
            }
            $total = $delivery_charge  + $total;
            // $drivers[''] = 'Select Driver';
            return view('order.print', compact('type','no','total', 'order', 'status', 'drivers', 'default_address', 'delivery_address', 'cartdata', 'order_delivery','id'));
        }
    }



    public function status(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            $order = Order::where('id', $id)->first();
            $cart = Cart::where('order_id', $order->id)->first();
            // dd($cart);
            if ($cart != null && $cart->order_id != null) {
                if (isset($order->id)) {
                    $validate = Validator($request->all(), [
                        'status' => 'required',

                    ]);
                    $attr = [
                        'status' => 'Delivery Status',
                    ];
                    $validate->setAttributeNames($attr);
                    if ($validate->fails()) {
                        return redirect()->route('viewUser', ['id' => $id])->withInput($request->all())->withErrors($validate);
                    } else {
                        try {
                            $cartIn = Cart::select('id')->where('order_id', $order->id)->get();
                            // $orderDelivery = OrderDelivery::whereIn("cart_id", $cartIn);
                            // $orderDelivery->status = $request->status;
                            // $orderDelivery->save();
                            $orderDelivery = DB::table('order_delivery')->whereIn('cart_id', $cartIn)->update(array('status' => $request->status));
                            Notification::where('order_id', $id)->update(['status' => 'IN']);
                            $notification = new Notification();
                            $notification->user_id = $request->user_id;
                            $notification->order_id = $id;
                            $notification->notification_type = "Order";
                            $notification->title = 'Order Status';
                            $notification->description = "Your order #" . $order->order_code . " status changed to " . $this->order_status[$request->status];
                            $notification->save();
                            $user = User::where("id", $request->user_id)->first();
                            $msgarray = array(
                                'title' => 'Order Status',
                                'msg' => $notification->description,
                                'type' => 'OrderAssign',
                            );
                            $fcmData = array(
                                'message' => $msgarray['msg'],
                                'body' => $msgarray['title'],
                            );
                            $this->sendFirebaseNotification($user, $msgarray, $fcmData);

                            $request->session()->flash('success', 'Order status changed Successfully');
                            // die();
                            return redirect()->route('orders');
                        } catch (Exception $e) {
                            $request->session()->flash('error', 'Something went wrong. Please try again later.');
                            return redirect()->route('orders');
                        }
                    }
                } else {
                    $request->session()->flash('error', 'Invalid Data');
                    return redirect()->route('orders');
                }
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('orders');
        }
    }

    public function assign(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            $order = Order::where('id', $id)->first();
            if (isset($order->id)) {
                $validate = Validator($request->all(), [
                    'driver_id' => 'required',

                ]);
                $attr = [
                    'driver_id' => 'Driver Name',
                ];
                $validate->setAttributeNames($attr);
                if ($validate->fails()) {
                    return redirect()->route('viewUser', ['id' => $id])->withInput($request->all())->withErrors($validate);
                } else {
                    try {
                        $order->driver_id = $request->driver_id;
                        $order->save();
                        Notification::where('order_id', $id)->update(['status' => 'IN']);
                        $notification = new Notification();
                        $notification->user_id = $request->driver_id;
                        $notification->order_id = $id;
                        $notification->notification_type = "Order";
                        $notification->title = 'Order Assign';
                        $notification->description = "You have assigned a new #" . $order->order_code . " order";
                        $notification->save();
                        $user = User::where("id", $request->driver_id)->first();
                        $msgarray = array(
                            'title' => 'Order Assigned',
                            'msg' => $notification->description,
                            'type' => 'OrderAssign',
                        );
                        $fcmData = array(
                            'message' => $msgarray['msg'],
                            'body' => $msgarray['title'],
                        );
                        $this->sendFirebaseNotification($user, $msgarray, $fcmData);

                        $request->session()->flash('success', 'Order assign to Driver Successfully');
                        // die();
                        return redirect()->route('orders');
                    } catch (Exception $e) {
                        $request->session()->flash('error', 'Something went wrong. Please try again later.');
                        return redirect()->route('orders');
                    }
                }
            } else {
                $request->session()->flash('error', 'Invalid Data');
                return redirect()->route('orders');
            }
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('orders');
        }
    }

    public function sendFirebaseNotification($user, $msgarray, $fcmData) {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $fcmApiKey = $this->getBusRuleRef("fcm_api_key");
        // echo "user";
        // echo "<pre>";
        // print_r($user->toArray());
        // echo "</pre>";
        // echo "\n";
        $fcmMsg = array(
            'title' => $msgarray['title'],
            'text' => $msgarray['msg'],
            'type' => $msgarray['type'],
            'vibrate' => 1,
            "date_time" => date("Y-m-d H:i:s"),
            'message' => $msgarray['msg'],
        );
        // echo "-----------fcmMsg";
        // print_r($fcmMsg);
        // echo "\n";
        if ($user->device_type == "ios") {
            $fcmFields = array(
                'to' => $user->device_token,
                'priority' => 'high',
                'notification' => $fcmMsg,
                'data' => $fcmMsg,
            );
        } else {
            $fcmFields = array(
                'to' => $user->device_token,
                'priority' => 'high',
                'data' => $fcmMsg,
            );
        }
        // echo "--------------fcmFields";
        // print_r($fcmFields);
        // echo "\n";

        $headers = array(
            'Authorization: key=' . $fcmApiKey,
            'Content-Type: application/json',
        );
        // print_r($user->device_token);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fcmFields));
        $result = curl_exec($ch);
        // print_r($result);
        if ($result === false) {
            // die('Curl failed: ' . curl_error($ch));
        }
        curl_close($ch);
        // echo "\n##################################################################################################";
        // echo "\n\n\n";
        return $result;
    }

    public function getBusRuleRef($rule_name) {
        if ($BusRuleRef = BusRuleRef::where("rule_name", $rule_name)->first()) {
            return $BusRuleRef->rule_value;
        }
    }
    public function testfirebase() {
        // Create a notifier...
        // $notifier = Notifier::make()
        // ->setOwnerName("") // Set the owner name.
        // ->setAppName("GroceryStore")     // Set the app name.
        // ->setToken($token);        // Set the api token.

        // // Create a notification...
        // $notification = Notification::make()
        // ->setName($name)   //Set the notification name.
        // ->setTitle($title) //Set the notification title.
        // ->setBody($body);  //Set the notification body.

        // // And send the notification...
        // $notifier->send($notification);

        // die();

        // SendMail::sendSMS(array('9754532714'), '3232 is your verification OTP for forgot password into the GroceryStore app. Do not share this OTP with anyone.');
        // $otp_number = rand(1111, 9999);
        // // Call send_sms to send sms otp
        // $this->send_sms('9754532714', $otp_number);

        // dd();
        $optionBuilder = new OptionsBuilder();
        $optionBuilder->setTimeToLive(60 * 20);

        $notificationBuilder = new PayloadNotificationBuilder('my title');
        $notificationBuilder->setBody('Hello world')
            ->setSound('default');

        $dataBuilder = new PayloadDataBuilder();
        $dataBuilder->addData(['a_data' => 'my_data']);

        $option = $optionBuilder->build();
        $notification = $notificationBuilder->build();
        $data = $dataBuilder->build();

        $token = "dRV2svexHPM:APA91bFB2e_yHBhBwYBaVzhGSTyr1xDnX_ekPYgYVZO5ZUsQe1yKgPKbXRCLt_r71PsKkaesduLXV9s6snjWl68z_nGUIbKHsLa6Z5NKzSFeITu8ydyuL9PotvKja21SYzJ3MK9XEJNC";

        $downstreamResponse = FCM::sendTo($token, $option, $notification, $data);

        echo "<pre>";
        print_r($downstreamResponse);

        $downstreamResponse->numberSuccess();
        $downstreamResponse->numberFailure();
        $downstreamResponse->numberModification();

        //return Array - you must remove all this tokens in your database
        // $downstreamResponse->tokensToDelete();

        //return Array (key : oldToken, value : new token - you must change the token in your database )
        // $downstreamResponse->tokensToModify();

        //return Array - you should try to resend the message to the tokens in the array
        // $downstreamResponse->tokensToRetry();
    }
    public function update(Request $request) {
        $order = Order::find($request->post('val-id'));
        $order->status = 'CL';
        if ($order->save()) {
            $reason = $request->post('val-reason');
            $notification = new Notification();
            $notification->user_id = $order->user_id;
            $notification->order_id = $order->id;
            $notification->notification_type = "OrderCancelled";
            $notification->title = 'Order Cancelled';
            $notification->description = "Your Order has been cancelled #" . $order->order_code . " order";
            $notification->save();
            $user = User::where("id", $order->user_id)->first();
            $msgarray = array(
                'title' => 'Order Cancelled',
                'msg' => $notification->description,
                'type' => 'OrderCancelled',
            );
            $fcmData = array(
                'message' => $msgarray['msg'],
                'body' => $msgarray['title'],
            );
            // $this->sendFirebaseNotification($user, $msgarray, $fcmData);
            $carts = Cart::select(DB::raw("GROUP_CONCAT(id) as cartids"))->where('order_id', $order->id)->first();
            OrderDelivery::whereIn('cart_id', explode(',', $carts->cartids))->update(['status' => 'CL']);
            Cart::where('order_id', $order->id)->update(['status' => 'CL']);
            // SendMail::sendOrdercancelMail("Order Cancelled #" . $order->order_code . "-Grocery Store", $user, null, "emails.order_cancel", $reason, $order->order_code);
            $request->session()->flash('success', $order->order_code . ' Cancelled successfully.');
            return redirect()->back();
        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->back();
        }
    }
    public function sendinvoice(Request $request, $id = null) {
        if (isset($id) && $id != null) {
            $order = Order::where('id', $id)->first();
            if (isset($order->id)) {
                try {
                    $order = $this->orders->get_user_order($id);
                    $cartdata = $this->orders->get_cart($id);

                    $user = User::where("id", $order->user_id)->first();
                    //return  view('emails.user_registration', compact('data','order','cartdata'));
                    SendMail::sendUserInvoiceMail("Order Invoice #" . $order->order_code . "- Grocery Store", $user, null, "emails.invoice", $order, $cartdata);
                    $request->session()->flash('success', 'Order Invoice Sent Successfully');
                    return redirect()->route('orders');
                } catch (Exception $e) {
                    $request->session()->flash('error', 'Something went wrong. Please try again later.');
                    return redirect()->route('orders');
                }
            }

        } else {
            $request->session()->flash('error', 'Invalid Data');
            return redirect()->route('orders');
        }
    }

    public function getOrderByDate(Request $req){
        $date = $req->date;
        $date =  date('Y-m-d',strtotime($date));
        $revenue = DB::table('orders')->select('cost')->whereDate('created_at',$date)->where('status','CM')->sum('cost');
        $orders = DB::table('orders')->select('orders.id as order_id','orders.order_code','orders.status as order_status','users.name',
                    'users.mobile_number','orders.created_at as created','orders.status','user_addresses.*')
                ->whereDate('orders.created_at',$date)
                ->join('users','users.id','=','orders.user_id')
                ->join('user_addresses','user_addresses.id','=','orders.address_id')->get();
        // $order = [];
        $date = date('d-m-Y',strtotime($date));
        $no =1;
        return view('order.filter',compact('orders','date','no','revenue'));
        // return $orders;
        // header('content-type:application/json');
        // echo json_encode($orders,JSON_PRETTY_PRINT);
    }
}
