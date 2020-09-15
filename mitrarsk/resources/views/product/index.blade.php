@extends('layouts.app')
@section('title', 'All Products')
@section('content')

    <section class="content-header">
      <h1>
        Products
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li class="active">Products</li>
      </ol>

    </section>


    <!-- Start Page Content -->
        <section class="content">

              <div class="box box-default">
                <div class="box-header with-border">
                    @include('layouts.message')
                    <h4 class="card-title">All Products</h4>
                    <div id="main">
                    </div>
                    <div class="box-tools pull-right">
                        <a class="btn waves-effect waves-light btn-success" href="{{route('addnewProduct')}}">Add New</a></div>

                    <div class="table-responsive m-t-40">
                        <table id="cmsTable" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    {{-- <th><input type="checkbox" id="ckbCheckAll" /></th> --}}
                                    <th></th>
                                    <th style="width: 20%">Title</th>
                                    <th style="width: 20%">Category Name</th>
                                    <th style="width: 15%">Brand</th>
                                    <th style="width: 10%">Quantity</th>
                                    <th style="width: 10%">Image</th>
                                    <th style="width: 10%">Featured</th>
                                    <th style="width: 10%">Status</th>
                                    <th style="width: 20%">Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    {{-- <th><button id="delete_all" type="button" data-action='products' class="btn btn-danger">Delete</button></th> --}}
                                    <th></th>
                                    <th style="width: 20%">Title</th>
                                    <th style="width: 20%">Category Name</th>
                                    <th style="width: 15%">Brand</th>
                                    <th style="width: 10%">Quantity</th>
                                    <th style="width: 10%">Image</th>
                                    <th style="width: 10%">Featured</th>
                                    <th style="width: 10%">Status</th>
                                    <th style="width: 20%">Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                                @foreach($products as $product)
                                <tr>
                                    {{-- <td><input type="checkbox" class="checkBoxClass" name='all_ids[]' value='{{$product->id}}'
                                        /></td>--}}
                                        <td></td>
                                        <td>{{$product->name}}</td>
                                        <td>@foreach ($category as $cat) @if($product->category_id==$cat->id) {{$cat->name}} @endif @endforeach</td>
                                        <td>@foreach ($brands as $brand) @if($product->brand_id==$brand->id) {{$brand->name}} @endif @endforeach</td>
                                        <td>{{$product->quantity}}</td>
                                        <td><div class="cat-img" style="width: 50px; height: 50px;"><img width="100%" height="100%" src="{{url("public/uploads/products").'/'.$product->image}}"></div></td>
                                        <td>{{($product->is_featured==1) ? "True" : "False"}}</td>
                                    <td>{{ucfirst(config('constants.STATUS.'.$product->status))}}</td>
                                    <td>
                                        <a href="{{route('editProduct', ['id' => $product->id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom"
                                            title="Edit Product">Edit</a><br>
                                            <a href="{{route('viewProduct', ['id' => $product->id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom"
                                            title="View Product">View</a><br>
                                            <a href="#!" class="model_img delete" id="sa-warning" data-id="{{$product->id}}" data-toggle="tooltip" data-placement="bottom"
                                            title="Delete Product">Delete</a><br>
                                            <a href="{{route('addnewVariations', ['id' => $product->id])}}" class="toolTip" data-toggle="tooltip" data-placement="bottom"
                                            title="Add Variation">Add Variation</i></a>
                                    </td>

                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
        </div>
    </div>
</section>
    <!-- End PAge Content -->

@endsection
 @push('scripts')

<script src="{{URL::asset('/public/plugins/datatables/jquery.dataTables.min.js')}}"></script>
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
                    // {extend: 'print',exportOptions: {columns: 'th:not(:last-child)'}}
		        ],
                "columnDefs": [
                    {"targets": 3,"orderable": false},
                    {"targets":0,"orderable": false}
                    ],
                "aaSorting": []
		    });

        });


        $(document).on('click', '.delete', function() {
            var con =confirm('Are you sure to delete!!');
            if(con) {
                $.ajax({
                    method:'post',
                    url: '{{URL::to("/admin/product/destroy") }}',
                    data: {
                        '_token': "{{csrf_token()}}",
                        'id': $(this).data('id')
            },
            success: function(data) {
                if(data.status=='success')
                {
                    window.location.reload();
                $('#main').html('<div class="alert alert-success col-ssm-12">' + data.message + '</div>');
                }
                else{
                    $('.item' + $('.did').text()).remove();
                    $('#main').html('<div class="alert alert-danger col-ssm-12">' + data.message + '</div>'); } } }); }
                    return false;
        });

</script>



















@endpush