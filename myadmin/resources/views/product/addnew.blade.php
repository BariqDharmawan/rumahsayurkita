@extends('layouts.app')
@section('title', 'Add Product')
@section('content')

    <section class="content-header">
      <h1>
        Add New Product
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('products')}}">Products</a></li>
        <li class="active">Add New Product</li>
      </ol>
    </section>

    <!-- Start Page Content -->
        <section class="content">

              <div class="box box-default">
                <div class="box-header with-border">
            <div class="card">
    @include('layouts.message') {!!Form::open(array('method'=>'post','files'=>true))!!}

                <div class="card-body">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('products')}}">Back</a>
                                    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                    </div> <br>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    {!!Form::label('name','Product Name')!!}<span class="required">*</span> {!!Form::text('name',null,array('class'=>'form-control','id'=>'name','placeholder'=>'Name'))!!}
                                    <span class="text-danger">{!! $errors->first('name') !!}</span>
                                </div>
                                <div class="form-group col-md-6">
                                    {!!Form::label('brand_id','Select Brand')!!}<span class="required">*</span>
                                    <select required name="brand_id" class="form-control">
                            <option value="">Select Brand</option>
                                @foreach ($brands as $brand)
                                     <option value="{{$brand->id}}">{{$brand->name}}</option>
                                                                 @endforeach
                                                </select>
                                    <span class="text-danger">{!! $errors->first('brand_id') !!}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    {!!Form::label('category_id','Select Category')!!}<span class="required">*</span>
                                    <select required name="category_id" class="form-control">
                            <option value="">Select Category</option>
                                            @foreach ($category as $cat)
                                            <option value="{{$cat->id}}">{{$cat->name}}</option>
                                             @endforeach
                                         </select>
                                    <span class="text-danger">{!! $errors->first('category_id') !!}</span>
                                </div>
                                {{-- <div class="form-group col-md-4">
                                    {!!Form::label('price','Price (in {{Config::get('constants.CURRENCY_SYMBOL')}})')!!}<span class="required">*</span> {!!Form::text('price',null,array('class'=>'form-control
                                    decimalInput','id'=>'price','placeholder'=>'Price'))!!}
                                    <span class="text-danger">{!! $errors->first('price') !!}</span>
                                </div> --}}
                                <div class="form-group col-md-4">
                                    {!!Form::label('quantity','Quantity ')!!}<span class="required">*</span> {!!Form::text('quantity',null,array('class'=>'form-control
                                    decimalInput','id'=>'quantity','placeholder'=>'Quantity '))!!}
                                    <span class="text-danger">{!! $errors->first('quantity') !!}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    {!!Form::label('cgst','Cgst (in %)')!!} {!!Form::text('cgst',null,array('class'=>'form-control
                                    decimalInput','id'=>'cgst','placeholder'=>'Cgst'))!!}
                                    <span class="text-danger">{!! $errors->first('cgst') !!}</span>
                                </div>
                                <div class="form-group col-md-4">
                                    {!!Form::label('sgst','Sgst (in %)')!!}{!!Form::text('sgst',null,array('class'=>'form-control
                                    decimalInput','id'=>'sgst','placeholder'=>'Sgst'))!!}
                                    <span class="text-danger">{!! $errors->first('sgst') !!}</span>
                                </div>
                                <div class="form-group col-md-4">
                                    {!!Form::label('igst','Igst (in %)')!!} {!!Form::text('igst',null,array('class'=>'form-control
                                    decimalInput','id'=>'igst','placeholder'=>'Igst'))!!}
                                    <span class="text-danger">{!! $errors->first('igst') !!}</span>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                {!!Form::label('description','Description')!!}
                                {!!Form::textarea('description',null,array('class'=>'form-control summernote','id'=>'t2','placeholder'=>'Product description','rows'=>"5"))!!}
                                <span class="text-danger">{!! $errors->first('description') !!}</span>
                            </div>
                            <div class="form-group clearfix">
                                {!!Form::label('image','Product Image')!!}<span class="required">*</span><br> {!!Form::file('image',null,array('class'=>'form-control','id'=>'image'))!!}<br>
                                <span class="text-danger">{!! $errors->first('image') !!}</span>
                                <br>
                                <img id="myImg" style="display:none" src="#" alt="your image" width=100>
                            </div>


                          {{--   <div class="col-md-12">
                                <div class="box box-primary">
                                    <div class="box-header with-border">
                                      <h3 class="box-title">Product Variation</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group col-md-4">
                                            {!!Form::label('price','Price (in {{Config::get('constants.CURRENCY_SYMBOL')}})')!!}<span class="required">*</span> {!!Form::text('price',null,array('class'=>'form-control
                                            decimalInput','id'=>'price','placeholder'=>'Price'))!!}
                                            <span class="text-danger">{!! $errors->first('price') !!}</span>
                                        </div>
                                        <div class="form-group col-md-4">
                                            {!!Form::label('weight','Weight')!!}<span class="required">*</span> {!!Form::text('weight',null,array('class'=>'form-control
                                            decimalInput','id'=>'weight','placeholder'=>'Weight'))!!}
                                            <span class="text-danger">{!! $errors->first('weight') !!}</span>
                                        </div>
                                    </div>
                                </div>
                            </div> --}}




                            <div class="col-md-12">
                                <div class="box-footer">
                                    {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                {!!Form::close()!!}
            </div>

        </div>

    </div>
</div>
</section>
@endsection
 @push('scripts')
<script>
    $(".decimalInput").on('keypress',function (e) { //if the letter is not digit then display error and don't type anything
        if (e.which != 8 && e.which != 0 && (e.which
        < 48 || e.which> 57)) { if(e.which != 46) return false; } });
    jQuery(document).ready(function() {

        $('.summernote').summernote({
            height: 350, // set editor height
            minHeight: null, // set minimum height of editor
            maxHeight: null, // set maximum height of editor
            focus: false, // set focus to editable area after initializing summernote
            toolbar: [
                ["style", ["style"]],
                ["font", ["bold", "underline", "clear"]],
                ["fontname", ["fontname"]],
                //["color", ["color"]],
            ["para", ["ul", "ol", "paragraph"]], //["table", ["table"]], //["insert", ["link", "picture", "video"]],
            ["view", ["fullscreen","codeview","help"]] ],
        });

        $('.inline-editor').summernote({
            airMode: true
        });

    });
    window.addEventListener('load', function() {

        document.querySelector('#image').addEventListener('change', function()
    {

        if (this.files && this.files[0]) {
            var img = document.querySelector('#myImg'); // $('img')[0]
            img.src = URL.createObjectURL(this.files[0]);
    jQuery('#myImg').show(); // set src to file url
    img.onload = imageIsLoaded; // optional onload event listener
     }
     });
     });

</script>
@endpush