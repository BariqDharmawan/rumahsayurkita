@extends('layouts.app')
@section('title', 'Edit Variation')
@section('content')

    <section class="content-header">
      <h1>
        Product Variation
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('variations')}}">Variations</a></li>
        <li class="active">{{$Product->weight}}-{{$Product->unitname}}</li>
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
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('variations')}}">Back</a>
                    </div> <br> {!!Form::model($Product, array('route'=>array('editVariations',request()->route('id')),'method'=>'post','files'=>true))!!}
                    <div class="form-group clearfix">
                        {!!Form::label('product_id','Select Products')!!}<span class="required">*</span><br>
                        <select required name="product_id" class="form-control">
                                    <option value="">Select Product</option>
                                     @foreach ($products as $product)

                                <option value="{{$product->id}}" @if($product->id==$Product->product_id) selected @endif >{{$product->name}}</option>
                                         @endforeach
                                    </select>


                        <span class="text-danger">{!! $errors->first('product_id') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        {!!Form::label('weight','Weight')!!}<span class="required">*</span> {!!Form::text('weight',null,array('class'=>'form-control','id'=>'weight','placeholder'=>'Weight'))!!}
                        <span class="text-danger">{!! $errors->first('weight') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        @php $curr = "Price (in ".Config::get('constants.CURRENCY_SYMBOL').")" @endphp
                        {!!Form::label('price',$curr)!!}<span class="required">*</span> {!!Form::text('price',null,array('class'=>'form-control','id'=>'price','placeholder'=>'Price'))!!}
                        <span class="text-danger">{!! $errors->first('price') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        {!!Form::label('unit_id','Select Unit')!!}<span class="required">*</span><br>
                        <select required name="unit_id" class="form-control ">
                                                            <option value="">Select Unit</option>
                                                             @foreach ($units as $unit)

                                                        <option value="{{$unit->id}}" @if($unit->id==$Product->unit_id) selected @endif >{{$unit->name}}</option>
                                                                 @endforeach
                                                            </select>


                        <span class="text-danger">{!! $errors->first('unit_id') !!}</span>
                    </div>
                    <div class="form-group clearfix">
                        @php $curr = "Special Price (in ".Config::get('constants.CURRENCY_SYMBOL').")" @endphp
                        {!!Form::label('special_price',$curr)!!}<span class="required">*</span> {!!Form::text('special_price',null,array('class'=>'form-control','id'=>'special_price','placeholder'=>'Special Price'))!!}
                        <span class="text-danger">{!! $errors->first('special_price') !!}</span>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4">Status</label>
                        <input type="checkbox" @if($type=='edit' ) @if(isset($Product) && $Product->status == 'AC') checked
                        @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small" name="val-status"/>
                    </div>
                    <div class="box-footer">
                        {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                    </div>

                    {!!Form::close()!!}

                </div>


                <div class="card-body" id="viewsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('variations')}}">Back</a>
                    </div> <br><br>
                    <form class="form-horizontal" role="form">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Product Weight:</label>
                                        <div class="col-md-6">
                                            <p> {{$Product->weight}}-{{$Product->unitname}}</p>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Product Price (in {{Config::get('constants.CURRENCY_SYMBOL')}}):</label>
                                        <div class="col-md-6">
                                            <p> {{$Product->price}}</p>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Product Special Price (in {{Config::get('constants.CURRENCY_SYMBOL')}}):</label>
                                        <div class="col-md-6">
                                            <p> {{$Product->special_price}}</p>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Product Name:</label>
                                        <div class="col-md-6">
                                            @foreach ($products as $product) @if($product->id==$Product->product_id)
                                            <p> {{$product->name}} </p>

                                            @endif @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Unit Name:</label>
                                        <div class="col-md-6">
                                            @foreach ($units as $unit) @if($unit->id==$Product->unit_id)
                                            <p> {{$unit->name}}</p> @endif @endforeach

                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>

                        </div>
                        {{--
                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button type="submit" class="btn btn-danger edit_variation"> <i class="fa fa-pencil"></i> Edit</button>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div> --}}
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
    jQuery(document).ready(function() {

        $('.summernote').summernote({
            height: 350, // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            focus: false // set focus to editable area after initializing summernote
        });

        $('.inline-editor').summernote({
            airMode: true
        });

    });

</script
@endpush