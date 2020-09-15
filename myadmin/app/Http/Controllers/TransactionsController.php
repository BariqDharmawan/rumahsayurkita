<?php

namespace App\Http\Controllers;
use App\Library\Helper;
use App\Library\Paytm;
use App\Library\ResponseMessages;
use App\Model\Country;
use App\Model\Transaction;
use App\Model\User;
use App\Model\Wallet;
use Illuminate\Http\Request;

class TransactionsController extends Controller {
    public $paytmSettings;
    public $paytm;
    public $transaction;
    public $city;
    public $state;
    public $country;

    public function __construct() {
        // $this->paytm = new Paytm;
        // $this->paytmSettings = $this->paytm->getConfig();
        // $this->transaction = new Transaction;
        // $this->city = Session::get('globalCity');
        // $this->state = Session::get('globalState');
        // $this->country = Session::get('globalCountry');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {
        $transactions = $this->transaction->fetchTransactions($this->city, $this->state, $this->country, $request);
        // dd($transactions->toArray());
        // dd($transactions[0]->user->name);
        return view('transactions.index', compact('transactions'));
    }

    /**
     * generate checksum for paytm integration
     *
     * @return \Illuminate\Http\Response
     */

    public function generateCheckSum(Request $request) {

        $required = array("user_id", "amount", "device_type");
        $input = array_keys($request->all());
        $existance = implode(", ", array_diff($required, $input));
        if (!empty($existance)) {
            if (count(array_diff($required, $input)) == 1) {
                $response = array(
                    "status" => 101,
                    "message" => $existance . " key is missing",
                );
            } else {
                $response = array(
                    "status" => 101,
                    "message" => $existance . " keys are missing",
                );
            }
            echo json_encode($response);
            exit;
        }

        if ($user = User::select("status")->where("id", $request->user_id)->first()) {

            if ($user->status == "AC") {

            } else {
                $response = array(
                    "status" => 216,
                    "message" => ResponseMessages::getStatusCodeMessages(216),
                );
                echo json_encode($response);
                exit;
            }
        } else {
            $response = array(
                "status" => 321,
                "message" => ResponseMessages::getStatusCodeMessages(321),
            );
            echo json_encode($response);
            exit;
        }

        $transaction = new Transaction;
        // $transaction->transaction_code = Helper::generateNumber("transactions", "transaction_code");
        $transaction->user_id = $request->user_id;
        $transaction->amount = $request->amount;
        $transaction->device_type = $request->device_type;
        $transaction->save();

        $paramList = array();
        $findme = 'REFUND';
        $findmepipe = '|';

        $paramList["MID"] = $this->paytmSettings['paytm_staging_mid'];
        $paramList["ORDER_ID"] = 'ORDER' . $transaction->id;
        $paramList["CUST_ID"] = 'CUST' . $request->user_id;
        $paramList["MOBILE_NO"] = $user->mobile_number;
        $paramList["EMAIL"] = $user->email;
        $paramList["CHANNEL_ID"] = $this->paytmSettings['paytm_channel_id'];
        $paramList["TXN_AMOUNT"] = $request->amount;
        $paramList["WEBSITE"] = $this->paytmSettings['paytm_app_name'];
        $paramList["INDUSTRY_TYPE_ID"] = $this->paytmSettings['paytm_industry_type'];
        $paramList["CALLBACK_URL"] = $this->paytmSettings['paytm_callback_url'];

        //create checksum from library
        $checkSum = $this->paytm->getChecksumFromArray($paramList, $this->paytmSettings['paytm_merchant_key']);

        $paramList["CHECKSUMHASH"] = $checkSum;
        $paramList["user_id"] = $request->user_id;
        $paramList["amount"] = $request->amount;
        //save checksum for this transaction in database
        $tr = Transaction::find($transaction->id);
        $tr->checksum = $checkSum;
        $tr->transaction_code = $paramList["ORDER_ID"];
        $tr->save();
        $transactionURL = $this->paytmSettings['paytm_transaction_url'];
        $paytmChecksum = $checkSum;

        // echo json_encode($paramList);
        return view("transactions.generate_checksum", compact('paramList', 'transactionURL', 'paytmChecksum'));
    }

