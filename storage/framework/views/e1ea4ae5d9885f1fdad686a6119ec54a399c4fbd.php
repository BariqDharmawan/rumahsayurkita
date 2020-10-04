<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?php echo e(trans('labels.Finance')); ?> <small><?php echo e(trans('labels.Finance')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Finance')); ?></li>
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
                        <h3 class="box-title"><?php echo e(trans('labels.Finance')); ?> </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="row">

                            <div class="col-xs-12 col-md-3">
                                <div class="panel panel-default panel-sale text-center">
                                    <div class="panel-heading"><?php echo e(trans('labels.Today')); ?></div>
                                    <div class="panel-body">
                                        <div class="count">
                                        <span id="total_sales_span"><?php echo e($result['setting'][19]->value); ?><?php echo e($result['todaysearnings']); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-3">
                                <div class="panel panel-default panel-sale text-center">
                                    <div class="panel-heading"><?php echo e(trans('labels.7 Days')); ?></div>
                                    <div class="panel-body">
                                        <div class="count">
                                            <span id="total_sales_span"><?php echo e($result['setting'][19]->value); ?><?php echo e($result['sevendaysearnings']); ?></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="col-xs-12 col-md-3">
                                <div class="panel panel-default panel-sale text-center">
                                    <div class="panel-heading"><?php echo e(trans('labels.This Month')); ?></div>
                                    <div class="panel-body">
                                        <div class="count">
                                                                                    
                                            <span id="total_sales_span">
                                            <?php if(count($result['monthlyearnings'])>0): ?>
                                                <?php $__currentLoopData = $result['monthlyearnings']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$monthlyearning): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($monthlyearning['currentmonth']): ?>
                                                    <?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['currentmonth']); ?>

                                                    <?php endif; ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-3">
                                <div class="panel panel-default panel-sale text-center">
                                    <div class="panel-heading"><?php echo e(trans('labels.Last Month')); ?></div>
                                    <div class="panel-body">
                                        <div class="count">
                                            <span id="total_sales_span">
                                            <?php if(count($result['monthlyearnings'])>0): ?>
                                                <?php $__currentLoopData = $result['monthlyearnings']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$monthlyearning): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($monthlyearning['lastmonth']): ?>
                                                    <?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['lastmonth']); ?>

                                                    <?php endif; ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                </br>
                                <div class="box-header">
                                    <h3 class="box-title"><?php echo e(trans('labels.Earning by Month')); ?> </h3>
                                </div></br>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(trans('labels.Month')); ?></th>
                                            <th><?php echo e(trans('labels.ProductsPrice')); ?></th>
                                            <th><?php echo e(trans('labels.ShippingCost')); ?></th>
                                            <th><?php echo e(trans('labels.CouponAmount')); ?></th>
                                            <th><?php echo e(trans('labels.Total Amount')); ?></th>
                                            <th><?php echo e(trans('labels.Admin Commission')); ?></th>
                                            <th><?php echo e(trans('labels.Vendor Earning')); ?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if(count($result['monthlyearnings'])>0): ?>
                                        <?php $__currentLoopData = $result['monthlyearnings']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$monthlyearning): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($monthlyearning['month']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['item_price']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['shipping_cost']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['coupon_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['total_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['admin_commision']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['vendor_balance']); ?></td>
                                            <td>
                                                <a class="btn btn-primary" style="width: 100%; margin-bottom: 5px;"
                                                    href="<?php echo e(url('admin/finance/month')); ?>/<?php echo e($monthlyearning['month']); ?>"><?php echo e(trans('labels.View')); ?></a>
                                            </td>
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
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/finance/display.blade.php ENDPATH**/ ?>