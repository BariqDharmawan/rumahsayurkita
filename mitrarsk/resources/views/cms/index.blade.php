@extends('layouts.app')
@section('title', 'CMS Pages')
@section('content')

    <section class="content-header">
      <h1>
        CMS Pages
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li class="active">CMS Pages</li>
      </ol>
    </section>

    <!-- Start Page Content -->
        <section class="content">
              <div class="box box-default">
                <div class="box-header with-border">
            <div class="card">
    @include('layouts.message')
                <div class="card-body">
                    <h4 class="card-title">CMS Pages</h4>
                    <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>
                    <div class="table-responsive m-t-40">
                        <table id="cmsTable" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Content</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Content</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach($pages as $page)
                                <tr>
                                    <td>{{$page->name}}</td>
                                    <td>{!! $page->content !!}</td>
                                    <td>{{ucfirst(config('constants.STATUS.'.$page->status))}}</td>
                                    <td>
                                        <a href="{{route('editCms', ['slug' => $page->slug])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="Edit Page"><i class="fa fa-pencil"></i></a>                                        &nbsp;&nbsp;&nbsp;
                                        <a href="{{route('viewCms', ['slug' => $page->slug])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom" title="View Page"><i class="fa fa-eye"></i></a></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End PAge Content -->
</section>
@endsection
 @push('scripts')

<script src="{{URL::asset('/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<!-- start - This is for export functionality only -->
<script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
<script type="text/javascript">
    $(function(){
    		var table = $('#cmsTable').DataTable({
		        dom: 'Bfrtip',
		        buttons: [
		            {extend: 'copy',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'csv',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'excel',exportOptions: {columns: 'th:not(:last-child)'}},
                    {extend: 'pdf',exportOptions: {columns: 'th:not(:last-child)'}},
                    //{extend: 'print',exportOptions: {columns: 'th:not(:last-child)'}}
		        ],
                "columnDefs": [
                    {"targets": 3,"orderable": false} ,
                    {"targets": 1, visible: false}],
                "aaSorting": []
		    });

    	});

</script>



@endpush