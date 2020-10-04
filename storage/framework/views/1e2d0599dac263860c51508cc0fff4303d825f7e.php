<section class="carousel-content">
  <div class="container">
    <div class="row">
      <div class="col-12 col-lg-3 padding-r0  d-none d-lg-block d-xl-block"> 
          <nav id="navbar_2_carouselExampleIndicators3" class="navbar navbar-expand-lg navbar-light categories-panel">
            <div class="navbar-collapse">
              <?php  echo $result['cat']; ?>   
              
            </div>
          </nav>
      </div>
      <div class="col-12 col-lg-9 padding-l0">
          <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
               
                <?php $__currentLoopData = $result['slides']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$slides_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <li data-target="#carouselExampleIndicators4" data-slide-to="<?php echo e($key); ?>" class="<?php if($key==0): ?> active <?php endif; ?>"></li>
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
              <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
              
                <span class="sr-only"><?php echo app('translator')->get('website.Previous'); ?></span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
             
                <span class="sr-only"><?php echo app('translator')->get('website.Next'); ?></span>
              </a>
            </div>
        
      </div>
    </div>
  </div>
</section>

<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/carousels/boot-carousel-content-with-navigation.blade.php ENDPATH**/ ?>