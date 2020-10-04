<section class="carousel-content">
  <div class="container">
    
    <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <?php $__currentLoopData = $result['slides']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slides_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <li data-target="#carouselExampleIndicators1" data-slide-to="<?php echo e($key); ?>" class="<?php if($key==0): ?> active <?php endif; ?>"></li>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ol>
    <div class="carousel-inner">
      <?php $__currentLoopData = $result['slides']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slides_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="carousel-item  <?php if($key==0): ?> active <?php endif; ?>">
        <?php if($slides_data->type == 'category'): ?>
          <a href="<?php echo e(URL::to('/shop?category='.$slides_data->url)); ?>">
        <?php elseif($slides_data->type == 'product'): ?>
          <a href="<?php echo e(URL::to('/product-detail/'.$slides_data->url)); ?>">
        <?php elseif($slides_data->type == 'mostliked'): ?>
          <a href="<?php echo e(URL::to('shop?type=mostliked')); ?>">
        <?php elseif($slides_data->type == 'topseller'): ?>
          <a href="<?php echo e(URL::to('shop?type=topseller')); ?>">
        <?php elseif($slides_data->type == 'deals'): ?>
          <a href="<?php echo e(URL::to('shop?type=deals')); ?>">
        <?php endif; ?>
          <img class="d-block w-100"  src="<?php echo e(asset('').$slides_data->path); ?>" width="100%" alt="First slide">
        </a>
        </div>

      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">    
      <span class="sr-only"><?php echo app('translator')->get('website.Previous'); ?></span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">   
      <span class="sr-only"><?php echo app('translator')->get('website.Next'); ?></span>
    </a>
  </div>
  </div>
</section><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/carousels/boot-carousel-content-full-width.blade.php ENDPATH**/ ?>