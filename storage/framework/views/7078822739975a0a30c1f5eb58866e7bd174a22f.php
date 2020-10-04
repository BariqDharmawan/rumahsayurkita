<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Finance <?php echo e(trans('labels.Finance')); ?> <small>Finance <?php echo e(trans('labels.Finance')); ?> ...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.Delivery Boys')); ?></a></li>
            <li class="active">Finance <?php echo e(trans('labels.Finance')); ?> </li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->        

        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Finance <?php echo e(trans('labels.Finance')); ?> </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">

                        <!-- /.row -->
                    <div class="row">
                    
                    <div class="col-md-3">
                    <!-- Profile Image -->
                    <div class="box box-primary">
                        <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle" src="<?php echo e(asset($result['deliveryboy']->avatar)); ?>" alt="<?php echo e($result['deliveryboy']->first_name); ?> profile picture">
                        <h3 class="profile-username text-center"><?php echo e($result['deliveryboy']->first_name); ?> <?php echo e($result['deliveryboy']->last_name); ?></h3>
                        <!-- <p class="text-muted text-center">
                            <span class="label label-success"> asdsad</span>                       
                        </p>
                        <p class="text-muted text-center">    
                        <?php if(count($result['rating'])>0): ?>                                           
                            <?php for($i=1; $i<=5; $i++): ?>
                                <?php if($result['rating']->reviews_rating>=$i): ?>
                                    <span class="fa fa-star checked"></span>                                                
                                <?php else: ?>
                                    <span class="fa fa-star"></span>   
                                <?php endif; ?>    
                            <?php endfor; ?>
                        <?php else: ?>
                            <?php for($i=1; $i<=5; $i++): ?>
                                <span class="fa fa-star"></span>
                            <?php endfor; ?>
                        <?php endif; ?>    
                        
                        </p> -->
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                    </div>

                    <div class="col-xs-12 col-md-3">
                        <div class="panel panel-default panel-sale text-center">
                            <div class="panel-heading"><?php echo e(trans('labels.Today')); ?></div>
                            <div class="panel-body">
                                <div class="count"> 
                                    <span id="total_sales_span">
                                    <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($result['todayearnings']); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                        
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-3">
                        <div class="panel panel-default panel-sale text-center">
                            <div class="panel-heading"><?php echo e(trans('labels.7 Days')); ?></div>
                            <div class="panel-body">
                                <div class="count"> 
                                    <span id="total_sales_span">
                                        <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($result['earningsbyweek']['total_amount']); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                    </span>
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
                                    <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($result['earningsbymonth']); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                    
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                            <div class="col-xs-12 label label-primary">
                                <div class="panel-heading" style="text-align:left;font-size: 20px;">
                                    <?php echo e(trans('labels.Last 7 Days')); ?>   
                                    <!-- <a  href="<?php echo e(url('admin/finance/monthreport/'. $result['month'] .'/deliveryboy/' .$result['deliveryboy']->id)); ?>" class="pull-right" style="color:#fff; margin-right: 6px;"><?php echo e(trans('labels.View all')); ?></a> -->
                                </div>                                
                            </div>  
                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(trans('labels.Date')); ?></th>
                                            <th><?php echo e(trans('labels.COD')); ?></th>
                                            <th><?php echo e(trans('labels.With Card')); ?></th>
                                            <th><?php echo e(trans('labels.Total')); ?></th>
                                            <!-- <th><?php echo e(trans('labels.Action')); ?></th> -->
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php if(count($result['earningsbyweek']['sale_data'])>0): ?>
                                        <?php $__currentLoopData = $result['earningsbyweek']['sale_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$monthlyearning): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($monthlyearning->date_purchased); ?></td>
                                            <td>
                                                <?php if($monthlyearning->payment_method == 'Cash on Delivery'): ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($monthlyearning->shipping_cost); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php else: ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?>0<?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php endif; ?>                                            
                                            </td>
                                            <td>
                                                <?php if($monthlyearning->payment_method != 'Cash on Delivery'): ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($monthlyearning->shipping_cost); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php else: ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?>0<?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php endif; ?>                                            
                                            </td>
                                            <td><?php echo e($monthlyearning->shipping_cost); ?></td>
                                            
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        
                                        <?php else: ?>
                                        <tr>
                                            <td colspan="7"><strong><?php echo e(trans('labels.NoRecordFound')); ?></strong></td>
                                        </tr>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="col-xs-12 label label-primary">
                            <div class="panel-heading" style="text-align:left;font-size: 20px;">
                                <?php echo e(trans('labels.All Sattlements')); ?>                                   
                            </div>                                
                        </div>  

                        <div class="row">
                            <div class="col-xs-12">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo e(trans('labels.Date')); ?> </th>
                                            <th><?php echo e(trans('labels.COD / Card')); ?></th>
                                            <th><?php echo e(trans('labels.Total Amount')); ?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>

                                        <tbody id="customers-table">
                                            <?php if(isset($result['withdraw'])): ?>
                                            <?php $__currentLoopData = $result['withdraw']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$vendor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            
                                            <tr>
                                                <td>                                               
                                                    <?php echo e(date('d/m/Y',strtotime($vendor->created_at))); ?>

                                                </td>
                                                <td>
                                                <?php if($vendor->payment_method == 'Cash on Delivery'): ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($vendor->amount); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php else: ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?>0<?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php endif; ?>
                                                /
                                                <?php if($vendor->payment_method != 'Cash on Delivery'): ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($vendor->amount); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php else: ?>
                                                <?php echo e($result['commonContent']['currency']->symbol_left); ?>0<?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                <?php endif; ?></td>
                                                <td>
                                                    <?php echo e($result['commonContent']['currency']->symbol_left); ?><?php echo e($vendor->amount); ?><?php echo e($result['commonContent']['currency']->symbol_right); ?>

                                                </td>
                                                <td>
                                                
                                                <?php if($vendor->status == 0): ?>
                                                    <button class="btn btn-default deliveryboy-pay-popup" payment_id = "<?php echo e($vendor->payment_withdraw_id); ?>" deliveryboy_id = "<?php echo e($vendor->user_id); ?>" ><?php echo e(trans('labels.Pay')); ?></button>
                                                <?php else: ?>
                                                    <span class="btn btn-success deliveryboy-pay-popup-paid" payment_id = "<?php echo e($vendor->payment_withdraw_id); ?>" deliveryboy_id = "<?php echo e($vendor->user_id); ?>"><?php echo e(trans('labels.Paid info')); ?></span>
                                                <?php endif; ?> 
                                                <!-- <a href="<?php echo e(URL::to('admin/deliveryboys/finance/sattlement/orders?deliveryboys_id='.$vendor->user_id.'&payment_id='.$vendor->payment_withdraw_id)); ?>" class="btn btn-primary pay-popup" ><?php echo e(trans('labels.View')); ?></a> -->
                                                </td>
                                            </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php else: ?>
                                            <tr>
                                                <td colspan="4"><?php echo e(trans('labels.NoRecordFound')); ?></td>
                                            </tr>
                                            <?php endif; ?>
                                        </tbody>
                                    </thead>
                                    
                                </table>
                                
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="vendors-info" tabindex="-1" role="dialog" aria-labelledby="bankinfoModal">

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
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/finance/deliveryboysattlement.blade.php ENDPATH**/ ?>