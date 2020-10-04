<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> <?php echo e(trans('labels.Rating / Reviews')); ?> <small><?php echo e(trans('labels.Listing Rating / Reviews')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>"><i class="fa fa-users"></i> <?php echo e(trans('labels.Listing Delivery Boys')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Rating / Reviews')); ?></li>
        </ol>
    </section>
<style>
.checked {
  color: orange;
}
</style>
    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->

        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="col-xs-12">
                        </hr>
                            <h3><?php echo e(trans('labels.Reviews and Rating of')); ?> <?php echo e($result['averagerating'][0]->first_name); ?> <?php echo e($result['averagerating'][0]->last_name); ?></h4>
                        </hr>
                        </br>
                    </div>
                        <div class="col-xs-12 col-md-3">
                            <div class="panel panel-default panel-sale text-center">
                                <div class="panel-heading"><?php echo e(trans('labels.Average Ratings')); ?></div>
                                <div class="panel-body">
                                    <div class="count">
                                        <?php echo e($result['averagerating'][0]->rating); ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-3">
                            <div class="panel panel-default panel-sale text-center">
                                <div class="panel-heading"><?php echo e(trans('labels.Total User Rated')); ?></div>
                                <div class="panel-body">
                                    <div class="count">
                                        <?php echo e($result['averagerating'][0]->total_user_rated); ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                        </br>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                </hr>
                                    <h3><?php echo e(trans('labels.Rating / Reviews')); ?></h4>
                                </hr>
                            </div>
                        </div>
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
                                            <th><?php echo e(trans('labels.Users')); ?></th>
                                            <th><?php echo e(trans('labels.Rating')); ?></th>
                                            <th><?php echo e(trans('labels.Descriptions')); ?></th>
                                            <th><?php echo e(trans('labels.Date')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(isset($result['indvidualratings'])): ?>
                                        <?php $__currentLoopData = $result['indvidualratings']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$rating): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($rating->customers_name); ?></td>  
                                            <td>                                                
                                                <?php for($i=1; $i<=5; $i++): ?>
                                                    <?php if($rating->reviews_rating>=$i): ?>
                                                        <span class="fa fa-star checked"></span>                                                
                                                    <?php else: ?>
                                                        <span class="fa fa-star"></span>   
                                                    <?php endif; ?>    
                                                <?php endfor; ?>
                                            </td>  
                                            <td><?php echo e($rating->reviews_text); ?></td>  
                                            <td><?php echo e(date_format(date_create($rating->created_at), 'Y-m-d')); ?></td>  
                                            <td>
                                                <a data-toggle="tooltip" data-placement="bottom" title="<?php echo e(trans('labels.Delete')); ?>" id="deleteTaxRateId" tax_rates_id ="<?php echo e($rating->reviews_id); ?>" class="badge bg-red"><i class="fa fa-trash" aria-hidden="true"></i></a>
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

        <div class="modal fade" id="deleteTaxRateModal" tabindex="-1" role="dialog" aria-labelledby="deletetaxRateModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteTaxRateModalLabel"><?php echo e(trans('labels.Delete')); ?></h4>
                        </div>
                        <?php echo Form::open(array('url' =>'admin/deliveryboys/ratings/delete', 'name'=>'deletetaxRate', 'id'=>'deletetaxRate', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                        <?php echo Form::hidden('action',  'delete', array('class'=>'form-control')); ?>

                        <?php echo Form::hidden('id',  '', array('class'=>'form-control', 'id'=>'tax_rates_id')); ?>

                        <div class="modal-body">
                            <p><?php echo e(trans('labels.DeleteText')); ?></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
                            <button type="submit" class="btn btn-primary" id="deletetaxRate"><?php echo e(trans('labels.Delete')); ?></button>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>
            </div>

        <!-- /.row -->

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/ratings.blade.php ENDPATH**/ ?>