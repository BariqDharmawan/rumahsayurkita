<?php $__env->startSection('content'); ?>
<!-- Site Content -->
<?php $r =   'web.news.news' . $final_theme['blog']; ?>
<?php echo $__env->make($r, \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/news.blade.php ENDPATH**/ ?>