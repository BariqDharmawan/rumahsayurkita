@extends('layouts.app')
@section('title', ucfirst($type).' Slide')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Slider
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Sliders</li>
      </ol>
    </section>


        <!-- Start Page Content -->
        <section class="content">
              <div class="box box-default">
                <div class="box-header with-border">
                    @include('layouts.message')
                    <div class="card-body">

                        @if($type == 'add')
                            <h4 class="card-title">Add Slide Image</h4>
                        @elseif($type == 'edit')
                            <h4 class="card-title">Edit Slide Image</h4>
                        @endif

                        @if ($errors->any())
						    <div class="alert alert-danger">
						        <ul>
						            @foreach ($errors->all() as $error)
						                <li>{{ $error }}</li>
						            @endforeach
						        </ul>
						    </div>
						@endif

                        <form class="form-material m-t-40 row form-valide" method="post" action="{{$url}}" enctype="multipart/form-data">

                        	{{csrf_field()}}
                            <div class="form-group col-md-6 m-t-20">
                                <label>Slide Image</label>
                                <input type="hidden" name="image_exists" id="image_exists" value="1">

                                @if($type == 'add' || ($type == 'edit' && $slider->image == null))
                                    <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                       {{--  <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Select file(Allowed Extensions -  .jpg, .jpeg, .png, .gif, .svg)</span> <span class="fileinput-exists">Change</span>
                                        <input type="file" name="image"> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> --}}
                                        <input type="file" name="image">
                                    </div>
                                @elseif($type == 'edit')
                                    <br>
                                    <div id="sliderImage">
                                        <img src="@if($slider->image != null && file_exists(public_path('/uploads/sliders/'.$slider->image))){{URL::asset('/uploads/sliders/'.$slider->image)}}@endif" width="50%"" />
                                        &nbsp;&nbsp;&nbsp;<a id="changeImage" href="javascript:void(0)" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="Delete">Change</a>
                                    </div>
                                @endif
                            </div>
							<div class="col-md-12">
	                            <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Save</button>
	                            <a href="{{route('sliders')}}" class="btn btn-inverse waves-effect waves-light">Cancel</a>
	                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
@endsection
@push('scripts')
    <script type="text/javascript">
        $(function(){

            $('#changeImage').click(function(){
                $('#sliderImage').parent().append('<div class="fileinput fileinput-new input-group" data-provides="fileinput"><input type="file" name="image"></div>');
                $('.tooltip').tooltip('hide');
                $('#sliderImage').remove();
                $('#image_exists').val(0);
            });

        });
    </script>
@endpush