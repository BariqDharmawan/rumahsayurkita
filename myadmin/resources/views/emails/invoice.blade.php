<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:400,500,700');
</style>
<table cellspacing="0" style="margin: -8px auto 0; width: 700px; font-family: 'Roboto', sans-serif;">

    <tr>
        <td style="border-bottom: 1px solid #ccc; padding-bottom: 30px;">
            <table style="float:left;width: 50%;">
                <tr>
                    <td>
                        <img style="margin:0px;    display: block;width: 40%" src="{{URL::asset('/images/logo.jpg')}}" alt="logo">
                    </td>
                </tr>
            </table>
        </td>
    </tr>

    <tr>
        <td>
            <div style="padding:25px;">
            <p style="font-size: 30px;font-weight: bold;margin-bottom: 0px;">{{Config::get('constants.CURRENCY_SYMBOL')}} {{$order->cost}}</p>
            <p style="color: #5f5e5e;">Terimakasih Telah Berbelanja di RAJA SAYUR</p>
            <p style="color: #5f5e5e;">{{$order->created_at}} | RAJA SAYUR</p>
            </div>
        </td>
    </tr>

    <tr style="background-color: #e8e8e8; padding: 15px 25px;">
        <td>
            <table style="width:100%;">
                <tr>
                    <td>
                        <div style="display: inline-block;width: 10%;">
                            <img src="{{URL::asset('/images/tmplate-mail-icon.png')}}" alt="">
                        </div>
                        <div style="display: inline-block;width: 89%;color: #5f5e5e;">
                            <p>Ini Kwitansi Dari RAJA SAYUR.
                            </p>
                        </div>
                    </td>
                </tr>
                <tr style="background-color: #e8e8e8;">
                    <td style="padding: 10px 25px;display: block;border-top: 1px solid #ccc;">
                        <table width="100%">
                        <tr>
                            <td width="50%">
                                <h2 style="color: #262626; font-weight: normal;">Pesanan Anda</h2>
                            </td>
                            <td align="right">
                                <h2 style="color: #262626; font-weight: normal;">#{{$order->order_code}}</h2>
                            </td>
                        </tr>
                        </table>


                        <div style="display: inline-block;width: 100%;">
                            <p style="float: left;width: 33.33%; font-size: 14px;color: #5f5e5e;">Nama Item</p>
                            <p style="float: left;width: 33.33%;text-align: right; font-size: 14px;color: #5f5e5e;">Quantity</p>
                            <p style="float: right;width: 33.33%;text-align: right; font-size: 14px;color: #5f5e5e;">Harga</p>
                        </div>
                    </td>
                </tr>
                @foreach($cartdata as $cart)
                <tr style="background-color: #e8e8e8;">
                    <td style="padding: 10px 25px;display: block;border-top: 1px solid #ccc;">
                        <div style="display: inline-block;width: 100%;">
                            <p style="float: left;width: 33.33%; font-size: 14px;color: #5f5e5e;">{{App\Model\Product::where(["id" => $cart->product_id])->pluck("name")[0]}}</p>
                            <p style="float: left;width: 33.33%;text-align: right; font-size: 14px;color: #5f5e5e;">{{$cart->quantity}}</p>
                            <p style="float: right;width: 33.33%;text-align: right; font-size: 14px;color: #5f5e5e;">{{Config::get('constants.CURRENCY_SYMBOL')}}{{$cart->total_with_tax}}</p>
                        </div>

                    </td>
                </tr>
                @endforeach



                <tr style="background-color: #e8e8e8;">
                    <td style="padding: 10px 25px;display: block;border-top: 1px solid #ccc;">
                        <div style="display: inline-block;width: 100%;">
                            <p style="float: left;width: 50%; font-size: 14px;color: #5f5e5e;">COLLECTED</p>
                        </div>
                        <div style="display: inline-block;width: 100%;">
                            <p style="float: left;width: 50%; font-size: 14px;color: #5f5e5e;">
                                <img src="{{URL::asset('/images/template-cash-icon.png')}}" alt="">
                                <span style="margin-left: 15px;margin-top: -25px;display: inline-block;">Bayar Di tempat</span>
                            </p>
                            <p style="margin-top:0px;float: right;width: 50%;text-align: right;font-size: 30px;font-weight: bold;color: #262626;">{{Config::get('constants.CURRENCY_SYMBOL')}} {{$order->cost}}</p>
                        </div>
                    </td>
                </tr>


            </table>


        </td>
    </tr>


    <tr style="">
            <td style="background-color: #4d4d4d;padding: 15px 25px;">
                <table style="width:100%">
                    <tr>
                        <td style="padding-bottom: 25px;">
                            <div style="float: left;width: 50%;">
                                <img src="{{URL::asset('/images/logo.png')}}" style="width:40%" alt="" style="width: 40%">
                            </div>
                            <div style="float: right;width: 50%;text-align: right;margin-top: 15px;">
                                <ul style="list-style: none;">
                                    <li style="display: inline-block;margin: 0 5px;">
                                        <a href="#">
                                            <img src="{{URL::asset('/images/fb-icon.png')}}" alt="">
                                        </a>
                                    </li>
                                    <li style="display: inline-block;margin: 0 5px;">
                                        <a href="#">
                                            <img src="{{URL::asset('/images/twit-icon.png')}}" alt="">
                                        </a>
                                    </li>
                                    <li style="display: inline-block;margin: 0 5px;">
                                        <a href="#">
                                            <img src="{{URL::asset('/images/insta-icon.png')}}" alt="">
                                        </a>
                                    </li>
                                    <li style="display: inline-block;margin: 0 5px;">
                                        <a href="#">
                                            <img src="{{URL::asset('/images/google-icon.png')}}" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #4d4d4d;padding: 15px 25px;text-align: center;border-top: 1px solid #fff;">
                            <p style="color: #fff; font-size: 22px;">Butuh Bantuan?</p>
                            <p style="color: #a2a1a1;font-size:14px;">Tekan Bantuan di Aplikasi</p>
                            <p style="color: #a2a1a1;font-size:14px;"><b>No Bantuan:</b> +62 9898989898</p>
                            <p style="color: #a2a1a1;font-size:14px;"><b>24 X 7:</b> <a href="mailto:noreply@GroceryStore.com" style="color:#fff;">noreply@rajasayurindonesia.com</a></p>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>

</table>