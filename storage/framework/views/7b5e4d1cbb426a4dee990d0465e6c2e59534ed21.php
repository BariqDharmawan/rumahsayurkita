<?php if(isset($data['deliveryboys'])): ?>
<?php $__currentLoopData = $data['deliveryboys']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$deliveryboy): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($deliveryboy->is_seen == 0): ?>
<tr>
    <td><?php echo e($deliveryboy->id); ?></td>
    <td>
        <?php echo e($deliveryboy->first_name); ?> <?php echo e($deliveryboy->last_name); ?>

    </td>
    <td>
        <?php echo e($deliveryboy->email); ?>

    </td>
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
        <a data-toggle="tooltip" data-placement="bottom" title="<?php echo e(trans('labels.Edit')); ?>"
            href="<?php echo e(url('admin/deliveryboys/edit')); ?>/<?php echo e($deliveryboy->id); ?>" class="btn btn-primary"
            style="width: 100%; margin-bottom: 5px;"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
            <?php echo e(trans('labels.Edit')); ?></a>
        <a data-toggle="tooltip" data-placement="bottom" title="<?php echo e(trans('labels.Rating')); ?>"
            href="<?php echo e(url('admin/deliveryboys/ratings')); ?>/<?php echo e($deliveryboy->id); ?>" class="btn btn-success"
            style="width: 100%; margin-bottom: 5px;"><i class="fa fa-stars" aria-hidden="true"></i>
            <?php echo e(trans('labels.Rating')); ?></a>
        <a data-toggle="tooltip" data-placement="bottom" title="<?php echo e(trans('labels.Delete')); ?>" id="deleteCustomerFrom"
            users_id="<?php echo e($deliveryboy->id); ?>" class="btn btn-danger" style="width: 100%; margin-bottom: 5px;"><i
                class="fa fa-trash" aria-hidden="true"></i> <?php echo e(trans('labels.Delete')); ?></a>
    </td>
</tr>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/indextable.blade.php ENDPATH**/ ?>