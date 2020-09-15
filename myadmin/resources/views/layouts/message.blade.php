@if(Session::has('success'))

    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-success alert-dismissible" role="alert">
                <i class="fa fa-check"></i>
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <strong>Success!</strong> {{Session::get("success")}}
            </div>
        </div>
    </div>

@elseif(Session::has('error'))

    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <i class="fa fa-check"></i>
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <strong>Alert!</strong> {{Session::get("error")}}
            </div>
        </div>
    </div>

@endif