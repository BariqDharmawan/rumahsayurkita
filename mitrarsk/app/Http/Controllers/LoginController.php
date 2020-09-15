<?php
namespace App\Http\Controllers;

use App\Model\Order;
use App\Model\Product;
use App\Model\Category;
use App\Model\User;
use App\Model\OrderDelivery;
use Auth;
use Config;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Mail;

class LoginController extends Controller
{
    public function index(Request $request)
    {
        if (Auth::check()) {
            if (Auth::user()->user_role[0]->role == 'admin') {
                $orders = Order::get();
                $completedOrder = Order::where('status', 'CM')->get();
                $pendingOrder = Order::where('status', 'AC')->get();
                $Cancelledorder = Order::where('status', 'CL')->get();
                $currentdateorder =OrderDelivery::select('cart.product_id','cart.quantity','order_delivery.order_date','products.name','products.quantity as stock_quantity','users.name as user_name','orders.order_code','cart.order_id','cart.user_id','product_variations.weight as variation_name','product_units.name as unit_name')
                ->join('cart','order_delivery.cart_id','=','cart.id')
                ->join('product_variations','product_variations.id','=','cart.product_variation_id')
                ->join('orders','orders.id','=','cart.order_id')
                ->join('products','cart.product_id','=','products.id')
                ->join('product_units','product_variations.unit_id','=','product_units.id')
                ->join('users','users.id','cart.user_id')
                ->where(['order_delivery.order_date'=>DB::raw('CURDATE()'),'order_delivery.status'=>'AC','cart.status'=>'CM'])->get();
                    $date = strtotime("+1 day");
                $nextdate_order =OrderDelivery::select('cart.product_id','cart.quantity','order_delivery.order_date','products.name','products.quantity as stock_quantity','users.name as user_name','orders.order_code','cart.order_id','cart.user_id','product_variations.weight as variation_name','product_units.name as unit_name')
                ->join('cart','order_delivery.cart_id','=','cart.id')
                ->join('product_variations','product_variations.id','=','cart.product_variation_id')
                ->join('orders','orders.id','=','cart.order_id')
                ->join('products','cart.product_id','=','products.id')
                ->join('product_units','product_variations.unit_id','=','product_units.id')
                ->join('users','users.id','cart.user_id')
                ->where(['order_delivery.order_date'=>date('Y-m-d',$date),'order_delivery.status'=>'AC','cart.status'=>'CM'])
                ->get();
                $currentdatestock =OrderDelivery::select('cart.product_id',DB::raw('SUM(cart.quantity) as total'),'order_delivery.order_date','products.name','products.quantity as stock_quantity','orders.order_code','cart.order_id','cart.user_id')
                ->join('cart','order_delivery.cart_id','=','cart.id')
                ->join('orders','orders.id','=','cart.order_id')
                ->join('products','cart.product_id','=','products.id')
                ->where(['order_delivery.order_date'=>DB::raw('CURDATE()'),'order_delivery.status'=>'AC','cart.status'=>'CM'])->groupBy('products.id')->get();
                $nextdatestock =OrderDelivery::select('cart.product_id',DB::raw('SUM(cart.quantity) as total'),'order_delivery.order_date','products.name','products.quantity as stock_quantity','orders.order_code','cart.order_id','cart.user_id')
                ->join('cart','order_delivery.cart_id','=','cart.id')
                ->join('orders','orders.id','=','cart.order_id')
                ->join('products','cart.product_id','=','products.id')
                ->where(['order_delivery.order_date'=>date('Y-m-d',$date),'order_delivery.status'=>'AC','cart.status'=>'CM'])->groupBy('products.id')->get();
                $user = new User();
                $Product = new Product();
                $users = $user->fetchUsers('user');
                $products = $Product->get_all_products();
                $products = $products->count();
                $drivers = $user->fetchUsers('driver');
                $orders = $orders->count();
                $category_count = Category::count();
                $date = date('Y-m-d');
                $ytd = date('Y');
                $revenue = DB::table('orders')->select('cost')->whereDate('created_at',$date)->where('status','CM')->sum('cost');
                $revenue_ytd = DB::table('orders')->select('cost')->whereYear('created_at',$ytd)->where('status','CM')->sum('cost');
                return view('dashboard', compact('orders','revenue','revenue_ytd', 'users', 'drivers', 'products', 'completedOrder', 'pendingOrder','currentdateorder','nextdate_order','Cancelledorder','currentdatestock','nextdatestock','category_count'));
            } else {
                $request->session()->flash('error', "You don't have permission to access this panel");
                return view('index');
            }
        }
        return view('index');
    }

    public function export_today_order(){
        $currentdatestock =OrderDelivery::select('cart.product_id',DB::raw('SUM(cart.quantity) as total'),'order_delivery.order_date','products.name','products.quantity as stock_quantity','orders.order_code','cart.order_id','cart.user_id')
        ->join('cart','order_delivery.cart_id','=','cart.id')
        ->join('orders','orders.id','=','cart.order_id')
        ->join('products','cart.product_id','=','products.id')
        ->where(['order_delivery.order_date'=>DB::raw('CURDATE()'),'order_delivery.status'=>'AC','cart.status'=>'CM'])->groupBy('products.id')->get();
        header("Content-type: application/xls");
        header("Content-Disposition: attachment; filename=export.xls");
        return view('export-today',compact('currentdatestock'));
    }

