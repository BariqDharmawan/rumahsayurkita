<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> <?php echo e(trans('labels.Withdraw')); ?> <small><?php echo e(trans('labels.Withdraw Amount')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.Delivery Boys')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Withdraw')); ?></li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->

        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <?php if(count($errors) > 0): ?>
                                  <?php if($errors->any()): ?>
                                  <div class="alert alert-success alert-dismissible" role="alert">
                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                      <?php echo e($errors->first()); ?>

                                  </div>
                                  <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('id', trans('labels.ID')));?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('first_name', trans('labels.Name')));?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('amount', trans('labels.Amount')));?></th>
                                            <th width="30%"><?php echo e(trans('labels.Notes')); ?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('created_at', trans('labels.Request Date')));?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="customers-table">
                                        <?php if(isset($data['withdraw'])): ?>
                                        <?php $__currentLoopData = $data['withdraw']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$vendor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($vendor->payment_withdraw_id); ?></td>
                                            <td>
                                                <?php echo e($vendor->first_name); ?> <?php echo e($vendor->last_name); ?>

                                            </td>
                                            <td>
                                                <?php echo e($data['setting'][19]->value); ?><?php echo e($vendor->amount); ?>

                                            </td>
                                            <td>                                               
                                                <?php echo e($vendor->note); ?>

                                            </td>
                                            <td>                                               
                                                <?php echo e($vendor->created_at); ?>

                                            </td>
                                            <td>
                                            <td>
                                                <!-- <a class="btn btn-success pay-popup-boy" payment_id = "<?php echo e($vendor->payment_withdraw_id); ?>" delveryboy_id = "<?php echo e($vendor->user_id); ?>" style="width: 100%; margin-bottom: 5px;" href="#"><?php echo e(trans('labels.Pay')); ?></a> -->
                                            
                                                <?php if($vendor->status == 0): ?>
                                                <button class="btn btn-default deliveryboy-pay-popup" payment_id = "<?php echo e($vendor->payment_withdraw_id); ?>" deliveryboy_id = "<?php echo e($vendor->user_id); ?>" ><?php echo e(trans('labels.Pay')); ?></button>
                                                <?php else: ?>
                                                <span class="btn btn-success deliveryboy-pay-popup-paid" payment_id = "<?php echo e($vendor->payment_withdraw_id); ?>" deliveryboy_id = "<?php echo e($vendor->user_id); ?>"><?php echo e(trans('labels.Paid info')); ?></span>
                                                <?php endif; ?> 
                                                
                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                        <tr>
                                            <td colspan="4"><?php echo e(trans('labels.NoRecordFound')); ?></td>
                                        </tr>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                                <?php if(count($data['withdraw']) > 0): ?>
                                <div class="col-xs-12 text-right">
                                    <?php echo $data['withdraw']->appends(\Request::except('page'))->render(); ?>

                                </div>
                                <?php endif; ?>
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

        <!-- bankinfo -->
        <div class="modal fade" id="vendors-info" tabindex="-1" role="dialog" aria-labelledby="bankinfoModal">
            
        </div>

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/withdraw/index.blade.php ENDPATH**/ ?>