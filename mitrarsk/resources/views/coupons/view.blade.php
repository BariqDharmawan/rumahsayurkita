@extends('layouts.app')
@section('title', 'Edit Coupon')
@section('content')
@push('styles')
<link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">
<link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
@endpush

    <section class="content-header">
      <h1>
        Coupon Code
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('coupons')}}">Coupon Codes</a></li>
        <li class="active">{{$coupon->title}}</li>
      </ol>
    </section>

    <!-- Start Page Content -->

        <section class="content">
    <div class="row">
        <div class="col-sm-6">
              <div class="box box-default">
                <div class="box-header with-border">
            <div class="card">
    @include('layouts.message')
                <div class="card-body" id="editsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('coupons')}}">Back</a>
                    </div> <br>
                    {!!Form::model($coupon, array('route'=>array('editCoupon',request()->route('id')),'method'=>'post'))!!}
                    <div class="form-group clearfix">
                        {!!Form::label('title','Title')!!}<span class="required">*</span>
                        {!!Form::text('title',null,array('class'=>'form-control','id'=>'title','placeholder'=>'Coupon Code'))!!}
                        <span class="text-danger">{!! $errors->first('title') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        {!!Form::label('description','Description')!!}<span class="required">*</span>
                        {!!Form::textarea('description',null,array('class'=>'form-control','id'=>'description','placeholder'=>'Description'))!!}
                        <span class="text-danger">{!! $errors->first('description') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        {!!Form::label('coupon_code','Coupon Code')!!}<span class="required">*</span>
                        {!!Form::text('coupon_code',null,array('class'=>'form-control','id'=>'coupon_code','placeholder'=>'Coupon Code'))!!}
                        <span class="text-danger">{!! $errors->first('coupon_code') !!}</span>
                    </div>
                    <div class="form-group">
                        <label>Start Date<span class="required">*</span> :</label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                            {!!Form::text('start_date',null,array('class'=>'form-control pull-right','id'=>'start_datepicker'))!!}
                        </div>
                            <span class="text-danger">{!! $errors->first('start_date') !!}</span>
                    </div>
                    <div class="form-group">
                        <label>End Date<span class="required">*</span> :</label>
                        <div class="input-group date">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                            {!!Form::text('end_date',null,array('class'=>'form-control pull-right','id'=>'end_datepicker'))!!}
                        </div>
                            <span class="text-danger">{!! $errors->first('end_date') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        {!!Form::label('discount_value','Discount (In Percent)')!!}<span class="required">*</span> {!!Form::text('discount_value',null,array('class'=>'form-control','id'=>'discount_value','placeholder'=>'Discount in %'))!!}
                        <span class="text-danger">{!! $errors->first('discount_value') !!}</span>
                    </div>
                    <div class="box-footer">
                        {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                    </div>
                    {!!Form::close()!!}
                </div>


                <div class="card-body" id="viewsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('coupons')}}">Back</a>
                    </div> <br><br>
                    <form class="form-horizontal" role="form">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Title:</label>
                                        <p> {{$coupon->title}}</p>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Description:</label>
                                        <p>{{$coupon->description}}</p>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Start Date:</label>
                                        <p> {{$coupon->start_date}}</p>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">End Date:</label>
                                        <p> {{$coupon->end_date}}</p>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Discount Value:</label>
                                        <p> {{$coupon->discount_value}}</p>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</section>
@endsection
@push('scripts')
<script src="{{URL::asset('/public/assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
<script type="text/javascript">

    @if($type == 'edit')
 $('#viewsection').hide();
 $(".click2edit").summernote({ minHeight: '100px' });
 @else
  $('#editsection').hide();
@endif
$('.edit_variation').click(function(e){
    e.preventDefault();
    $('#editsection').show();
    $('#viewsection').hide();
    });

</script>
<script>
    //Date picker
    $('#start_datepicker').datepicker({
      autoclose: true,
      format: 'yyyy/mm/dd'
    })
    $('#end_datepicker').datepicker({
      autoclose: true,
      format: 'yyyy/mm/dd'
    })
    jQuery(document).ready(function() {

        $('.summernote').summernote({
            height: 150, // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            focus: false // set focus to editable area after initializing summernote
        });

        $('.inline-editor').summernote({
            airMode: true
        });

    });

</script>
@endpush