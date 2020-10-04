<!-- //footer style Five  -->

<footer id="footerFive"  class="footer-area footer-nine footer-desktop d-none d-lg-block d-xl-block pro-content">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-6 col-lg-4">
          <div class="row">
            <div class="col-10">
                <div class="footer-image mb-4">
                  <h5><?php echo app('translator')->get('website.DOWNLOAD OUR APP'); ?></h5>
                  <a href="http://soon.rumahsayurkita.com/"><img class="img-fluid" src="https://1.bp.blogspot.com/-k6--DbZ6QDk/Xxk7uirDiII/AAAAAAAABBA/M62MvRrxf18zWVS4OkMDUmZB1AQFVEYMACLcBGAsYHQ/s1600/en_badge_web_generic.png" alt="google-btn"></a>
                  <a href="http://download.rumahsayurkita.com/"><img class="img-fluid" src="https://1.bp.blogspot.com/-h4td8v66Z3c/X1lRI_vTxTI/AAAAAAAABDI/Q0IGeS-TZNEdaljwIBbR6yDJHv_a5n3CgCLcBGAsYHQ/s646/direct%2Bdownload.png" alt="directdownload"></a>
                </div>
                <div class="footer-image mb-3">
                    <h5><?php echo app('translator')->get('website.We Using safe payments'); ?></h5>
                      <img class="img-fluid" src="https://1.bp.blogspot.com/-AaB-8Kb8YCU/Xxk9w2kZbhI/AAAAAAAABBQ/zNVosOTkQw4wkFJsyZT_4DFyFpGoWJGzgCLcBGAsYHQ/s320/bank.png" alt="image">
                  </div>
            </div>
          </div>
      </div>
      <div class="col-12 col-md-6 col-lg-8">
        <div class="row">
          <div class="col-12 col-md-6 col-lg-3">
                <div class="single-footer single-footer-left">
                  <h5><?php echo app('translator')->get('website.Our Services'); ?></h5>
                  <ul class="links-list pl-0 mb-0">
                    <li> <a href="<?php echo e(URL::to('/')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Home'); ?></a> </li>
                    <li> <a href="<?php echo e(URL::to('/shop')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Shop'); ?></a> </li>
                    <li> <a href="<?php echo e(URL::to('/orders')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Orders'); ?></a> </li>
                    <li> <a href="<?php echo e(URL::to('/viewcart')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Shopping Cart'); ?></a> </li>
                    <li> <a href="<?php echo e(URL::to('/wishlist')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Wishlist'); ?></a> </li>           
                  </ul>
                </div>
          </div>
          <div class="col-12 col-md-6 col-lg-4">
            <h5><?php echo app('translator')->get('website.Information'); ?></h5>
            <ul class="links-list pl-0 mb-0">
              <?php if(count($result['commonContent']['pages'])): ?>
                  <?php $__currentLoopData = $result['commonContent']['pages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <li> <a href="<?php echo e(URL::to('/page?name='.$page->slug)); ?>"><i class="fa fa-angle-right"></i><?php echo e($page->name); ?></a> </li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php endif; ?>
                  <li> <a href="<?php echo e(URL::to('/contact')); ?>"><i class="fa fa-angle-right"></i><?php echo app('translator')->get('website.Contact Us'); ?></a> </li>
            </ul>
          </div>
          <div class="col-12 col-lg-5">
              <h5><?php echo app('translator')->get('website.Contact Us'); ?></h5>
              <ul class="contact-list  pl-0 mb-0">
                <li> <i class="fas fa-map-marker"></i><span><?php echo e($result['commonContent']['setting'][4]->value); ?> <?php echo e($result['commonContent']['setting'][5]->value); ?> <?php echo e($result['commonContent']['setting'][6]->value); ?>, <?php echo e($result['commonContent']['setting'][7]->value); ?> <?php echo e($result['commonContent']['setting'][8]->value); ?></span> </li>
              <li> <i class="fas fa-phone"></i><span dir="ltr">(<?php echo e($result['commonContent']['setting'][11]->value); ?>)</span> </li>
              <li> <i class="fas fa-envelope"></i><span> <a href="mailto:<?php echo e($result['commonContent']['setting'][3]->value); ?>"><?php echo e($result['commonContent']['setting'][3]->value); ?></a> </span> </li>
              </ul>
              
          </div>
        </div>
          
      </div>
      
    </div>
    
  </div>
  <div class="container-fluid p-0">
      <div class="social-content">
          <div class="container">
            <div class="social-div">
              <div class="row align-items-center justify-content-between">
                
                <div class="col-12 col-md-4">
                      
                      <div class="footer-info">
                        © <?php echo app('translator')->get('website.Copy Rights'); ?>.  <a href="<?php echo e(url('/page?name=refund-policy')); ?>"><?php echo app('translator')->get('website.Privacy'); ?></a>&nbsp;&bull;&nbsp;<a href="<?php echo e(url('/page?name=term-services')); ?>"><?php echo app('translator')->get('website.Terms'); ?></a>
                      </div>
                </div>
                <div class="col-12 col-md-4">
                        <ul class="social">

                            <li>
                              <?php if(!empty($result['commonContent']['setting'][50]->value)): ?>
                                  <a href="<?php echo e($result['commonContent']['setting'][50]->value); ?>" class="fab fa-facebook-f" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.facebook'); ?>"></a>
                              <?php else: ?>
                              <a href="<?php echo e($result['commonContent']['setting'][50]->value); ?>" class="fab fa-facebook-f" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.facebook'); ?>"></a>
                              <?php endif; ?>
                            </li> 
                            <li>
                              <?php if(!empty($result['commonContent']['setting'][52]->value)): ?>
                                  <a href="<?php echo e($result['commonContent']['setting'][52]->value); ?>"  class="fab fa-twitter" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.twitter'); ?>"></a>
                              <?php else: ?>
                                  <a href="#" class="fab fa-twitter" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.twitter'); ?>"></a>
                              <?php endif; ?>
                            </li>
            
                            <li>
                              <?php if(!empty($result['commonContent']['setting'][51]->value)): ?>
                                  <a href="<?php echo e($result['commonContent']['setting'][51]->value); ?>" class="fab sk fa-google" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.google'); ?>"></a>
                              <?php else: ?>
                                  <a href="#"><i class="fab sk fa-google"  data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.google'); ?>"></i></a>
                              <?php endif; ?>
                            </li>
            
                            <li>
                              <?php if(!empty($result['commonContent']['setting'][53]->value)): ?>
                                  <a href="<?php echo e($result['commonContent']['setting'][53]->value); ?>" class="fab fa-instagram" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Instagram'); ?>"></a>
                              <?php else: ?>
                                  <a href="#" class="fab fa-instagram" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Instagram'); ?>"></a>
                              <?php endif; ?>
                            </li>

                        </ul>
                </div>
              </div>
          </div>
          </div>  
      </div>
  </div>
</footer>

<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/footers/footer5.blade.php ENDPATH**/ ?>