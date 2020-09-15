<h3>Order Berdasarkan Tanggal : {{$date}}</h3>
<h3>Revenue berdasarkan tanggal {{$date}} : Rp. {{ number_format($revenue,0,",",".")}}</h3>
<hr>
<button class="btn btn-primary" type="button" id="backOrder">Back</button>
<hr>
<div class="row">
    <div class="col-md-12">
        <table class="table table-responsive table-bordered" id="table">
            <thead>
                <th>NO</th>
                <th>ORDER ID</th>
                <th>Tanggal Order</th>
                <th>Nama Mitra</th>
                <th>No Handphone</th>
                <th>Alamat</th>
                <th>Status</th>
                <th>Action</th>
            </thead>
            <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $order->order_code }}</td>
                        <td>{{ $order->created }}</td>
                        <td>{{ $order->name }}</td>
                        <td>{{ $order->mobile_number }}</td>
                        <td>
                            {{(isset($order->house_no))?$order->house_no.", ":""}}
                            {{(isset($order->apartment_name))?$order->apartment_name.", ":""}}
                            {{(isset($order->street_details))?$order->street_details.", ":""}}
                            {{(isset($order->landmark_details))?$order->landmark_details.", ":""}}
                            {{(isset($order->area_details))?$order->area_details.", ":""}}
                            {{(isset($order->city))?$order->city.", ":""}}
                            {{(isset($order->state))?$order->state.", ":""}}
                            {{(isset($order->pincode))?$order->pincode.", ":""}}
                        </td>
                                    
                        <td>{{ucfirst(config('constants.STATUS.'.$order->order_status))}}</td>
                        <td>
                            <a href="{{ url('admin/print/'.$order->order_id) }}" target="_blank" class="btn btn-primary btn-xs" title="Cetak Invoice">
                                <i class="fa fa-print"></i> Cetak Invoice
                            </a>
                                @if($order->order_status == 'CM')
                                <a href="javascript:void(0)" class="changeStatus toolTip" data-status="{{$order->order_status}}" data-id="{{$order->order_id}}" data-toggle="tooltip"
                                    data-placement="bottom" title="Cancel {{$order->order_code}}"><i class="fa fa-times" aria-hidden="true"></i></a>                                        
                                    @else
                                <a href="javascript:void(0)" class=" toolTip" data-status="{{$order->order_status}}" data-id="{{$order->order_id}}" data-toggle="tooltip"
                                    data-placement="bottom" title="Cancelled {{$order->order_code}}"><i class="fa fa-check" aria-hidden="true"></i></a>                                        
                                    @endif &nbsp;&nbsp;&nbsp;


                                <a href="{{route('editOrder', ['id' => $order->order_id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="Edit Order"><i class="fa fa-pencil"></i></a>                                        &nbsp;&nbsp;&nbsp;
                                    <a href="{{route('viewOrder', ['id' => $order->order_id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="View Order"><i class="fa fa-eye"></i></a>&nbsp;&nbsp;&nbsp;
                                    {{-- <button type="button" disabled class="toolTip btn waves-effect waves-light btn-primary "> --}}
                                <a href="{{route('sendInvoice', ['id' => $order->order_id])}}" class="toolTip  @if($order->status == 'CL') btn_desable @endif " data-toggle="tooltip" data-placement="bottom" title="Send Invoice" ><i class="fa fa-file"></i></a>
                                    {{-- </button> --}}

                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
<script>
    $("#backOrder").click(function(){
        $("#allOrder").show();
        $("#orderDate").html("");
        $("#orderDate").hide();
    });
    $('.changeStatus').click(function(){
                var status = $(this).data('status');
                var id = $(this).data('id');
                if(status == 'CM')
                {
                    $('#val-id').val(id);
                    // $('#val-status').val('CL');
                    $('.userstatus').text('Are you sure Want to cancel this Order');
                }
                else
                {
                    $('#val-id').val(id);
                    $('#val-status').val('CM');
                    $('.userstatus').text('Are you sure Want to cancel Order');
                }

                $('#userStatusModal').modal('show');
            });


    $("#table").DataTable();
</script>