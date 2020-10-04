<?php $__env->startSection('content'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> <?php echo e(trans('labels.Net Profit Per Item')); ?> (<?php echo e($result['date']); ?>) <small><?php echo e(trans('labels.Net Profit Per Item')); ?>...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                        <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
                <li class="active"><?php echo e(trans('labels.Net Profit Per Item')); ?></li>
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
                            <h3 class="box-title"><?php echo e(trans('labels.Net Profit Per Item')); ?> (<?php echo e($result['date']); ?>)</h3>
                            <div>
                                <a class="btn btn-success" href="<?php echo e(route('netprofitperitem.download')); ?>">Download xlsx</a>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">

                            <div class="row">
                                <div class="col-xs-12">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th><?php echo e(trans('labels.ID')); ?></th>
                                                <th><?php echo e(trans('labels.Image')); ?></th>
                                                <th><?php echo e(trans('labels.ProductName')); ?></th>
                                                <th><?php echo e(trans('labels.ProductsModel')); ?></th>
                                                <th><?php echo e(trans('labels.Net Profit')); ?></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if(count($result['data']) > 0): ?>
                                                <?php $__currentLoopData = $result['data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $netProfitproduct): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <td><?php echo e($netProfitproduct->products_id); ?></td>
                                                        <td><img src="<?php echo e(asset($netProfitproduct->image_path)); ?>"
                                                                alt="" width=" 100px" height="100px"></td>
                                                        <td width="45%">
                                                            <strong><?php echo e($netProfitproduct->products_name); ?></strong>
                                                        </td>
                                                        <td>
                                                            <strong>
                                                                <?php echo e($netProfitproduct->products_model); ?>

                                                            </strong>
                                                        </td>
                                                        <td>
                                                            <?php if(!empty($result['commonContent']['currency']->symbol_left)): ?> <?php echo e($result['commonContent']['currency']->symbol_left); ?> <?php endif; ?> <?php echo e($netProfitproduct->netProfit); ?> <?php if(!empty($result['commonContent']['currency']->symbol_right)): ?> <?php echo e($result['commonContent']['currency']->symbol_right); ?> <?php endif; ?>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
                                                <tr>
                                                    <td colspan="4">
                                                        <?php echo e(trans('labels.NoRecordFound')); ?>

                                                    </td>
                                                </tr>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                    <center>
                                        <?php echo e($result['data']->links()); ?>

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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/reports/profitperitem.blade.php ENDPATH**/ ?>