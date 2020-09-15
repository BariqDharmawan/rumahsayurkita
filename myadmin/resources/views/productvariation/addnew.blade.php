@extends('layouts.app')
@section('title', 'Add Variation')
@section('content')

        <section class="content-header">
      <h1>
        Add New Product Variation
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('variations')}}">Variations</a></li>
        <li class="active">Add New Variation</li>
      </ol>
    </section>

    <!-- Start Page Content -->
        <section class="content">
    <div class="row">
        <div class="col-sm-6">
              <div class="box box-default">
                <div class="box-header with-border">
            <div class="card">
    @include('layouts.message') {!!Form::open(array('method'=>'post','files'=>true))!!} {{ csrf_field() }}

                <div class="card-body">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('variations')}}">Back</a>
                    </div> <br>
                    <div class="form-group clearfix">
                        {!!Form::label('product_id','Select Products')!!}<span class="required">*</span><br>
                        <select required name="product_id" class="form-control">
                                                    <option value="">Select Product</option>
                                                     @foreach ($products as $product)

                                                <option value="{{$product->id}}" @php if(isset($_GET['id'])){
                                                    if($_GET['id']==$product->id){
                                                    echo "selected";
                                                }
                                                } @endphp>{{$product->name}}</option>
                                                         @endforeach
                                                    </select>


                        <span class="text-danger">{!! $errors->first('product_id') !!}</span>
                    </div>
             

                    <div class="form-group clearfix">
                        {!!Form::label('unit_id','Select Unit')!!}<span class="required">*</span><br>
                        <select required name="unit_id" class="form-control ">
                            <option value="">Select Unit</option>
                                @foreach ($units as $unit)

                                <option value="{{$unit->id}}">{{$unit->name}}</option>
                                    @endforeach
                            </select>


                        <span class="text-danger">{!! $errors->first('unit_id') !!}</span>
                    </div>

                           <div class="form-group clearfix">
                        {!!Form::label('weight','Weight')!!}<span class="required">*</span> {!!Form::text('weight',null,array('class'=>'form-control','id'=>'weight','placeholder'=>'Weight'))!!}
                        <span class="text-danger">{!! $errors->first('weight') !!}</span>
                    </div>
   

   
                    <div class="form-group clearfix">
                                        @php $curr = "Price (in ".Config::get('constants.CURRENCY_SYMBOL').")" @endphp
                        {!!Form::label('price',$curr)!!}<span class="required">*</span> {!!Form::text('price',null,array('class'=>'form-control','id'=>'price','placeholder'=>'Price'))!!}
                        <span class="text-danger">{!! $errors->first('price') !!}</span>
                        <span><i>Jangan Gunakan tanda titik/koma</i></span>
                    </div>


                    <div class="form-group clearfix">
                                        @php $curr = "Special Price (in ".Config::get('constants.CURRENCY_SYMBOL').")" @endphp
                        {!!Form::label('special_price',$curr)!!}<span class="required">*</span> {!!Form::text('special_price',null,array('class'=>'form-control','id'=>'special_price','placeholder'=>'Special Price'))!!}
                        <span class="text-danger">{!! $errors->first('special_price') !!}</span>
                        <span><i>Jangan Gunakan tanda titik/koma</i></span>
                    </div>
                    
                    <!-- /.box-body -->
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

        // $("#price").keyup(function(e){
        //     if((e.keyCode === 190) || (e.keyCode === 188)){
        //         alert("Jangan menggunakan tanda titik ataupun koma!");
        //     }
        // });

        // $("#special_price").keyup(function(e){
        //     if((e.keyCode === 190) || (e.keyCode === 188)){
        //         alert("Jangan menggunakan tanda titik ataupun koma!");
        //     }
        // });
    });

    
</script>
















@endpush