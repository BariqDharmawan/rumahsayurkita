
<section class="carousel-content" style="margin-top: 30px;">
  <div class="container">
    <div class="row">
      
      <div class="col-12 col-lg-8">
        <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
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
          <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">            
            <span class="sr-only"><?php echo app('translator')->get('website.Previous'); ?></span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">          
            <span class="sr-only"><?php echo app('translator')->get('website.Next'); ?></span>
          </a>
        </div>
      </div>
      <div class="col-12 col-lg-4 d-none d-lg-block d-xl-block"> 
        <div class="group-banners">
          <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==1 or $homeBanners->type==2): ?>
                    <figure class="banner-image imagespace">
                      <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                    </figure>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?> 
        </div>
    </div>
    </div>
  </div>
</section><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/carousels/boot-carousel-content-with-right-banner.blade.php ENDPATH**/ ?>