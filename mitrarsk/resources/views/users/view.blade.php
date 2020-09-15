@extends('layouts.app')
@section('title', ucfirst($user->user_role[0]->role).' - ' . $user->name)
@section('content')

     <section class="content-header">
      <h1>
        {{ucfirst($user->user_role[0]->role)}} Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route($user->user_role[0]->role.'s')}}">{{ucfirst($user->user_role[0]->role)}}s</a></li>
        <li class="active">{{ucfirst($user->user_role[0]->role)}} Profile</li>
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
              <div class="box box-default">
                <div class="box-header with-border">
    <div class="row">
        <div class="col-lg-4 col-xlg-3 col-md-5">
            <div class="card">
    @include('layouts.message')
                <div class="card-body">

                    <center class="m-t-30"> <img src="@if($user->profile_picture != null){{URL::asset('/uploads/profiles/'.$user->profile_picture)}} @else {{URL::asset('/images/user-gray.png')}} @endif"
                            class="img-circle" width="150" height="150" />
                        <h4 class="card-title m-t-10">{{$user->name}}</h4>
                    </center>
                </div>
                <div>
                    <hr> </div>
                <div class="card-body"> <small class="text-muted">Email address </small>
                    <h6>{{$user->email}}</h6> <small class="text-muted p-t-30 db">Phone</small>
                    <h6>+{{$city->state->country->phonecode}} - {{$user->mobile_number}}</h6> <small class="text-muted p-t-30 db">Location</small>
                    <h6>{{$user->city}}, {{$city->state->name}}, {{$city->state->country->name}}</h6>
                </div>
            </div>
        </div>
        <div class="col-lg-8 col-xlg-9 col-md-7">
            <div class="card nav-tabs-custom">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs profile-tab" role="tablist">
                    <li class="active"> <a data-toggle="tab" aria-expanded="true" href="#profile" role="tab">Profile</a> </li>
                    @if($type=='edit')
                    <li class="nav-item"> <a data-toggle="tab" aria-expanded="true" href="#settings" role="tab">Settings</a> </li>
                    @if($user->user_role[0]->role == 'driver')
                    {{-- <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#documents" role="tab">Documents</a> </li> --}}
				      <li class="nav-item"> <a data-toggle="tab" aria-expanded="true" href="#changepassword" role="tab">Change Password</a> </li>
                    @endif
                    @endif
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane active" id="profile" role="tabpanel">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Full Name</strong>
                                    <br>
                                    <p class="text-muted">{{$user->name}}</p>
                                </div>
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Mobile</strong>
                                    <br>
                                    <p class="text-muted">+{{$city->state->country->phonecode}} - {{$user->mobile_number}}</p>
                                </div>
                                <div class="col-md-3 col-xs-6 b-r"> <strong>Email</strong>
                                    <br>
                                    <p class="text-muted">{{$user->email}}</p>
                                </div>
                                <div class="col-md-3 col-xs-6"> <strong>Location</strong>
                                    <br>
                                    <p class="text-muted">{{$user->city}}, {{$city->state->name}}, {{$city->state->country->name}}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="m-t-30">
                                @if($user->user_role[0]->role == 'driver')
                                {{-- <small class="text-muted">Registration Number</small>
                                <h5>{{$user->registration_number}}</h5>
                                <small class="text-muted">Vehicle Type</small>
                                <h5>rtyyyty</h5>
                                <small class="text-muted">Vehicle Manufacturer</small>
                                <h5>{{$user->vehicle_manufacturer}}</h5>
                                <small class="text-muted">Vehicle Model</small>
                                <h5>{{$user->vehicle_model}}</h5>
                                <small class="text-muted">Number Plate</small>
                                <h5>{{$user->number_plate}}</h5> --}}
                                @endif
                                <small class="text-muted p-t-30 db">Registered On</small>
                                <h5>{{date('Y, M d', strtotime($user->created_at))}}</h5>
                                <small class="text-muted p-t-30 db">Device Type</small>
                                <h5>{{ucfirst($user->device_type)}}</h5>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="settings" role="tabpanel">
                        <div class="card-body">
                            <form class="form-horizontal form-material" method="post" action="{{route('update'.ucfirst($user->user_role[0]->role), ['id'=>$user->id])}}">
                                {{csrf_field()}} @if($user->user_role[0]->role == 'driver')
                                <div class="form-group">
                                    {{-- <div class="col-md-12">
                                        <label class="col-md-6" for="val-verify">Verified</label>
                                        <input type="checkbox" @if($user->is_verified == 1) checked @endif class="js-switch"
                                        data-color="#f62d51" name="val-verify" data-size="small" />
                                    </div> --}}
                                </div>


                                {{-- <div class="form-group">
                                    <div class="col-md-12">
                                        <label class="col-md-6" for="val-idverify">Identity Verified</label>
                                        <input type="checkbox" @if($user->identity_verification == 1) checked @endif class="js-switch"
                                        data-color="#f62d51" name="val-idverify" data-size="small" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label class="col-md-6" for="val-vhverify">Vehicle Verified</label>
                                        <input type="checkbox" @if($user->vehicle_verification == 1) checked @endif class="js-switch"
                                        data-color="#f62d51" name="val-vhverify" data-size="small" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label class="col-md-6" for="val-docverify">Document Verified</label>
                                        <input type="checkbox" @if($user->document_verification == 1) checked @endif class="js-switch"
                                        data-color="#f62d51" name="val-docverify" data-size="small" />
                                    </div>
                                </div> --}}
                                @endif
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label class="col-md-6" for="val-block">Block</label>
                                        <input type="checkbox" @if($user->status == 'IN') checked @endif class="js-switch"
                                        data-color="#f62d51" data-size="small" name="val-block" id="blockUser"/>
                                    </div>
                                </div>
                                @if(isset($blockReason->id))
                                <div class="form-group">
                                    <label class="col-md-12">Block/Unblock Reason</label>
                                    <div class="col-md-12 m-t-30">
                                        <textarea rows="5" id="blockMsg" name="val-msg" class="form-control form-control-line" placeholder="Provide your reason to block/unblock this {{$user->user_role[0]->role}}">{{$blockReason->reason}}</textarea>
                                    </div>
                                </div>
                                @endif
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    {{-- <div class="tab-pane" id="documents" role="tabpanel">

                        <div class="card-body">
                            @foreach($user->user_doc as $doc) @if($doc->docType->document_type != 'Other')
                            <div class="row">
                                <div class="col-md-12"><strong>{{$doc->docType->document_type}}</strong></div>
                                <div class="col-md-12">
                                    <a href="{{URL::asset('/uploads/documents/'.$user->id.'/'.$doc->document_name)}}" download>
                                                    @if(in_array(pathinfo(URL::asset('/images/documents/'.$doc->document_name), PATHINFO_EXTENSION), ['jpg', 'jpeg', 'png', 'svg', 'gif']))
                                                        <iframe class="m-t-10" src="{{URL::asset('/uploads/documents/'.$user->id.'/'.$doc->document_name)}}" width="100%" height="100%" ></iframe>
                                                    @else
                                                        <span>{{$doc->document_name}}</span>
                                                    @endif
                                                </a>
                                </div>
                            </div>
                            <hr> @endif @endforeach
                            <div class="row" id="otherDocs" @if(count($otherDocs) <=0 ) style="display: none" @endif>
                                <div class="col-md-12"><strong>Other Documents</strong></div>
                                @foreach($otherDocs as $other)
                                <div class="col-md-12 m-t-20">
                                    <a href="{{URL::asset('/uploads/documents/'.$user->id.'/'.$other->document_name)}}" download>
                                                @if(in_array(pathinfo(URL::asset('/uploads/documents/'.$user->id.'/'.$other->document_name), PATHINFO_EXTENSION), ['jpg', 'jpeg', 'png', 'svg', 'gif']))
                                                    <iframe class="m-t-10" src="{{URL::asset('/uploads/documents/'.$user->id.'/'.$other->document_name)}}" width="80%" height="100%" ></iframe>
                                                @else
                                                    <span>{{$doc->document_name}}</span>
                                                @endif
                                            </a>
                                    <a id="del_{{$other->id}}" href="javascript:void(0)" class="toolTip m-l-20 deleteOtherDoc" data-toggle="tooltip" data-placement="bottom"
                                        title="Delete">Delete</a></div>
                                @endforeach
                            </div>
                            <form class="form-horizontal form-valide form-material m-t-20" method="post" action="{{route('addDoc',['id'=>$user->id])}}"
                                enctype="multipart/form-data">
                                {{csrf_field()}}
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div id="uploadDoc">
                                            <a id="uploadOther" href="javascript:void(0)" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="Upload Other Documents">Add Other Documents</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 m-t-20">
                                    <button type="submit" style="display: none;" id="uploadBtn" class="btn btn-success waves-effect waves-light m-r-10">Upload</button>
                                </div>
                            </form>
                        </div>
                    </div> --}}
                    <div class="tab-pane" id="changepassword" role="tabpanel">

                        <div class="card-body">
                            <form method="POST" action="{{route('resetDriverPassword',['id'=>$user->id])}}" novalidate class="form-horizontal">
                                {{ csrf_field() }}
                                <div class="card-body">



                                    <div class="form-group clearfix">
                                        {!!Form::label('new_password','New Password')!!}<span class="required">*</span><br> {!!Form::password('new_password',array('class'=>'form-control','id'=>'cpassword',
                                        'placeholder'=>'New Password',"autofill"=>false))!!}
                                        <br>
                                        <span class="text-danger">{!! $errors->first('new_password') !!}</span>
                                    </div>
                                    <div class="form-group clearfix">
                                        {!!Form::label('change_password','Confirm New Password')!!}<span class="required">*</span><br>{!!Form::password('change_password',array('class'=>'form-control','id'=>'cpassword',
                                        'placeholder'=>'Confirm New Password',"autofill"=>false))!!}
                                        <br>

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
    <!-- End Page Content -->
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

		})

</script>





@endpush