    /**
     * paytm callback function to save transaction details from paytm
     *
     * @return \Illuminate\Http\Response
     */
    public function paytmCallback(Request $request) {
        $Transaction = Transaction::where("transaction_code", $request['ORDERID'])->first();
        // $Transaction->paytm_order_id = $request['ORDERID'];
        $Transaction->paytm_txnid = $request['TXNID'];
        $Transaction->paytm_mid = $request['MID'];
        $Transaction->paytm_txnamount = $request['TXNAMOUNT'];
        $Transaction->paytm_paymentmode = $request['PAYMENTMODE'];
        $Transaction->paytm_currency = $request['CURRENCY'];
        $Transaction->paytm_txndate = $request['TXNDATE'];
        $Transaction->paytm_status = $request['STATUS'];
        $Transaction->paytm_respcode = $request['RESPCODE'];
        $Transaction->paytm_respmsg = $request['RESPMSG'];
        $Transaction->paytm_gateway_name = $request['GATEWAYNAME'];
        $Transaction->paytm_bank_txn_id = $request['BANKTXNID'];
        $Transaction->paytm_bank_name = $request['BANKNAME'];
        $Transaction->paytm_checksum = $request['CHECKSUMHASH'];
        ($request['STATUS'] == "TXN_SUCCESS") ? $Transaction->status = "CM" : $Transaction->status = "FL";
        ($request['STATUS'] == "TXN_SUCCESS") ? $Transaction->transaction_status = "success" : $Transaction->transaction_status = "failed";
        $Transaction->save();
        $status = $Transaction->status;
        if ($request['STATUS'] == "TXN_SUCCESS") {
            $user = User::where("id", $Transaction->user_id)->first();
            $user->wallet_amount = $user->wallet_amount + $Transaction->paytm_txnamount;
            $user->save();
        }
        $wallet = new Wallet();
        $wallet->user_id = $Transaction->user_id;
        $wallet->type = "transaction";
        $wallet->payment_mode = "wallet";
        $wallet->transaction_id = $Transaction->id;
        $wallet->save();
        return view("transactions.payment_response", compact('status'));
    }

    public function paypalWebview(Request $request) {
        $required = array("user_id", "amount", "device_type", "order_id");
        $input = array_keys($request->all());
        $existance = implode(", ", array_diff($required, $input));

        if (!empty($existance)) {
            if (count(array_diff($required, $input)) == 1) {
                $response = array(
                    "status" => 101,
                    "message" => $existance . " key is missing",
                );
            } else {
                $response = array(
                    "status" => 101,
                    "message" => $existance . " keys are missing",
                );
            }
            echo json_encode($response);
            exit;
        }

        if ($user = User::where("id", $request->user_id)->first()) {
            if ($user->status == "AC") {
                if ($country = Country::select('currency_code')->where("name", $user->country)->first()) {
                    $transaction = new Transaction;
                    $transaction->transaction_code = Helper::generateNumber("transactions", "transaction_code");
                    $transaction->user_id = $request->user_id;
                    $transaction->amount = $request->amount;
                    $transaction->paytm_order_id = $request->order_ids;
                    $transaction->device_type = $request->device_type;
                    $transaction->save();
                    $data = (object) array('name' => $user->name, 'last_name' => $user->last_name, 'email' => $user->email, 'mobile_number' => $user->mobile_number, 'transaction_code' => $transaction->transaction_code, 'amount' => $request->amount, 'status' => 'PN', 'user_id' => $request->user_id, 'device_type' => $request->device_type, "email" => $user->email, 'currency_code' => $country->currency_code, "order_id" => $request->order_id);
                    return view('transactions.paypal_webview', compact('data'));
                } else {
                    $response = array(
                        "status" => 216,
                        "message" => ResponseMessages::getStatusCodeMessages(216),
                    );
                    echo json_encode($response);
                    exit;
                }
            } else {
                $response = array(
                    "status" => 218,
                    "message" => ResponseMessages::getStatusCodeMessages(216),
                );
                echo json_encode($response);
                exit;
            }
        } else {
            $response = array(
                "status" => 321,
                "message" => ResponseMessages::getStatusCodeMessages(321),
            );
            echo json_encode($response);
            exit;
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function paymentSuccess() {
        // echo "<pre>";
        // print_r($_REQUEST);
        $transaction = Transaction::where("transaction_code", $_REQUEST["cm"])->first();
        $transaction->status = $_REQUEST['st'];
        $transaction->paytm_txnid = $_REQUEST['tx'];
        $transaction->txn_id = $_REQUEST['tx'];
        $transaction->paytm_currency = $_REQUEST['cc'];
        $transaction->paytm_txnamount = $_REQUEST['amt'];
        $transaction->save();
        echo "Transaction successfully done";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function paymentFailed(Request $request) {
        // echo "<pre>";
        // print_r($_REQUEST);
        $transaction = Transaction::where("transaction_code", $_REQUEST["cm"])->first();
        $transaction->status = $_REQUEST['st'];
        $transaction->paytm_txnid = $_REQUEST['tx'];
        $transaction->txn_id = $_REQUEST['tx'];
        $transaction->paytm_currency = $_REQUEST['cc'];
        $transaction->paytm_txnamount = $_REQUEST['amt'];
        $transaction->save();
        echo "Transaction failed";
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //
    }
}
