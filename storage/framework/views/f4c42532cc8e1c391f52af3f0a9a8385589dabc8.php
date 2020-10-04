<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1><?php echo e($result['month']); ?> <?php echo e(trans('labels.Earning of')); ?> <?php echo e($result['earningsbymonth']['vendors']); ?><small><?php echo e($result['month']); ?> <?php echo e(trans('labels.Earning of')); ?> <?php echo e($result['earningsbymonth']['vendors']); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/finance/display')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.Earning')); ?></a></li>
            <li class="active"><?php echo e($result['month']); ?> <?php echo e(trans('labels.Earning of')); ?> <?php echo e($result['earningsbymonth']['vendors']); ?></li>
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
                        <h3 class="box-title"><?php echo e($result['month']); ?> <?php echo e(trans('labels.Earning of')); ?> <?php echo e($result['earningsbymonth']['vendors']); ?></h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">

                        <div class="row">

                            
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(trans('labels.Date')); ?></th>
                                            <th><?php echo e(trans('labels.ProductsPrice')); ?></th>
                                            <th><?php echo e(trans('labels.ShippingCost')); ?></th>
                                            <th><?php echo e(trans('labels.CouponAmount')); ?></th>
                                            <th><?php echo e(trans('labels.Total Amount')); ?></th>
                                            <th><?php echo e(trans('labels.Admin Commission')); ?></th>
                                            <th><?php echo e(trans('labels.Vendor Earning')); ?></th>
                                            <!-- <th><?php echo e(trans('labels.Action')); ?></th> -->
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if(count($result['earningsbymonth']['sale_data'])>0): ?>
                                        <?php $__currentLoopData = $result['earningsbymonth']['sale_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$monthlyearning): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <th><?php echo e($monthlyearning['month']); ?></th>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['item_price']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['shipping_cost']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['coupon_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['total_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['admin_commision']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($monthlyearning['vendor_balance']); ?></td>
                                            
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><strong><?php echo e(trans('labels.TOTAL')); ?></strong></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_item_price']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_shipping_cost']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_coupon_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_order_amount']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_admin_commision']); ?></td>
                                            <td><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_vendor_balance']); ?></td>
                                            <td></td>                                            
                                        </tr>
                                        <tr>
                                            <td colspan="4" style="font-size: 16px; text-align: right;"><strong><?php echo e(trans('labels.Total Paid by customer')); ?></strong></td>
                                            <td style="font-size: 16px;"><strong><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['online_orders']); ?> (<?php echo e(trans('labels.Online')); ?>)</strong></td>
                                            <td style="font-size: 16px;"><strong><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['cod_orders']); ?>  (<?php echo e(trans('labels.COD')); ?>)</strong></td>
                                            <td style="font-size: 16px;"><strong><?php echo e($result['setting'][19]->value); ?><?php echo e($result['earningsbymonth']['total_prices_data']['total_order_amount']); ?></strong></td>
                                        </tr>
                                        <?php else: ?>
                                        <tr>
                                            <td colspan="7"><strong><?php echo e(trans('labels.NoRecordFound')); ?></strong></td>
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
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/finance/vendorbymonth.blade.php ENDPATH**/ ?>