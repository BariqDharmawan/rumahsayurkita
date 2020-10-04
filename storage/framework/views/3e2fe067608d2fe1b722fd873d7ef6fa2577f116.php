<div style="width: 100%; display:block;">
<h2><?php echo e($customers_data->news[0]->news_name); ?></h2>
<p>
	<strong><?php echo e(trans('labels.Hi')); ?> <?php echo e($customers_data->customers_firstname); ?> <?php echo e($customers_data->last_name); ?>!</strong><br>
	
   <?php
   print stripslashes($customers_data->news[0]->news_description);
    ?>
    <br><br>
	<strong><?php echo e(trans('labels.Sincerely')); ?>,</strong><br>
	<?php echo e(trans('labels.regardsForThanks')); ?>

</p>
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/mail/news.blade.php ENDPATH**/ ?>