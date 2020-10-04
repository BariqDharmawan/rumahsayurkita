<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> <?php echo e(trans('labels.Floating Cash')); ?> <small><?php echo e(trans('labels.Floating Cash Amount')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.Delivery Boys')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Floating Cash')); ?></li>
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
                                            <th><?php echo e(trans('labels.Name')); ?></th>
                                            <th><?php echo e(trans('labels.OrderID')); ?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('amount', trans('labels.Amount')));?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('created_at', trans('labels.Delivered Date')));?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="customers-table">
                                        <?php if(isset($data['floatingcash'])): ?>
                                        <?php $__currentLoopData = $data['floatingcash']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$users): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($users->floating_cash_id); ?></td>
                                            <td>
                                                <?php echo e($users->first_name); ?> <?php echo e($users->last_name); ?>

                                            </td>
                                            <td>
                                                <?php echo e($users->orders_id); ?> 
                                            </td>
                                            <td>
                                                <?php echo e($data['setting'][19]->value); ?><?php echo e($users->amount); ?>

                                            </td>
                                            <td>                                               
                                                <?php echo e($users->created_at); ?>

                                            </td>
                                            <td width="20%">
                                            <?php if($users->status==0): ?>
                                                <a class="btn btn-warning payment-recieved" orders_id = "<?php echo e($users->orders_id); ?>" style="width: 100%; margin-bottom: 5px;" href="#"><?php echo e(trans('labels.Recieved Payment')); ?></a>
                                            <?php else: ?>
                                            <a class="btn btn-success" ><?php echo e(trans('labels.Recieved')); ?></a>
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
        <div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-labelledby="paymentModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="paymentModalLabel"><?php echo e(trans('labels.Recieved Payment')); ?></h4>
                    </div>
                    <?php echo Form::open(array('url' =>'admin/deliveryboys/floatingcash/recieved', 'name'=>'deleteCustomer', 'id'=>'deleteCustomer', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                    <?php echo Form::hidden('orders_id', '', array('class'=>'form-control', 'id'=>'orders_id')); ?>

                    <div class="modal-body">
                        <p><?php echo e(trans('labels.Are you sure you have recieved payment from this order')); ?></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.No')); ?></button>
                        <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Yes')); ?></button>
                    </div>
                    <?php echo Form::close(); ?>

                </div>
            </div>
        </div>

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/floatingcash/index.blade.php ENDPATH**/ ?>