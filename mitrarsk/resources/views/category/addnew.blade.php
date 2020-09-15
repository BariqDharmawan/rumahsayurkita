@extends('layouts.app')
@section('title', 'Categorydd new ')
@section('content')

        <section class="content-header">
      <h1>
        Add New Category
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('category')}}">Categories</a></li>
        <li class="active">Add New Category</li>
      </ol>
    </section>

    <!-- Start Page Content -->
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                      <div class="box box-default">
                        <div class="box-header with-border">
    @include('layouts.message') {!!Form::open(array('method'=>'post','files'=>true))!!}

                <div class="card-body">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('category')}}">Back</a>
                    </div> <br>

                    <div class="form-group clearfix">
                        {!!Form::label('name','Category Name')!!}<span class="required">*</span> {!!Form::text('name',null,array('class'=>'form-control','id'=>'name','placeholder'=>'Name'))!!}
                        <span class="text-danger">{!! $errors->first('name') !!}</span>
                    </div>


                    <div class="form-group clearfix">
                        {!!Form::label('image','Category Image')!!}<span class="required">*</span><br> {!!Form::file('image',null,array('class'=>'form-control','id'=>'cat_image'))!!}<br>
                        <span class="text-danger">{!! $errors->first('image') !!}</span>

                        <br>
                        <img id="myImg" style="display:none" src="#" alt="your image" width=100>

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
<!-- End PAge Content -->
</div>
@endsection
 @push('scripts')

<script>
    window.addEventListener('load', function() {
document.querySelector('input[type="file"]').addEventListener('change', function()
{

    if (this.files && this.files[0])
    {

        var img = document.querySelector('#myImg'); // $('img')[0]
        img.src = URL.createObjectURL(this.files[0]);
        jQuery('#myImg').show();
// set src to file url
img.onload = imageIsLoaded; // optional onload event listener
}
});
});

</script>








































@endpush