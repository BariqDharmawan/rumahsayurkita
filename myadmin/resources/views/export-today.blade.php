
	<table>
		<tr>
			<th>Produk Name</th>
			<th>Quantity</th>
		</tr>
        @foreach($currentdatestock as $item)
            <tr>
                <td>{{ucfirst($item->name)}}</td>
                <td>{{$item->total}}</td>
            </tr>
        @endforeach
	</table>
