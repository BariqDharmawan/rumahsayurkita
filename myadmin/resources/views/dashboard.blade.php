@extends('layouts.app')
@section('title', 'Dashboard')
@section('content')
<section class="content">
    <div class="row">
        <div class="box box-default">
            <div class="box-header with-border">
                <div class="col-lg-2 text-center">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex no-block">
                                <div class="m-r-20 align-self-center"><span class="lstick m-r-20"></span><img src="{{URL::asset('/images/icon/income.png')}}" alt="Income"
                                    /></div>
                                <div class="align-self-center">
                                    <h6 class="text-muted m-t-10 m-b-0">Total Orders</h6>
                                    <h2 class="m-t-0">{{$orders}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex no-block">
                                <div class="m-r-20 align-self-center"><span class="lstick m-r-20"></span><img src="{{URL::asset('/images/icon/expense.png')}}" alt="Income"
                                    /></div>
                                <div class="align-self-center">
                                    <h6 class="text-muted m-t-10 m-b-0">Total Users</h6>
                                    <h2 class="m-t-0">{{$users->count()}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-center">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex no-block">
                                <div class="m-r-20 align-self-center"><span class="lstick m-r-20"></span><img src="{{URL::asset('/images/icon/staff.png')}}" alt="Income"
                                    /></div>
                                <div class="align-self-center">
                                    <h6 class="text-muted m-t-10 m-b-0">Revenue Order YTD</h6>
                                    <h2 class="m-t-0">Rp. {{ number_format($revenue_ytd,0,",",".")}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 text-center">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex no-block">
                                <div class="m-r-20 align-self-center"><span class="lstick m-r-20"></span><img src="{{URL::asset('/images/icon/assets.png')}}" alt="Income"
                                    /></div>
                                <div class="align-self-center">
                                    <h6 class="text-muted m-t-10 m-b-0">Revenue Order Harian</h6>
                                    <h2 class="m-t-0">Rp. {{ number_format($revenue,0,",",".")}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex no-block">
                                <div class="m-r-20 align-self-center"><span class="lstick m-r-20"></span><img src="{{URL::asset('/images/icon/staff.png')}}" alt="Income"
                                    /></div>
                                <div class="align-self-center">
                                    <h6 class="text-muted m-t-10 m-b-0">Total Products</h6>
                                    <h2 class="m-t-0">{{$products}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="box box-default">
            <div class="box-header with-border">
{{--                 <div class="col-lg-5 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div>
                                    <h4 class="card-title"><span class="lstick"></span>Recently Registered Drivers</h4>
                                </div>
                            </div>
                            <div class="table-responsive m-t-20">
                                @if($drivers->count()>0)
                                <table class="table vm no-th-brd no-wrap pro-of-month" id="table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Mobile Number</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($drivers as $item)
                                        <tr>
                                            <td>{{ucfirst($item->name)}}</td>
                                            <td>{{$item->mobile_number}}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif @if($drivers->count()==0)
                                <h4>No record found</h4>
                                @endif
                            </div>
                        </div>
                    </div>
                </div> --}}
                <div class="col-lg-8 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div>
                                    <h4 class="card-title"><span class="lstick"></span>Recently Registered Users</h4>
                                </div>
                            </div>
                            <div class="table-responsive m-t-20">
                                @if($users->count()>0)
                                <table class="table vm no-th-brd no-wrap pro-of-month" id="table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Mobile Number</th>
                                            {{--
                                            <th>Email Address</th> --}} {{--
                                            <th>Total Bookings</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($users as $item)
                                        <tr>
                                            <td>{{ucfirst($item->name)}}</td>
                                            <td>{{$item->mobile_number}}</td>
                                            {{--
                                            <td>{{$item->email}}</td> --}} {{--
                                            <td>{{ucfirst($item->total_bookings)}}</td> --}}
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif @if($users->count()==0)
                                <h4>No record found</h4>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><span class="lstick"></span>Order Status</h4>
                            <div id="orders" style="height:290px; width:100%;"></div>
                            <table class="table vm font-14">
                                <tr>
                                    <td class="b-0">Completed Orders</td>
                                    <td class="text-right font-medium b-0">{{$completedOrder->count()}}</td>
                                </tr>
                                {{-- <tr>
                                    <td>Pending Orders</td>
                                    <td class="text-right font-medium">{{$pendingOrder->count()}}</td>
                                </tr> --}}
                                <tr>
                                        <td>Cancelled Orders</td>
                                        <td class="text-right font-medium">{{$Cancelledorder->count()}}</td>
                                    </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="box box-default">
            <div class="box-header with-border">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div>
                                    <h4 class="card-title"><span class="lstick"></span>Today's Products Orders Availability</h4>
                                </div>
                            </div>
                            <div class="table-responsive m-t-20 ">
                                @if($currentdateorder->count()>0)
                                <a href="{{ url('admin/export-today-order') }}" target="_blank" class="btn btn-primary btn-xs">
                                    Export To Excel
                                </a>

                                <table id="tableProductOrders" class="table vm no-th-brd no-wrap pro-of-month ">
                                    <thead>
                                        <tr>
                                            <th>Product name</th>
                                            <th>Total Quantity</th>


                                             {{--
                                            <th>State</th>
                                            <th>City</th> --}} {{--
                                            <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($currentdatestock as $item)
                                        <tr>
                                            <td>{{ucfirst($item->name)}}</td>
                                            <td>{{$item->total}}</td>
                                             {{--
                                            <td>{{ucfirst($item->state)}}</td>
                                            <td>{{ucfirst($item->city)}}</td> --}} {{--
                                            <td>{{route()}}</td> --}}
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif @if($currentdateorder->count()==0)
                                <h4>No record found</h4>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div>
                                        <h4 class="card-title"><span class="lstick"></span>Tomorrow's Products Orders Availability</h4>
                                    </div>
                                </div>
                                <div class="table-responsive m-t-20 ">
                                    @if($nextdatestock->count()>0)
                                    <table class="table vm no-th-brd no-wrap pro-of-month ">
                                        <thead>
                                            <tr>
                                                <th>Product name</th>
                                                <th>Total Quantity</th>


                                                 {{--
                                                <th>State</th>
                                                <th>City</th> --}} {{--
                                                <th>Action</th> --}}
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($nextdatestock as $item)
                                            <tr>
                                                <td>{{ucfirst($item->name)}}</td>
                                                <td>{{$item->total}}</td>
                                                 {{--
                                                <td>{{ucfirst($item->state)}}</td>
                                                <td>{{ucfirst($item->city)}}</td> --}} {{--
                                                <td>{{route()}}</td> --}}
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    @endif @if($nextdatestock->count()==0)
                                    <h4>No record found</h4>
                                    @endif
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="box box-default">
            <div class="box-header with-border">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div>
                                    <h4 class="card-title"><span class="lstick"></span>Today's Orders</h4>
                                </div>
                            </div>
                            <div class="table-responsive m-t-20 vh500">
                                @if($currentdateorder->count()>0)
                                <table class="table vm no-th-brd no-wrap pro-of-month ">
                                    <thead>
                                        <tr>
                                            <th>Order Id</th>
                                            <th>Product name</th>
                                            <th>User Name</th>
                                            <th>Number Of Items</th>
                                            <th>Quantity</th>
                                             {{--
                                            <th>State</th>
                                            <th>City</th> --}} {{--
                                            <th>Action</th> --}}
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($currentdateorder as $item)
                                        <tr>
                                            <td><a href="{{route('viewOrder', ['id' =>$item->order_id])}}">{{$item->order_code}}</a></td>
                                            <td>{{ucfirst($item->name)}}</td>
                                            <td>
                                                    <a href="{{route('view'.ucfirst('user'), ['id' => $item->user_id])}}">{{$item->user_name}}</a>
                                            </td>
                                            <td>{{$item->quantity}}</td>
                                            <td>{{$item->variation_name}}-{{$item->unit_name}}</td> {{--
                                            <td>{{ucfirst($item->state)}}</td>
                                            <td>{{ucfirst($item->city)}}</td> --}} {{--
                                            <td>{{route()}}</td> --}}
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif @if($currentdateorder->count()==0)
                                <h4>No record found</h4>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div>
                                    <h4 class="card-title"><span class="lstick"></span>Next Date Orders</h4>
                                </div>
                            </div>
                            <div class="table-responsive m-t-20 vh500">
                                @if($nextdate_order->count()>0)
                                <table class="table vm no-th-brd no-wrap pro-of-month">
                                    <thead>
                                            <tr>
                                                    <th>Order Id</th>
                                                    <th>Product name</th>
                                                    <th>User Name</th>
                                                    <th>Number Of Items</th>
                                                    <th>Quantity</th>
                                                     {{--
                                                    <th>State</th>
                                                    <th>City</th> --}} {{--
                                                    <th>Action</th> --}}
                                                </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($nextdate_order as $item)
                                        <tr>
                                                <td><a href="{{route('viewOrder', ['id' =>$item->order_id])}}">{{$item->order_code}}</a></td>
                                                <td>{{ucfirst($item->name)}}</td>
                                                <td>
                                                        <a href="{{route('view'.ucfirst('user'), ['id' => $item->user_id])}}">{{$item->user_name}}</a>
                                                </td>
                                                <td>{{$item->quantity}}</td>
                                                <td>{{$item->variation_name}}-{{$item->unit_name}}</td> {{--
                                                <td>{{ucfirst($item->state)}}</td>
                                                <td>{{ucfirst($item->city)}}</td> --}} {{--
                                                <td>{{route()}}</td> --}}
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif @if($nextdate_order->count()==0)
                                <h4>No record found</h4>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
 @push('scripts')
<script src="{{URL::asset('public/plugins/chartist-js/dist/chartist.min.js')}}"></script>
<script src="{{URL::asset('public/plugins/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js')}}"></script>
<!--c3 JavaScript -->
<script src="{{URL::asset('public/plugins/d3/d3.min.js')}}"></script>
<script src="{{URL::asset('public/plugins/c3-master/c3.min.js')}}"></script>
<!-- Chart JS -->
<script src="{{URL::asset('public/js/dashboard2.js')}}"></script>
<script src="{{URL::asset('public/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>

<script>
    var chart = c3.generate({
        bindto: '#orders',
        data: {
            columns: [
                // ['Pending', {{$pendingOrder->count()}}],
                ['Completed', {{$completedOrder->count()}}],
                ['Cancelled', {{$Cancelledorder->count()}}],

            ],
            type : 'donut',
            onclick: function (d, i) { console.log("onclick", d, i); },
            onmouseover: function (d, i) { console.log("onmouseover", d, i); },
            onmouseout: function (d, i) { console.log("onmouseout", d, i); },
            onmouseout: function (d, i) { console.log("onmouseout", d, i); }
        },
        donut: {
            label: {
                show: false
              },
            title:"Orders",
            width:20,

        },

        legend: {
          hide: true
          //or hide: 'data1'
          //or hide: ['data1', 'data2']
        },
        color: {
              pattern: ['rgb(50, 141, 16)','rgb(234, 61, 34)','#1e88e5']
        }
    });
$(function(){
    $("#table").DataTable({
        
    });
});
</script>
@endpush