<!-- //banner fifteen -->
<div class="banner-fifteen">

      <div class="container">
          <div class="group-banners">
              <div class="row">
                    <div class="col-12 col-md-4">
                      <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                       <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <?php if($homeBanners->type==26): ?>
                    <figure class="banner-image " style="margin-bottom: 30px;">
                        <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                      </figure>
                      <?php endif; ?>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                    <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                     <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($homeBanners->type==28): ?>
                      <figure class="banner-image ">
                          <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                        </figure>
                        <?php endif; ?>
                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                    </div>
                    <div class="col-12 col-md-4">
                      <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                       <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <?php if($homeBanners->type==25): ?>
                        <figure class="banner-image banner-column-5">
                          <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                        </figure>
                        <?php endif; ?>
                       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      <?php endif; ?>
                    </div>
                    <div class="col-12 col-md-4">
                      <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                       <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <?php if($homeBanners->type==27): ?>
                      <figure class="banner-image " style="margin-bottom: 30px;">
                        <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                      </figure>
                      <?php endif; ?>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                    <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                     <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($homeBanners->type==29): ?>
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
<?php /**PATH /home/u596618187/domains/rumahsayurkita.com/public_html/resources/views/web/banners/banner15.blade.php ENDPATH**/ ?>