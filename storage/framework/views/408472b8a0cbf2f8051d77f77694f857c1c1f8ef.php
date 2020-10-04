<?php if(isset($vendors['vendors'])): ?>
<?php $__currentLoopData = $vendors['vendors']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$vendor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($vendor->is_seen == 0): ?>
<tr>
    <td><?php echo e($vendor->id); ?></td>
    <td>
        <?php echo e($vendor->first_name); ?> <?php echo e($vendor->last_name); ?>

    </td>
    <td>
        <?php echo e($vendor->email); ?>

    </td>
    <td>
        <?php if(!empty($vendor->entry_street_address)): ?>
        <?php echo e($vendor->entry_street_address); ?>,
        <?php endif; ?>
        <?php if(!empty($vendor->entry_city)): ?>
        <?php echo e($vendor->entry_city); ?>,
        <?php endif; ?>
        <?php if(!empty($vendor->entry_state)): ?>
        <?php echo e($vendor->zone_name); ?>,
        <?php endif; ?>
        <?php if(!empty($vendor->entry_postcode)): ?>
        <?php echo e($vendor->entry_postcode); ?>

        <?php endif; ?>
        <?php if(!empty($vendor->countries_name)): ?>
        <?php echo e($vendor->countries_name); ?>

        <?php endif; ?>
    </td>
    <td>
        <?php if($vendor->status==1): ?>
        <span class="label label-success">
        <?php echo e(trans('labels.Active')); ?>

        </span>
        <?php elseif($vendor->status==0): ?>
        <span class="label label-danger">
            <?php echo e(trans('labels.InActive')); ?>

        <?php endif; ?>
    </td>
    <td>
        <?php if($vendor->shop_status==1): ?>
        <span class="label label-success">
        <?php echo e(trans('labels.Open')); ?>

        </span>
        <?php elseif($vendor->shop_status==0): ?>
        <span class="label label-danger">
            <?php echo e(trans('labels.Close')); ?>

        <?php endif; ?>
    </td>
    <td>
        <ul class="nav table-nav">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <?php echo e(trans('labels.Action')); ?> <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li role="presentation"><a role="menuitem" tabindex="-1"
                            href="<?php echo e(url('admin/vendors/edit')); ?>/<?php echo e($vendor->id); ?>"><?php echo e(trans('labels.EditVendor')); ?></a>
                    </li>
                    <li role="presentation" class="divider"></li>
                    <li role="presentation"><a data-toggle="tooltip" data-placement="bottom"
                            title="<?php echo e(trans('labels.Delete')); ?>" id="deleteCustomerFrom"
                            users_id="<?php echo e($vendor->id); ?>"><?php echo e(trans('labels.Delete')); ?></a></li>
                </ul>
            </li>
        </ul>
    </td>
</tr>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/withdraw/indextable.blade.php ENDPATH**/ ?>