<!-- //footer style Seven -->
 <footer id="footerSeven"  class="footer-area footer-seven footer-desktop d-none d-lg-block d-xl-block">
      <div class="container">
        <div class="row">
            <div class="col-12 col-lg-4">
                <h5><?php echo app('translator')->get('website.About Store'); ?></h5>
                <p style="margin-bottom:0">
                   <?php echo app('translator')->get('website.footer text'); ?>
                </p>
            </div>
            <div class="col-12 col-md-6 col-lg-2">
                <h5><?php echo app('translator')->get('website.Information'); ?></h5>
                <ul class="links-list pl-0 mb-0">
                  <?php if(count($result['commonContent']['pages'])): ?>
                      <?php $__currentLoopData = $result['commonContent']['pages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <li> <a href="<?php echo e(URL::to('/page?name='.$page->slug)); ?>"><i class="fa fa-angle-right"></i><?php echo e($page->name); ?></a> </li>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  <?php endif; ?>
                </ul>
            </div>

            <div class="col-12 col-lg-3">
                <h5><?php echo app('translator')->get('website.Contact Us'); ?></h5>
                <ul class="contact-list  pl-0 mb-0">
                  <li> <i class="fas fa-map-marker"></i><span><?php echo e($result['commonContent']['setting'][4]->value); ?> <?php echo e($result['commonContent']['setting'][5]->value); ?> <?php echo e($result['commonContent']['setting'][6]->value); ?>, <?php echo e($result['commonContent']['setting'][7]->value); ?> <?php echo e($result['commonContent']['setting'][8]->value); ?></span> </li>
                  <li> <i class="fas fa-phone"></i><span dir="ltr">(<?php echo e($result['commonContent']['setting'][11]->value); ?>)</span> </li>
                  <li> <i class="fas fa-envelope"></i><span> <a href="mailto:<?php echo e($result['commonContent']['setting'][3]->value); ?>"><?php echo e($result['commonContent']['setting'][3]->value); ?></a> </span> </li>

                </ul>
            </div>
            <div class="col-12 col-lg-3">
                <div class="newsletter">
                    <h5><?php echo app('translator')->get('website.Subscribe'); ?></h5>
                    <div class="block">

                      <?php if(!empty($result['commonContent']['setting'][118]) and $result['commonContent']['setting'][118]->value==1): ?>

                      <form class="form-inline mailchimp-form" action="<?php echo e(url('subscribeMail')); ?>" >
                        <div class="search-field-module">                           
                       
                          <div class="search-field-wrap">
                            <input type="email" name="email" class="email" placeholder="<?php echo app('translator')->get('website.Your email address here'); ?>">
                              <button type="submit" class="btn btn-secondary swipe-to-top" >
                              <i class="fas fa-location-arrow"></i></button>
                              <div class="alert alert-success alert-dismissible success-subscribte" role="alert" style="opacity: 500; display: none;"></div>
            
                                  <div class="alert alert-danger alert-dismissible error-subscribte" role="alert" style="opacity: 500; display: none;"></div>
                          </div>
                        </div>
                      </form>
                        <?php endif; ?>

                   </div>
                </div>
                <div class="socials">
                    <h5><?php echo app('translator')->get('payment method'); ?></h5>
                    <img class="img-fluid" src="<?php echo e(asset('web/images/miscellaneous/payments.png')); ?>">
                </div>
              </div>
        </div>
      </div>
      <div class="container-fluid p-0">
          <div class="copyright-content">
              <div class="container">
                <div class="row align-items-center">
                    <div class="col-12 col-lg-4">
                        <h5><?php echo app('translator')->get('DOWNLOAD OUR APPS'); ?></h5>
                        <div class="apps-download">
                            <a href="<?php echo e($result['commonContent']['setting'][109]->value); ?>"><img class="img-fluid" src="<?php echo e(asset('web/images/miscellaneous/google-play-btn.png')); ?>"></a>
                            <a href="<?php echo e($result['commonContent']['setting'][110]->value); ?>"><img class="img-fluid" src="<?php echo e(asset('web/images/miscellaneous/app-store-btn.png')); ?>"></a>
                        </div>

                      </div>
                      <div class="col-12 col-lg-4 socials">
                          <h5><?php echo app('translator')->get('website.Follow Us'); ?></h5>
                          <div class="social">
                            <ul class="list">
                              <li>
                                  <?php if(!empty($result['commonContent']['setting'][50]->value)): ?>
                                    <a href="<?php echo e($result['commonContent']['setting'][50]->value); ?>" class="fab fa-facebook-f" target="_blank"></a>
                                    <?php else: ?>
                                      <a href="#" class="fab fa-facebook-f"></a>
                                    <?php endif; ?>
                                </li>
                                <li>
                                <?php if(!empty($result['commonContent']['setting'][52]->value)): ?>
                                    <a href="<?php echo e($result['commonContent']['setting'][52]->value); ?>" class="fab fa-twitter" target="_blank"></a>
                                <?php else: ?>
                                    <a href="#" class="fab fa-twitter"></a>
                                <?php endif; ?></li>
                                <li>
                                <?php if(!empty($result['commonContent']['setting'][51]->value)): ?>
                                    <a href="<?php echo e($result['commonContent']['setting'][51]->value); ?>"  target="_blank"><i class="fab fa-google"></i></a>
                                <?php else: ?>
                                    <a href="#"><i class="fab fa-google"></i></a>
                                <?php endif; ?>
                                </li>
                                <li>
                                <?php if(!empty($result['commonContent']['setting'][53]->value)): ?>
                                    <a href="<?php echo e($result['commonContent']['setting'][53]->value); ?>" class="fab fa-linkedin-in" target="_blank"></a>
                                <?php else: ?>
                                    <a href="#" class="fab fa-linkedin-in"></a>
                                <?php endif; ?>
                                </li>
                            </ul>
                          </div>

                        </div>
                    <div class="col-12 col-lg-4">
                      <div class="footer-info">
                          <strong> © <?php echo app('translator')->get('website.Copy Rights'); ?>.  <a href="<?php echo e(url('/page?name=refund-policy')); ?>"><?php echo app('translator')->get('website.Privacy'); ?></a>&nbsp;&bull;&nbsp;<a href="<?php echo e(url('/page?name=term-services')); ?>"><?php echo app('translator')->get('website.Terms'); ?></a></strong>
                      </div>

                    </div>
                </div>
              </div>
            </div>
      </div>
</footer>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/footers/footer7.blade.php ENDPATH**/ ?>