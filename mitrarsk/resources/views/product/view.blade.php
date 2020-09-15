@extends('layouts.app')
@section('title', $Product->name)
@section('content')

    <section class="content-header">
      <h1>
        {{$Product->name}}
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('products')}}">Products</a></li>
        <li class="active">{{$Product->name}}</li>
      </ol>
    </section>

    <!-- Start Page Content -->

    <section class="content">

                <div class="card">
                @include('layouts.message')
                <div class="card-body" id="editsection">

        <div class="box box-default">
            <div class="box-header with-border">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('products')}}">Back</a>
                    </div> <br> {!!Form::model($Product, array('route'=>array('editProduct',request()->route('id')),'method'=>'post','files'=>true))!!}
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group clearfix">
                                        {!!Form::label('name','Name')!!}<span class="required">*</span> {!!Form::text('name',null,array('class'=>'form-control','id'=>'name','placeholder'=>'Name'))!!}
                                        <span class="text-danger">{!! $errors->first('name') !!}</span>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group clearfix">
                                        {!!Form::label('brand_id','Select Brand')!!}<span class="required">*</span>
                                        <select required name="brand_id" class="form-control">
                                    <option value="">Select Brand</option>
                                     @foreach ($brands as $brand)
                                    <option value="{{$brand->id}}" @if($Product->brand_id==$brand->id) selected @endif>{{$brand->name}}</option>
                                     @endforeach</select>
                                        <span class="text-danger">{!! $errors->first('brand_id') !!}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    {!!Form::label('category_id','Select Category')!!}<span class="required">*</span>
                                    <select required name="category_id" class="form-control">
                                    <option value="">Select Category</option>
                                    @foreach ($category as $cat)
                                    <option value="{{$cat->id}}" @if($Product->category_id==$cat->id) selected @endif>{{$cat->name}}</option>
                                        @endforeach</select>
                                    <span class="text-danger">{!! $errors->first('category_id') !!}</span>
                                </div>
                                {{-- <div class="form-group col-md-4">
                                    @php $curr = "Price (in ".Config::get('constants.CURRENCY_SYMBOL').")" @endphp
                                    {!!Form::label('price',$curr)!!}<span class="required">*</span> {!!Form::text('price',null,array('class'=>'form-control
                                    decimalInput','id'=>'price','placeholder'=>'Price'))!!}
                                    <span class="text-danger">{!! $errors->first('price') !!}</span>
                                </div> --}}
                                <div class="form-group col-md-6">
                                    {!!Form::label('quantity','Quantity ')!!}<span class="required">*</span> {!!Form::text('quantity',null,array('class'=>'form-control
                                    decimalInput','id'=>'quantity','placeholder'=>'Stock quantity'))!!}
                                    <span class="text-danger">{!! $errors->first('quantity') !!}</span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-3">
                                    {!!Form::label('cgst','Cgst (in %) ')!!}<span class="required">*</span> {!!Form::text('cgst',null,array('class'=>'form-control
                                    decimalInput','id'=>'cgst','placeholder'=>'Cgst'))!!}
                                    <span class="text-danger">{!! $errors->first('cgst') !!}</span>
                                </div>
                                <div class="form-group col-md-3">
                                    {!!Form::label('sgst','Sgst (in %)')!!}<span class="required">*</span> {!!Form::text('sgst',null,array('class'=>'form-control
                                    decimalInput','id'=>'sgst','placeholder'=>'Sgst'))!!}
                                    <span class="text-danger">{!! $errors->first('sgst') !!}</span>
                                </div>
                                <div class="form-group col-md-3">
                                    {!!Form::label('igst','Igst (in %)')!!}<span class="required">*</span> {!!Form::text('igst',null,array('class'=>'form-control
                                    decimalInput','id'=>'igst','placeholder'=>'Igst'))!!}
                                    <span class="text-danger">{!! $errors->first('igst') !!}</span>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="col-md-12">Product Status</label><br><br>
                                    <input type="checkbox" @if($type=='edit' ) @if(isset($Product) && $Product->status == 'AC')
                                    checked @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small"
                                    name="val-status"/>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label class="col-md-12">Featured Product</label><br><br>
                                    <input type="checkbox" @if($type=='edit' ) @if(isset($Product) && $Product->is_featured == '1')
                                    checked @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small"
                                    name="is_featured"/>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="col-md-12">Quick Grabs</label><br><br>
                                    <input type="checkbox" @if($type=='edit' ) @if(isset($Product) && $Product->is_quick_grab == '1')
                                    checked @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small"
                                    name="is_quick_grab"/>
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="col-md-12">Offered Product</label><br><br>
                                    <input type="checkbox" @if($type=='edit' ) @if(isset($Product) && $Product->is_offered == '1')
                                    checked @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small"
                                    name="is_offered"/>
                                </div>
                            </div>

                            <div class="form-group clearfix">
                                {!!Form::label('description','Description')!!} {!!Form::textarea('description',null,array('class'=>'form-control summernote','id'=>'t2','placeholder'=>'Product
                                description'))!!}
                                <span class="text-danger">{!! $errors->first('description') !!}</span>
                            </div>
                            <div class="form-group clearfix">
                                {!!Form::label('image','Product Image')!!}<span class="required">*</span><br> {!!Form::file('image',null,array('class'=>'form-control','id'=>'image'))!!}
                                <br><br>
                                <img id="myImg" src="{!! URL::to('public/uploads/products/'.$Product->image) !!}" alt="" width="100">
                                <span class="text-danger">{!! $errors->first('image') !!}</span>
                            </div>
                            <div class="box-footer">
                                {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                            </div>
                        </div>
                    </div>
                    {!!Form::close()!!}
                </div>
            </div>
</div>
</div>

        <div class="box box-default">
            <div class="box-header with-border">

    <div class="row">
        <div class="col-sm-12">
            <div class="card">
    @include('layouts.message')
                <div class="card-body" id="viewsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('products')}}">Back</a>
                    </div> <br><br>
                    <form class="form-horizontal" role="form">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Product Name:</label>
                                        <div class="col-md-9">
                                            <p> {{$Product->name}} </p>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Brand Name:</label>
                                        <div class="col-md-9">
                                            @foreach ($brands as $brand) @if($Product->brand_id==$brand->id) {{$brand->name}} @endif @endforeach

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Category Name:</label>
                                        <div class="col-md-9">
                                            @foreach ($category as $cat) @if($Product->category_id==$cat->id) {{$cat->name}} @endif @endforeach

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Desription:</label>
                                        <div class="col-md-9">
                                            <div class="click2edit m-b-40">
                                                {!! $Product->description !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Price (in {{Config::get('constants.CURRENCY_SYMBOL')}}):</label>
                                        <div class="col-md-9">
                                            {{$Product->price}}
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Product Featured:</label>
                                        <div class="col-md-9">
                                            @if($Product->is_featured==1)
                                                <p>True</p>
                                            @else
                                                <p>False</p>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Product Quick Grabs:</label>
                                        <div class="col-md-9">
                                            @if($Product->is_quick_grab==1)
                                                <p>True</p>
                                            @else
                                                <p>False</p>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Product Offered:</label>
                                        <div class="col-md-9">
                                            @if($Product->is_offered==1)
                                                <p>True</p>
                                            @else
                                                <p>False</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Quantity:</label>
                                        <div class="col-md-9">
                                            {{$Product->quantity}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Cgst (in %):</label>
                                        <div class="col-md-9">
                                            {{$Product->cgst}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Sgst (in %):</label>
                                        <div class="col-md-9">
                                            {{$Product->sgst}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Igst (in %):</label>
                                        <div class="col-md-9">
                                            {{$Product->igst}}
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-3">Product Image:</label>
                                        <div class="col-md-9">
                                            @if($Product->image)
                                            <img src="{!! URL::to('public/uploads/products/'.$Product->image) !!}" alt="" width="100">                                            @else
                                            <p>Image not added</p>
                                            @endif
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
                                            <button type="submit" class="btn btn-danger edit_product"> <i class="fa fa-pencil"></i> Edit</button>

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
            $(".click2edit").summernote({
                minHeight: '100px'
            });
          @else
        $('#editsection').hide();
        @endif
$('.edit_product').click(function(e){
  e.preventDefault();
$('#editsection').show();
$('#viewsection').hide();
});

</script>
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
              ["para", ["ul", "ol", "paragraph"]],
        //["table", ["table"]],
        //["insert", ["link", "picture", "video"]],
            ["view", ["fullscreen","codeview", "help"]] ],
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
    // set src to file url
           img.onload = imageIsLoaded; // optional onload event listener
    }
    });
    });

</script>





















































































































@endpush