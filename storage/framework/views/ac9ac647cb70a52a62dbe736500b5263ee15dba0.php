<!-- //banner five -->
<div class="banner-five">

      <div class="container">
          <div class="group-banners">
              <div class="row">
                  <div class="col-12 col-md-6">
                      <div class="row">
                        <div class="col-12 col-md-6">
                          <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                           <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <?php if($homeBanners->type==10): ?>
                          <figure class="banner-image imagespace">
                            <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                          </figure>
                          <?php endif; ?>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        </div>
                        <div class="col-12 col-md-6">
                          <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                           <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <?php if($homeBanners->type==11): ?>
                          <figure class="banner-image ">
                            <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                          </figure>
                          <?php endif; ?>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        </div>
                        <div class="col-12 col-md-6">
                          <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                           <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <?php if($homeBanners->type==12): ?>
                            <figure class="banner-image ">
                              <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                            </figure>
                            <?php endif; ?>
                           <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          <?php endif; ?>
                          </div>
                          <div class="col-12 col-md-6">
                            <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                             <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($homeBanners->type==13): ?>
                              <figure class="banner-image ">
                                <a href="<?php echo e($homeBanners->banners_url); ?>"><img class="img-fluid" src="<?php echo e(asset('').$homeBanners->path); ?>" alt="Banner Image"></a>
                              </figure>
                              <?php endif; ?>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                            </div>
                      </div>
                    </div>
                  <div class="col-12 col-md-6">
                    <?php if(count($result['commonContent']['homeBanners'])>0): ?>
                     <?php $__currentLoopData = ($result['commonContent']['homeBanners']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $homeBanners): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($homeBanners->type==14): ?>
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
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/banners/banner5.blade.php ENDPATH**/ ?>