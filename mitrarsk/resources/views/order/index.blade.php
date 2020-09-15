@extends('layouts.app')
@section('title', 'All Orders')
@section('content')
<link rel="stylesheet" href="{{ asset('public/assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css') }}"/>

<style>
    a.btn_desable {
   pointer-events: none;
   cursor: default;
}

</style>

        <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Orders
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Orders</li>
      </ol>
    </section>



    <!-- Start Page Content -->
        <section class="content">
              <div class="box box-default">
                <div class="box-header with-border">
    @include('layouts.message')
                <div class="card-body" style="display:none" id="orderDate">
                </div>
                <div class="card-body" id="allOrder">
                    <h4 class="card-title">All Orders</h4>
                    <hr>
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <input type="text" name="orderByDate" id="datepicker" placeholder="ORDER BY DATE" class="form-control">
                        </div>
                        <div class="col-md-8 col-xs-7">
                            <button class="btn btn-primary" id="openOrder">
                                OPEN
                            </button>
                        </div>

                    </div>
                    <hr>
                    <div class="box-body">
                        <table id="cmsTable" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Order Id</th>
                                    <th>User Name</th>
                                    <th>Email</th>
                                    <th>Mobile Number</th>
                                    <th>Delivery Address</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Order Id</th>
                                    <th>User Name</th>
                                    <th>Email</th>
                                    <th>Mobile Number</th>
                                    <th>Delivery Address</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach($orders as $order)
                                 @php if(isset($order->get_orders)){ @endphp
                                @if($order->useraddress != null)
                                <tr>
                                    <td>{{$order->order_code}}</td>
                                    <td>{{$order->get_orders->name}}</td>
                                    <td>{{$order->get_orders->email}}</td>
                                    <td>{{$order->get_orders->mobile_number}}</td>
                                    <td>
                                    {{(isset($order->useraddress->house_no))?$order->useraddress->house_no.", ":""}}
                                    {{(isset($order->useraddress->apartment_name))?$order->useraddress->apartment_name.", ":""}}
                                    {{(isset($order->useraddress->street_details))?$order->useraddress->street_details.", ":""}}
                                    {{(isset($order->useraddress->landmark_details))?$order->useraddress->landmark_details.", ":""}}
                                    {{(isset($order->useraddress->area_details))?$order->useraddress->area_details.", ":""}}
                                    {{(isset($order->useraddress->city))?$order->useraddress->city.", ":""}}
                                    {{(isset($order->useraddress->state))?$order->useraddress->state.", ":""}}
                                    {{(isset($order->useraddress->pincode))?$order->useraddress->pincode.", ":""}}
                                    </td>
                                    <td>{{ucfirst(config('constants.STATUS.'.$order->status))}}</td>
                                    <td>
                                            @if($order->status == 'CM')
                                            <a href="javascript:void(0)" class="changeStatus toolTip" data-status="{{$order->status}}" data-id="{{$order->id}}" data-toggle="tooltip"
                                                data-placement="bottom" title="Cancel {{$order->order_code}}"><i class="fa fa-times" aria-hidden="true"></i></a>                                        @else
                                            <a href="javascript:void(0)" class=" toolTip" data-status="{{$order->status}}" data-id="{{$order->id}}" data-toggle="tooltip"
                                                data-placement="bottom" title="Cancelled {{$order->order_code}}"><i class="fa fa-check" aria-hidden="true"></i></a>                                        @endif &nbsp;&nbsp;&nbsp;


                                        <a href="{{route('editOrder', ['id' => $order->id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="Edit Order"><i class="fa fa-pencil"></i></a>                                        &nbsp;&nbsp;&nbsp;
                                         <a href="{{route('viewOrder', ['id' => $order->id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="View Order"><i class="fa fa-eye"></i></a>&nbsp;&nbsp;&nbsp;
                                         {{-- <button type="button" disabled class="toolTip btn waves-effect waves-light btn-primary "> --}}
                                        <a href="{{route('sendInvoice', ['id' => $order->id])}}" class="toolTip  @if($order->status == 'CL') btn_desable @endif " data-toggle="tooltip" data-placement="bottom" title="Send Invoice" ><i class="fa fa-file"></i></a>
                                         {{-- </button> --}}
                                    </td>

                                </tr>
                                @endif
                                 @php } @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>

<div class="modal fade" id="userStatusModal" tabindex="-1" role="dialog" aria-labelledby="userStatusModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="userStatusModalLabel">Cancel Order</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                </div>
                <div class="modal-body">
                    <form class="form-valide" method="post" id="blockForm" action="{{route('cancelOrder')}}">
                        {{csrf_field()}}
                        <input type="hidden" name="val-id" id="val-id">
                        {{-- <input type="hidden" name="val-status" id="val-status"> --}}
                        <div class="form-group">
                            <label class="col-form-label" for="val-reason"><span class='userstatus'></span></label>
                            <textarea class="form-control" id="val-reason" name="val-reason" rows="5"></textarea>
                        </div>
                        <button type="button" class="btn btn-secondary btn-flat cancelBtn m-b-30 m-t-30" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-info btn-flat blockBtn m-b-30 m-t-30">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
 @push('scripts')

<script src="{{URL::asset('/public/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<!-- start - This is for export functionality only -->
<script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
<script src="{{ asset('public/assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
<script type="text/javascript">
    $(function(){
            var table = $('#cmsTable').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    {extend: 'copy',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'csv',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'excel',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'pdf',exportOptions: {columns: 'th:not(:last-child)'}},
                    // {extend: 'print',exportOptions: {columns: 'th:not(:last-child)'}}
                ],
                "columnDefs": [
                    {"targets": 6,"orderable": false} ,
                    // {"targets": [1], visible: false}
                    ],
                "aaSorting": []
            });

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


        // $(document).on('click', '.delete', function() {
        //     var con =confirm('Are you sure to delete!!');
        //     if(con) {
        //         $.ajax({
        //             method:'post',
        //             url: '{{URL::to("/admin/product/destroy") }}',
        //             data: {
        //                 '_token': "{{csrf_token()}}",
        //                 'id': $(this).data('id')
        //     },
        //     success: function(data) {
        //         if(data.status=='success')
        //         {
        //             window.location.reload();
        //         $('#main').html('<div class="alert alert-success col-ssm-12">' + data.message + '</div>');
        //         }
        //         else{
        //             $('.item' + $('.did').text()).remove();
        //             $('#main').html('<div class="alert alert-danger col-ssm-12">' + data.message + '</div>'); } } }); }
        //             return false;
        // });
          $("#datepicker").datepicker();  

</script>












@endpush