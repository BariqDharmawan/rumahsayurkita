
	<table>
        <p>TANGGAL :</p>
		<tr>
			<th>Nama Produk</th>
			<th>Quantity</th>
			<th>Harga Modal</th>
		</tr>
        @foreach($currentdatestock as $item)
            <tr>
                <td>{{ucfirst($item->name)}}</td>
                <td>{{$item->total}}</td>
                <td></td>
            </tr>
        @endforeach
	</table>
