<!-- //banner nineteen -->
 <div class="banner-nineteen">

    <div class="container">
        <div class="group-banners">
            <div class="row">
              <div class="col-12 col-md-4">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==37): ?>
                <figure class="banner-image imagespace">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
              <div class="col-12 col-md-5">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==33): ?>
                <figure class="banner-image imagespace">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
              <div class="col-12 col-md-3">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==35): ?>
                <figure class="banner-image imagespace">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
            </div>
            <div class="row">
              <div class="col-12 col-md-4">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==38): ?>
                <figure class="banner-image ">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
              <div class="col-12 col-md-3">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==36): ?>
                <figure class="banner-image ">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
              <div class="col-12 col-md-5">
                <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                 <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($homeBanners->type==34): ?>
                <figure class="banner-image ">
                  <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                </figure>
                <?php endif; ?>
               <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
              </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/banners/banner19.blade.php ENDPATH**/ ?>