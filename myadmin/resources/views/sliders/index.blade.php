@extends('layouts.app')
@section('title', 'Sliders')

@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Slider
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li class="active">Sliders</li>
      </ol>
    </section>

        <!-- Start Page Content -->
        <section class="content">
              <div class="box box-default">
                <div class="box-header with-border">
                    @include('layouts.message')
                        <h4 class="box-title">Sliders</h4>
                        <div class="box-tools pull-right">
                            <a href="{{route('addnewSlider')}}" class="btn dt-button">Add Slider</a>
                        </div>

                        <div class="box-body">
                            <table id="slidersTable" class="table table-bordered table-hover" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        {{-- <th><input type="checkbox" id="ckbCheckAll" /></th> --}}
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        {{-- <th><button id="delete_all" type="button" data-action='sliders' class="btn btn-danger">Delete</button></th> --}}
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                	@foreach($sliders as $slider)
										<tr>
                                            {{-- <td><input type="checkbox" class="checkBoxClass" name='all_ids[]' value='{{$slider->id}}' /></td> --}}
											<td><img src="{{URL::asset('public/uploads/sliders/'.$slider->image)}}" width="10%" /></td>
											<td width="10%">
                                                <div class="btn-group">
                                                    <a href="{{route('editSlider', ['id'=>$slider->id])}}" class="btn btn-success"><i class="fa fa-edit"></i></a>
                                                    <a href="javascript:void(0)" class="btn btn-danger deleteSlider" data-id="{{$slider->id}}"><i class="fa fa-times"></i></a>
                                                </div>
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

    <div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="confirmDeleteModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmDeleteModalLabel">Confirm</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form-valide" method="post" id="blockForm" action="{{route('deleteSlider')}}">
                        {{csrf_field()}}
                        <input type="hidden" name="val-id" id="val-id">
                        <h5 class="m-t-10 text-danger">Are you sure you want to delete this slide?</h5>
                        <button type="button" class="btn btn-secondary btn-flat cancelBtn m-b-30 m-t-30" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-info btn-flat confirmBtn m-b-30 m-t-30">Confirm</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
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
            $('.deleteSlider').click(function(){
                var id = $(this).data('id');
                $('#val-id').val(id);

                $('#confirmDeleteModal').modal('show');
            });
    		var table = $('#slidersTable').DataTable({
		        dom: 'Bfrtip',
                "aaSorting": []
		    });


    	});
    </script>
@endpush