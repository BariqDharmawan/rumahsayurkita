@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Net Profit Per Item') }} ({{ $result['date'] }}) <small>{{ trans('labels.Net Profit Per Item') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i>
                        {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.Net Profit Per Item') }}</li>
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
                            <h3 class="box-title">{{ trans('labels.Net Profit Per Item') }} ({{ $result['date'] }})</h3>
                            <div>
                                <a class="btn btn-success" href="{{ route('netprofitperitem.download') }}">Download xlsx</a>
                            </div>
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
                                                <th>{{ trans('labels.Net Profit') }}</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @if (count($result['data']) > 0)
                                                @foreach ($result['data'] as $netProfitproduct)
                                                    <tr>
                                                        <td>{{ $netProfitproduct->products_id }}</td>
                                                        <td><img src="{{ asset($netProfitproduct->image_path)}}"
                                                                alt="" width=" 100px" height="100px"></td>
                                                        <td width="45%">
                                                            <strong>{{ $netProfitproduct->products_name }}</strong>
                                                        </td>
                                                        <td>
                                                            <strong>
                                                                {{ $netProfitproduct->products_model }}
                                                            </strong>
                                                        </td>
                                                        <td>
                                                            @if(!empty($result['commonContent']['currency']->symbol_left)) {{$result['commonContent']['currency']->symbol_left}} @endif {{ $netProfitproduct->netProfit }} @if(!empty($result['commonContent']['currency']->symbol_right)) {{$result['commonContent']['currency']->symbol_right}} @endif
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
                                    <center>
                                        {{$result['data']->links()}}
                                    </center>
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
