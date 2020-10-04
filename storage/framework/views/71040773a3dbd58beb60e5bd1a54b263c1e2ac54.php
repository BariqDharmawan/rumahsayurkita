<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?php echo e(trans('labels.Drivers Report Detail')); ?> <small><?php echo e(trans('labels.Drivers Report Detail')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Drivers Report Detail')); ?></li>
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
                        <h3 class="box-title"><?php echo e(trans('labels.Driver Listing')); ?> </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(trans('labels.#')); ?></th>
                                            <th><?php echo e(trans('labels.OrderID')); ?></th>
                                            <th><?php echo e(trans('labels.CustomerName')); ?></th>
                                            <th><?php echo e(trans('labels.Vendor')); ?></th>
                                            <th><?php echo e(trans('labels.Date')); ?></th>
                                            <th><?php echo e(trans('labels.OrdersStatus')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if(count($result['reportdata'])>0): ?>
                                        <?php $__currentLoopData = $result['reportdata']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td> <?php echo e(++$key); ?></td>
                                            <td> <?php echo e($data->orders_id); ?></td>
                                            <td> <?php echo e($data->customers_name); ?></td>
                                            <td> <?php echo e($data->deliveryboy_name); ?></td>
                                            <td> <?php echo e($data->created_at); ?></td>
                                            <td> <?php echo e($data->orders_status_name); ?></td>
                                       </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                        <tr>
                                            <td colspan="6"><strong><?php echo e(trans('labels.NoRecordFound')); ?></strong></td>
                                        </tr>
                                        <?php endif; ?>
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
        <!-- /.row -->

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/reports/driverreportsdetail.blade.php ENDPATH**/ ?>