    public function login(Request $request)
    {
        $credentials = ['email' => $request->post('val-email'), 'password' => $request->post('val-pass')];
        $udetail = User::with('user_role')->where('email', $request->post('val-email'))->first();
        if (isset($udetail->user_role) && count($udetail->user_role) > 0) {
            $remember = ($request->post('val-remember') == "on") ? true : false;
            if ($udetail->user_role[0]->role == 'admin') {
                if (Auth::attempt($credentials, $remember)) {
                    Session::put('globalCity', 'all');
                    Session::put('globalState', 'all');
                    Session::put('lastlogin', time());
                    Session::put('currency', config('constants.currency'));
                    $request->session()->flash('success', 'You are logged In.');
                    return redirect()->route('index');
                } else {
                    $request->session()->flash('error', 'Fill correct credentials');
                    return redirect()->route('index');
                }
            } else {
                $request->session()->flash('error', "You don't have permission to access this panel");
                return redirect()->route('index');
            }
        } else {
            $request->session()->flash('error', 'Email ID does not exists.');
            return redirect()->route('index');
        }
    }

    public function sendPasswordMail(Request $request)
    {
        if ($request->isMethod('post')) {
            $user = User::where('email', $request->post('val-email'))->first();
            if ($user) {
                $user->forgot_key = base64_encode($user->email);
                $user->save();
                $sender_id = Config::get('constants.MAIL_SENDER_ID');
                $data = array('resetpassword' => route('resetGet') . '?id=' . base64_encode($user->email));
                Mail::send('emails.forgot_password', $data, function ($message) use ($user, $sender_id) {
                    $message->to($user->email, $user->name)->subject('Forgot Password');
                    $message->from($sender_id, 'Grocery Store');
                });
                $request->session()->flash('success', 'Password Reset Link sent on your mail id.');
                return redirect()->route('index');
            } else {
                $request->session()->flash('error', 'Email ID does not exists.');
                return view('forgot');
            }
        }
        return view('forgot');
    }

    public function resetPassword(Request $request)
    {
        if ($request->isMethod('post')) {
            $user = User::where('email', $request->post('val-email'))->first();
            if ($user) {
                if ($request->post('val-password') == $request->post('val-confirm-password')) {
                    $user->password = bcrypt($request->post('val-password'));
                    $user->forgot_key = "";
                    if ($user->save()) {
                        $request->session()->flash('success', 'Password changed successfully.');
                        return redirect()->route('index');
                    } else {
                        $request->session()->flash('error', 'Password not changed! Try again later.');
                        return view('reset');
                    }
                } else {
                    $request->session()->flash('error', 'Passwords do not match.');
                    return view('reset');
                }
            } else {
                $request->session()->flash('error', 'Email ID does not exists.');
                return view('reset');
            }
        }
        $id = $request->get('id');
        if (isset($id) && $id != "") {
            $user = User::where('email', base64_decode($request->get('id')))->first();

            if ($user) {
                if ($user->forgot_key != "" && $user->forgot_key == base64_encode($user->email)) {
                    $email = base64_decode($request->get('id'));
                    return view('reset', compact('email'));
                } else {
                    $request->session()->flash('error', 'Reset Link expired.');
                    return view('forgot');
                }

            } else {
                $request->session()->flash('error', 'Email ID does not exists.');
                return view('forgot');
            }
        } else {
            $request->session()->flash('error', 'Email ID does not exists.');
            return view('forgot');
        }
    }
	
	public function resetPasswordApp(Request $request) {
		if ($request->isMethod('post')) {
			$user = User::where('email', $request->post('email'))->first();

			if ($user) {

				if ($request->post('pass') == $request->post('confirm-pass')) {
					$user->password = bcrypt($request->post('pass'));
					$user->forgot_key = "";
					if ($user->save()) {
						$request->session()->flash('success', 'Password changed successfully.');
						return redirect()->route('appIndex');
					} else {
						$request->session()->flash('error', 'Password not changed! Try again later.');
						return redirect()->back();
					}
				} else {
					$request->session()->flash('error', 'Passwords do not match.');
					return redirect()->back();
				}
			} else {
				$request->session()->flash('error', 'Email ID does not exists.');
				return redirect()->back();
			}
		}
		$id = $request->get('id');
		if (isset($id) && $id != "") {
			$user = User::where('email', base64_decode($request->get('id')))->first();

			if ($user) {
				if ($user->forgot_key != "" && $user->forgot_key == base64_encode($user->email)) {
					$email = base64_decode($request->get('id'));
					$url = route('resetPostApp');
					return view('reset', compact('email', 'url'));
				} else {
					$request->session()->flash('error', 'Reset Link expired.');
					return view('forgot');
				}
			} else {
				$request->session()->flash('error', 'Email ID does not exists.');
				return view('forgot');
			}
		} else {
			$request->session()->flash('error', 'Email ID does not exists.');
			return view('forgot');
		}
	}

	public function changePassword(Request $request) {
		if ($request->isMethod('post')) {
			$user = Auth::user();

			if ($user) {

				if ($request->post('pass') == $request->post('confirm-pass')) {
					$user->password = bcrypt($request->post('pass'));
					$user->forgot_key = "";
					if ($user->save()) {
						Auth::logout();
						$request->session()->flash('success', 'Password changed successfully. Please login again.');
						return redirect('/admin');
					} else {
						$request->session()->flash('error', 'Password not changed! Try again later.');
						return view('changepassword');
					}
				} else {
					$request->session()->flash('error', 'Passwords do not match.');
					return view('changepassword');
				}
			} else {
				$request->session()->flash('error', 'Access Denied');
				return view('changepassword');
			}
		}

		if (Auth::check()) {
			$user = Auth::user();
			if ($user) {
				return view('changepassword');
			} else {
				$request->session()->flash('error', 'Access Denied');
				return redirect('/admin');
			}
		} else {
			$request->session()->flash('error', 'Access Denied');
			return redirect('/admin');
		}
	}
	public function afterAppReset(Request $request) {
		return view('app_index');
	}
}
