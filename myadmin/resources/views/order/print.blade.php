<!DOCTYPE html>
<html>
<head>
	<title>INVOICE</title>
</head>
<body>
	<center style="line-height:5px;">
		<img src="https://1.bp.blogspot.com/-GNMfWtfeo-k/XtxfAUu7LMI/AAAAAAAAA_U/NF3QdRZqEyk4lcNklww70mq0MzZBfA64QCLcBGAsYHQ/s320/chicken-meat-chef-cartoon-png-favpng-xWurk8Pn5p36ieSJvBrEErWaR.png" width="140" />
		<h1>INVOICE</h1>
		<h3>RUMAH SAYUR KITA</h3>
		<p>Jalan Cinta NO 53, Pulo Gadung, Jakarta Timur, DKI Jakarta</p>
		<p>www.rumahsayurkita.com</p>
	</center>
</html>
<style>
    .table{
        width:100%;
        border:;
        font-size:11pt;
    }

    table.table thead th,.table tbody tr td{
        border:0px solid #999;
        text-align:;
    }
</style>
<body onload="window.print()">
    <!-- <button type="button" style="float:right" onclick="window.print()">PRINT</button> -->
    <table>
        <tr>
            <td>ID Order</td>
            <td>:</td>
            <td> {{$order->order_code}}</td>
        </tr>
       </tr>     
            <td>Tanggal Order</td>
            <td>:</td>
            <td>{{$order->created_at}}</td>
        </tr>
        <tr>
            <td>Nama Customer</td>
            <td>:</td>
            <td>{{ ucwords($delivery_address->name)}}</td>
        </tr>
        <tr>
            <td>No HP</td>
            <td>:</td>
            <td>{{ ucwords($delivery_address->mobile_number)}}</td>
        </tr>
        <tr>
            <td>Alamat</td>
            <td>:</td>
            <td>{{$delivery_address->house_no}}, {{$delivery_address->apartment_name}}, {{$delivery_address->landmark_details}},{{$delivery_address->area_details}},{{$delivery_address->city}},{{$delivery_address->state}},{{$delivery_address->pincode}}</td>
        </tr>
    </table>
    <br>
    <table class="table">
        <thead>
            <th>Checking</th>
            <th>Nama Barang</th>
            <th>Satuan</th>
            <th>Qty</th>
            <th>Harga</th>
            <th>Jumlah</th>
        </thead>
        <tbody>
        @foreach($cartdata as $item)
            <tr>
                <td></td>
                <td>{{App\Model\Product::where(["id" => $item->product_id])->pluck("name")[0]}}</td>
                <td>{{$item->weight}} {{App\Model\ProductUnit::where(["id" => $item->unit_id])->pluck("name")[0]}}</td>
                <td>{{$item->quantity}}</td>
                <td>Rp. {{number_format(App\Model\ProductVariation::where(["id" => $item->product_variation_id])->pluck("special_price")[0],0,",",".")}}</td>
                <td>Rp. {{number_format($item->total_without_tax,0,",",".")}}</td>
            </tr>

        @endforeach
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            </tr>
            <tr style="font-weight:bold">
                <td colspan="5">Ongkos Kirim</td>
                <td>Rp. 10.000</td>
                <td>&nbsp; </td>
            </tr>
            <tr style="font-weight:bold">
                <td colspan="5">Grand Total</td>
                <td>Rp. {{number_format($total,0,",",".")}}</td>
                <td>&nbsp; </td>
        </tbody>
    </table>
</body>
<body>
	<center style="line-height:5px;">
        <p></p>
		<p>TERIMA KASIH ATAS PESANAN ANDA</p>
		<p>UNTUK PESANAN SELANJUTNYA BISA ANDA DOWNLOAD APLIKASINYA DI</p>
		<b>www.rumahsayurkita.com</b>
	</center>

