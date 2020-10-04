<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> <?php echo e(trans('labels.Delivery Boys')); ?> <small><?php echo e(trans('labels.Listing Delivery Boys')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i>
                    <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Delivery Boys')); ?></li>
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
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-6 form-inline" id="contact-form">
                                    <form name='registration' id="registration" class="registration" method="get"
                                        action="<?php echo e(url('admin/deliveryboys/filter')); ?>">
                                        <input type="hidden" value="<?php echo e(csrf_token()); ?>">
                                        <div class="input-group-form search-panel ">
                                            <select type="button" class="btn btn-default dropdown-toggle form-control"
                                                data-toggle="dropdown" name="FilterBy" id="FilterBy">
                                                <option value="" selected disabled hidden>
                                                    <?php echo e(trans('labels.Filter By')); ?></option>
                                                <option value="Name" <?php if(isset($filter)): ?> <?php if($filter=="Name" ): ?>
                                                    <?php echo e('selected'); ?> <?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Name')); ?></option>
                                                <option value="E-mail" <?php if(isset($filter)): ?> <?php if($filter=="E-mail" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Email')); ?></option>
                                                <option value="Phone" <?php if(isset($filter)): ?> <?php if($filter=="Phone" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Phone')); ?></option>
                                                <option value="Address" <?php if(isset($filter)): ?> <?php if($filter=="Address" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Address')); ?></option>
                                                <!-- <option value="Suburb" <?php if(isset($filter)): ?> <?php if($filter=="Suburb" ): ?> <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Suburb')); ?></option> -->
                                                <option value="Postcode" <?php if(isset($filter)): ?> <?php if($filter=="Postcode" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Postcode')); ?>

                                                </option>
                                                <option value="City" <?php if(isset($filter)): ?> <?php if($filter=="City" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.City')); ?></option>
                                                <option value="State" <?php if(isset($filter)): ?> <?php if($filter=="State" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.State')); ?></option>
                                                <option value="Country" <?php if(isset($filter)): ?> <?php if($filter=="Country" ): ?>
                                                    <?php echo e('selected'); ?><?php endif; ?> <?php endif; ?>><?php echo e(trans('labels.Country')); ?></option>
                                            </select>
                                            <input type="text" class="form-control input-group-form " name="parameter"
                                                placeholder="Search term..." id="parameter" <?php if(isset($parameter)): ?>
                                                value="<?php echo e($parameter); ?>" <?php endif; ?>>
                                            <button class="btn btn-primary " id="submit" type="submit"><span
                                                    class="glyphicon glyphicon-search"></span></button>
                                            <?php if(isset($parameter,$filter)): ?> <a class="btn btn-danger "
                                                href="<?php echo e(url('admin/deliveryboys/display')); ?>"><i class="fa fa-ban"
                                                    aria-hidden="true"></i> </a><?php endif; ?>
                                        </div>
                                    </form>
                                    <div class="col-lg-4 form-inline" id="contact-form12"></div>
                                </div>
                                <div class="box-tools pull-right">
                                    <a href="<?php echo e(url('admin/deliveryboys/add')); ?>" type="button"
                                        class="btn btn-block btn-primary"><?php echo e(trans('labels.Adddeliveryboy')); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <?php if(count($errors) > 0): ?>
                                <?php if($errors->any()): ?>
                                <div class="alert alert-success alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                            aria-hidden="true">&times;</span></button>
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
                                            <th><?php echo e(trans('labels.EmailAddress')); ?></th>
                                            <th><?php echo e(trans('labels.Flosting Cash')); ?></th>
                                            <th><?php echo e(trans('labels.Wallet')); ?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('entry_street_address', trans('labels.Address')));?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('status', trans('labels.Availability Status')));?></th>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('status', trans('labels.Account Status')));?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="customers-table">
                                        <?php if(isset($data['deliveryboys'])): ?>
                                        <?php $__currentLoopData = $data['deliveryboys']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$deliveryboy): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($deliveryboy->id); ?></td>
                                            <td>
                                                <?php echo e($deliveryboy->first_name); ?> <?php echo e($deliveryboy->last_name); ?>

                                            </td>
                                            <td style="text-transform: lowercase">
                                                <?php echo e($deliveryboy->email); ?>

                                            </td>
                                            <td><?php echo e($deliveryboy->floating_cash); ?></td>
                                            <td><?php echo e($deliveryboy->wallet_amount); ?></td>
                                            <td>
                                                <?php if(!empty($deliveryboy->entry_street_address)): ?>
                                                <?php echo e($deliveryboy->entry_street_address); ?>,
                                                <?php endif; ?>
                                                <?php if(!empty($deliveryboy->entry_city)): ?>
                                                <?php echo e($deliveryboy->entry_city); ?>,
                                                <?php endif; ?>
                                                <?php if(!empty($deliveryboy->entry_state)): ?>
                                                <?php echo e($deliveryboy->zone_name); ?>,
                                                <?php endif; ?>
                                                <?php if(!empty($deliveryboy->entry_postcode)): ?>
                                                <?php echo e($deliveryboy->entry_postcode); ?>

                                                <?php endif; ?>
                                                <?php if(!empty($deliveryboy->countries_name)): ?>
                                                <?php echo e($deliveryboy->countries_name); ?>

                                                <?php endif; ?>
                                            </td>

                                            <td>
                                                <p>
                                                    <?php if($deliveryboy->availability_status==8): ?>
                                                    <i class="fa fa-circle text-success"></i>
                                                    <?php elseif($deliveryboy->availability_status==9): ?>
                                                    <i class="fa fa-circle text-success"></i>
                                                    <?php elseif($deliveryboy->availability_status==10): ?>
                                                    <i class="fa fa-circle text-danger"></i>
                                                    <?php elseif($deliveryboy->availability_status==11): ?>
                                                    <i class="fa fa-circle text-danger"></i>
                                                    <?php else: ?>
                                                    <i class="fa fa-circle text-primary"></i>
                                                    <?php endif; ?>

                                                    <?php $__currentLoopData = $data['statuses']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if($deliveryboy->availability_status == $status->orders_status_id): ?>
                                                    <?php echo e($status->orders_status_name); ?>

                                                    <?php endif; ?>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                </p>
                                            </td>

                                            <td>
                                                <?php if($deliveryboy->status==1): ?>
                                                <span class="label label-success">
                                                    <?php echo e(trans('labels.Active')); ?>

                                                </span>
                                                <?php elseif($deliveryboy->status==0): ?>
                                                <span class="label label-danger">
                                                    <?php echo e(trans('labels.InActive')); ?>

                                                    <?php endif; ?>
                                            </td>

                                            <td>
                                                <a data-toggle="tooltip" data-placement="bottom"
                                                    title="<?php echo e(trans('labels.Edit')); ?>"
                                                    href="<?php echo e(url('admin/deliveryboys/edit')); ?>/<?php echo e($deliveryboy->id); ?>"
                                                    class="btn btn-primary" style="width: 100%; margin-bottom: 5px;"><i
                                                        class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    <?php echo e(trans('labels.Edit')); ?></a>
                                                <a data-toggle="tooltip" data-placement="bottom"
                                                    title="<?php echo e(trans('labels.Finance')); ?>"
                                                    href="<?php echo e(url('admin/deliveryboys/finance/sattlement/deliveryboy/')); ?>/<?php echo e($deliveryboy->id); ?>"
                                                    class="btn btn-success" style="width: 100%; margin-bottom: 5px;"><i
                                                        class="fa fa-stars" aria-hidden="true"></i>
                                                    <?php echo e(trans('labels.Finance')); ?></a>
                                                <a data-toggle="tooltip" data-placement="bottom"
                                                    title="<?php echo e(trans('labels.Rating')); ?>"
                                                    href="<?php echo e(url('admin/deliveryboys/ratings')); ?>/<?php echo e($deliveryboy->id); ?>"
                                                    class="btn btn-success" style="width: 100%; margin-bottom: 5px;"><i
                                                        class="fa fa-stars" aria-hidden="true"></i>
                                                    <?php echo e(trans('labels.Rating')); ?></a>
                                                <a data-toggle="tooltip" data-placement="bottom"
                                                    title="<?php echo e(trans('labels.Delete')); ?>" id="deleteCustomerFrom"
                                                    users_id="<?php echo e($deliveryboy->id); ?>" class="btn btn-danger"
                                                    style="width: 100%; margin-bottom: 5px;"><i class="fa fa-trash"
                                                        aria-hidden="true"></i> <?php echo e(trans('labels.Delete')); ?></a>
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
                                <?php if(count($data['deliveryboys']) > 0): ?>
                                <div class="col-xs-12 text-right">
                                    <?php echo $data['deliveryboys']->appends(\Request::except('page'))->render(); ?>

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

        <!-- deleteCustomerModal -->
        <div class="modal fade" id="deleteCustomerModal" tabindex="-1" role="dialog"
            aria-labelledby="deleteCustomerModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="deleteCustomerModalLabel"><?php echo e(trans('labels.Delete')); ?></h4>
                    </div>
                    <?php echo Form::open(array('url' =>'admin/deliveryboys/delete', 'name'=>'deleteCustomer',
                    'id'=>'deleteCustomer', 'method'=>'post', 'class' => 'form-horizontal',
                    'enctype'=>'multipart/form-data')); ?>

                    <?php echo Form::hidden('action', 'delete', array('class'=>'form-control')); ?>

                    <?php echo Form::hidden('users_id', '', array('class'=>'form-control', 'id'=>'users_id')); ?>

                    <div class="modal-body">
                        <p><?php echo e(trans('labels.DeleteRecordText')); ?></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default"
                            data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
                        <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Delete')); ?></button>
                    </div>
                    <?php echo Form::close(); ?>

                </div>
            </div>
        </div>

        <div class="modal fade" id="notificationModal" tabindex="-1" role="dialog"
            aria-labelledby="notificationModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content notificationContent">

                </div>
            </div>
        </div>

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/index.blade.php ENDPATH**/ ?>