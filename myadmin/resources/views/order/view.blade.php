@extends('layouts.app')
@section('title','Order details')
@section('content')
 <section class="content-header">
      <h1>
        Order Details <a href="{{ url('admin/print/'.$id) }}" target="_blank" class="btn btn-primary btn-xs">Print Invoice</a>
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('orders')}}">Orders</a></li>
        <li class="active">Order Details</li>
      </ol>
    </section>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    <!-- Start Page Content -->
        <section class="content">
            <div class="row">
                <div class="col-lg-4 col-xlg-3 col-md-5">
                    <div class="box box-default">
                        <div class="box-header with-border">
                        @include('layouts.message')
                            <div class="card-body">
                                <h4 class="card-title m-t-10">Order ID</h4>
                                {{$order->order_code}}
                            </div>
                            <div><hr></div>
                            <div class="card-body">
                                <h4 class="card-title m-t-10">Customer Details</h4>
                                @if(isset($default_address))
                                <small class="text-muted">Name</small>

                                <h6>{{$default_address->name}}</h6> <small class="text-muted p-t-30 db">Phone</small>
                                <h6>+{{$default_address->mobile_number}}</h6> <small class="text-muted p-t-30 db">Location</small>
                                <h6>{{$default_address->house_no}}, {{$default_address->apartment_name}}, {{$default_address->landmark_details}},{{$default_address->area_details}},{{$default_address->city}},{{$default_address->state}},{{$default_address->pincode}}</h6>
                                @endif
                            </div>
                            <div class="card-body">
                                <h4 class="card-title m-t-10">Order Delivery Details</h4>
                                @if(isset($delivery_address))
                                <small class="text-muted">Name</small>
                                <h6>{{$delivery_address->name}}</h6> <small class="text-muted p-t-30 db">Phone</small>
                                <h6>+{{$delivery_address->mobile_number}}</h6> <small class="text-muted p-t-30 db">Location</small>
                                <h6>{{$delivery_address->house_no}}, {{$delivery_address->apartment_name}}, {{$delivery_address->landmark_details}},{{$delivery_address->area_details}},{{$delivery_address->city}},{{$delivery_address->state}},{{$delivery_address->pincode}}</h6>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="box box-default">
                        <div class="box-header with-border nav-tabs-custom">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="active"> <a data-toggle="tab" aria-expanded="true" href="#profile" role="tab">Order Items</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#status" role="tab">Delivery Status</a> </li>
                            @if($order->status=='CM' || $order->status=='CL')
                                @if($type=='edit' && empty($order->driver_id))
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#settings" role="tab">Order Assign</a> </li>
                                 @else
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#settings" role="tab">Order Assigned</a> </li>
                                  @endif
                                @endif
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="profile" role="tabpanel">
                                    <div class="card-body">
                                        {{-- <h6>Order Items</h6> --}}
                                        @foreach($cartdata as $item)
                                            <div class="row">
                                                <div class="col-md-3 col-xs-6 b-r"> <strong>Name</strong>
                                                    <br>
                                                    <p class="text-muted">{{App\Model\Product::where(["id" => $item->product_id])->pluck("name")[0]}}</p>
                                                </div>
                                                <div class="col-md-3 col-xs-6 b-r"> <strong>Product Variation</strong>
                                                    <br>
                                                    <p class="text-muted">{{$item->weight}} {{App\Model\ProductUnit::where(["id" => $item->unit_id])->pluck("name")[0]}}</p>
                                                </div>
                                                <div class="col-md-2 col-xs-6 b-r"> <strong>Quantity</strong>
                                                    <br>
                                                    <p class="text-muted">{{$item->quantity}}</p>
                                                </div>
                                                <div class="col-md-2 col-xs-6 b-r"> <strong>Cost</strong>
                                                    <br>
                                                    <p class="text-muted">{{$item->total_with_tax}}(in {{Config::get('constants.CURRENCY_SYMBOL')}})</p>
                                                </div>
                                                <div class="col-md-3 col-xs-6 b-r"> <strong>From Date</strong>
                                                    <br>
                                                    <p class="text-muted">{{$item->from_date}}</p>
                                                </div>
                                                <div class="col-md-2 col-xs-6 b-r"> <strong>To Date</strong>
                                                    <br>
                                                    <p class="text-muted">{{$item->to_date}}</p>
                                                </div>
                                            </div>
                                            <hr>
                                        @endforeach
                                        <div class="row">
                                            <div class="col-md-12 col-xs-6">
                                                <h3>Order total</h3>
                                                <h5>{{$order->cost}}(in {{Config::get('constants.CURRENCY_SYMBOL')}})</h5>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-12 col-xs-6">
                                                <h3>Payment Method</h3>
                                                <h5>{{$order->payment_method}}</h5>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="m-t-30">
                                            <small class="text-muted p-t-30 db">Order Date</small>
                                            <h5>{{$order->created_at}}</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="status" role="tabpanel">
                                    <div class="card-body">
                                        @if($type=='edit' && $order_delivery->status == "AC")
                                        <form method="POST" class="form-valide" action="{{route('statusOrder',request()->route('id'))}}">
                                            {{csrf_field()}}
                                            <input type="hidden" name="user_id" value="{{$order->user_id}}">
                                            <div class="form-group clearfix">
                                                {!!Form::label('order_status','Select Status')!!}<span class="required">*</span><br>
                                                <select required name="status" class="form-control col-md-4">
                                                    <option value="">Select Status</option>
                                                    @foreach ($status as $key=>$value)
                                                <option value="{{$key}}" @if($order_delivery->status==$key) selected @endif>{{$value}}</option>
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <button type="submit" class="btn btn-success">Update</button>
                                                </div>
                                            </div>
                                        </form>
                                        @else
                                        @foreach ($status as $key=>$value)
                                            @if($order_delivery->status==$key)
                                                <h4>Delivery Status :
                                                    @if($key=="CM")
                                                        <span style="color: green">{{$value}}</span>
                                                    @elseif($key=="CL" || $key=="FL")
                                                        <span style="color: red">{{$value}}</span>
                                                    @else
                                                        <span>{{$value}}</span>
                                                    @endif
                                                </h4>
                                            @endif
                                        @endforeach

                                        @endif
                                    </div>
                                </div>
                                <div class="tab-pane" id="settings" role="tabpanel">
                                    <div class="card-body">
                                        @if($type=='edit' && empty($order->driver_id))
                                        <form method="POST" class="form-valide" action="{{route('assignOrder',request()->route('id'))}}">
                                            {{csrf_field()}}

                                            <div class="form-group clearfix">
                                                {!!Form::label('driver_id','Select Driver')!!}<span class="required">*</span><br>
                                                <select required name="driver_id" class="form-control col-md-4">
                                                                            <option value="">Select Driver</option>
                                                                            @foreach ($drivers as $driver)
                                                                        <option value="{{$driver->id}}" @if($order->driver_id==$driver->id) selected @endif>{{$driver->name}}</option>
                                                                            @endforeach
                                                                        </select>
                                                <span class="text-danger">{!! $errors->first('driver_id') !!}</span>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <button type="submit" class="btn btn-success">Update</button>
                                                </div>
                                            </div>
                                        </form>
                                        @else
                                        @foreach ($drivers as $driver)
                                         @if($order->driver_id==$driver->id)
                                         <p>Selected Driver Name :{{$driver->name}}</p>
                                         @endif
                                            @endforeach

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
<script type="text/javascript">
    $(function(){
		$('#blockUser').change(function(){
			$('#blockMsg').val('');
		});
        $('#uploadOther').click(function(){
            $('#uploadDoc').parent().append('<div class="fileinput fileinput-new input-group m-t-20" data-provides="fileinput"><div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Select file(Allowed Extensions -  .jpg, .jpeg, .png, .doc, .docx, .pdf)</span> <span class="fileinput-exists">Change</span><input type="file" name="doc[]"> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a></div>');
            $('.tooltip').tooltip('hide');
            $('#image_exists').val(0);
            $('#uploadBtn').show();
        });
	});
</script>
































@endpush