<div style="width: 100%; display:block;">
<h2><?php echo e(trans('labels.EcommerceAppOrderStatus')); ?></h2>
<p>
	<strong><?php echo e(trans('labels.Hi')); ?> <?php echo e($data['devices'][0]->first_name); ?> <?php echo e($data['devices'][0]->last_name); ?>!</strong><br>
	<?php echo e($data['message']); ?><br><br>
	<strong><?php echo e(trans('labels.Sincerely')); ?>,</strong><br>
	<?php echo e(trans('labels.regardsForThanks')); ?>

</p>
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/mail/orderStatus.blade.php ENDPATH**/ ?>