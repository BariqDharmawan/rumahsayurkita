<div style="width: 100%; display:block;">
<h2><?php echo e(trans('labels.NewProductEmailTitle')); ?></h2>
<p>
	<strong><?php echo e(trans('labels.Hi')); ?> <?php echo e($customers_data->first_name); ?> <?php echo e($customers_data->last_name); ?>!</strong><br>
	
    <?php echo e(trans('labels.NewProductEmailPart1')); ?> <strong><?php echo e($customers_data->product[0]->products_name); ?></strong> <?php echo e(trans('labels.NewProductEmailPart2')); ?>

    <br><br>
	<strong><?php echo e(trans('labels.Sincerely')); ?>,</strong><br>
	<?php echo e(trans('labels.regardsForThanks')); ?>

</p>
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/mail/newProduct.blade.php ENDPATH**/ ?>