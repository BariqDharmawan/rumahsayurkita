@extends('layouts.app')
@section('title', 'Add Variation')
@section('content')

@push('styles')
<link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">
<link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
@endpush
    <section class="content-header">
      <h1>
        Setting
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li class="active">Setting</li>
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
                    {!!Form::open(array('method'=>'post','files'=>true))!!}
                        {{ csrf_field() }}
                        <div class="card-body">
                            <div class="form-group clearfix">
                                {!!Form::label('delivery_charges','Ongkos Kirim')!!}<span class="required">*</span>
                                {!!Form::text('delivery_charges',$setting[0]->rule_value,array('class'=>'form-control','id'=>'delivery_charges','placeholder'=>'Delivery Charges'))!!}
                                <span class="text-danger">{!! $errors->first('delivery_charges') !!}</span>
                            </div>
                            <div class="form-group clearfix">
                                {!!Form::label('minimum_order_amount','Minimum Order')!!}<span class="required">*</span>
                                {!!Form::text('minimum_order_amount',$setting[1]->rule_value,array('class'=>'form-control','id'=>'minimum_order_amount','placeholder'=>'Minimum Order Amount'))!!}
                                <span class="text-danger">{!! $errors->first('minimum_order_amount') !!}</span>
                            </div>
                            <div class="box-footer">
                                {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                            </div>
                        </div>
                        {!!Form::close()!!}
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
<script src="{{URL::asset('/public/assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
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