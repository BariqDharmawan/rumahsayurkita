@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Must Be Restocked') }} <small>{{ trans('labels.Must Be Restocked') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i>
                        {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.Must Be Restocked') }}</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Info boxes -->

            <!-- /.row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">{{ trans('labels.Must Be Restocked') }} </h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                            <div class="row">
                                <div class="col-xs-12">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>{{ trans('labels.ID') }}</th>
                                                <th>{{ trans('labels.Image') }}</th>
                                                <th>{{ trans('labels.ProductName') }}</th>
                                                <th>{{ trans('labels.ProductsModel') }}</th>
                                                <th>{{ trans('labels.Quantity To Restocked') }}</th>
                                                <th>{{ trans('labels.Add Stock') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @if (count($result['mustBeRestocked']) > 0)
                                                @foreach ($result['mustBeRestocked'] as $key => $mustBeRestocked)
                                                    <tr>
                                                        <td>{{ $mustBeRestocked->products_id }}</td>
                                                        <td><img src="{{ asset($mustBeRestocked->image_path)}}"
                                                                alt="" width=" 100px" height="100px"></td>
                                                        <td width="45%">
                                                            <strong>{{ $mustBeRestocked->products_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <strong>
                                                                {{ $mustBeRestocked->products_model }}
                                                            </strong>
                                                        </td>
                                                        <td>
                                                            {{ $mustBeRestocked->quantityToRestocked }}
                                                        </td>
                                                        <td>
                                                            <a data-toggle="tooltip" data-placement="bottom"
                                                                title="{{ trans('labels.Add Stock') }}"
                                                                href="products/inventory/display"
                                                                class="badge bg-light-blue"><i class="fa fa-plus"
                                                                    aria-hidden="true"></i></a>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                            @else
                                                <tr>
                                                    <td colspan="4">
                                                        {{ trans('labels.NoRecordFound') }}
                                                    </td>
                                                </tr>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>

            <!-- Main row -->

            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
@endsection
