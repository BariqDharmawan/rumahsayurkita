@extends('layouts.app')
@section('title', 'Category - ' . $Category->name)
@section('content')

    <section class="content-header">
      <h1>
        {{$Category->name}}
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('category')}}">Categories</a></li>
        <li class="active">{{$Category->name}}</li>
      </ol>
    </section>

    <!-- Start Page Content -->

        <section class="content">
            <div class="row">
                <div class="col-sm-6">
                    <div class="card">
                      <div class="box box-default">
                        <div class="box-header with-border">
                    @include('layouts.message')


                <div class="card-body" id="editsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('category')}}">Back</a>
                    </div>

                    {!!Form::model($Category, array('route'=>array('editCategory',request()->route('id')),'method'=>'post','files'=>true))!!}

                    <div class="card-body">

                        <div class="form-group clearfix">
                            {!!Form::label('name','Name')!!}<span class="required">*</span> {!!Form::text('name',null,array('class'=>'form-control','id'=>'name','placeholder'=>'Name'))!!}
                            <span class="text-danger">{!! $errors->first('name') !!}</span>
                        </div>


                        <div class="form-group clearfix">
                            {!!Form::label('image','Category Image')!!}<span class="required">*</span><br> {!!Form::file('image',null,array('class'=>'form-control','id'=>'image'))!!}<br><br>
                            <br>
                            <img id="myImg" src="{!! URL::to('public/uploads/categories/'.$Category->image) !!}" alt="" width="100">
                            <span class="text-danger">{!! $errors->first('image') !!}</span>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4">Status</label>
                            <input type="checkbox" @if($type=='edit' ) @if(isset($Category) && $Category->status == 'AC')
                            checked @endif @else checked @endif class="js-switch" data-color="rgb(26, 180, 27)" data-size="small"
                            name="val-status"/>
                        </div>


                        <!-- /.box-body -->
                        <div class="box-footer">
                            {!! Form::submit('Submit', ['class' => 'btn btn-primary']) !!}
                        </div>
                    </div>
                    {!!Form::close()!!}

                </div>


                <div class="card-body" id="viewsection">
                    <div class="pull-right">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('category')}}">Back</a>
                    </div><br><br>
                    <form class="form-horizontal" role="form">
                        <div class="form-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Category Name:</label>
                                        <div class="col-md-6">
                                            <p class="form-control-static"> {{$Category->name}} </p>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-12">
                                    <div class="form-group row">
                                        <label class="control-label text-left col-md-6">Category Image:</label>
                                        <div class="col-md-6">
                                            <img src="{!! URL::to('public/uploads/categories/'.$Category->image) !!}" alt="" width="100">
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
                                            <button type="submit" class="btn btn-danger edit_category"> <i class="fa fa-pencil"></i> Edit</button>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6"> </div>
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

    <!-- End PAge Content -->

@endsection
 @push('scripts')
<script type="text/javascript">
    @if($type == 'edit')
    $('#viewsection').hide();
     $(".click2edit").summernote({ minHeight: '100px' });
      @else
      $('#editsection').hide();
    @endif
$('.edit_category').click(function(e){
e.preventDefault();
$('#editsection').show();
$('#viewsection').hide();
});

        window.edit = function() {
            $(".click2edit").summernote({
                minHeight: '100px'
            });
            $('#edit').hide();
        }

</script>
<script>
    window.addEventListener('load', function() {
document.querySelector('input[type="file"]').addEventListener('change', function()
{

    if (this.files && this.files[0])
    {

        var img = document.querySelector('#myImg'); // $('img')[0]
        img.src = URL.createObjectURL(this.files[0]);
// set src to file url
img.onload = imageIsLoaded; // optional onload event listener
}
});
});

</script>






























@endpush