<!-- //header style Five -->
<?php echo $__env->make('web.headers.fixedHeader', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
<?php echo $__env->make('web.common.HeaderCategories', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

 <!-- //header style Five -->
 <header id="headerFive" class="header-area header-five header-desktop d-none d-lg-block d-xl-block">
  <div class="header-mini bg-top-bar">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-12">
          <nav id="navbar_0_5" class="navbar navbar-expand-md navbar-dark navbar-0">
            
            <div class="navbar-collapse">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <div class="nav-avatar nav-link">
                    <div class="avatar">
                      <?php
                      if(auth()->guard('customer')->check()){
                       if(auth()->guard('customer')->user()->avatar == null){ ?>
                        <img class="img-fluid" src="<?php echo e(asset('web/images/miscellaneous/avatar.jpg')); ?>">
                      <?php }else{ ?>
                        <img class="img-fluid" src="<?php echo e(auth()->guard('customer')->user()->avatar); ?>">
                      <?php
                            }
                         }
                      ?>
                      </div>
                      <span><?php if(auth()->guard('customer')->check()){ ?><?php echo app('translator')->get('website.Welcome'); ?> <?php echo e(auth()->guard('customer')->user()->first_name); ?>&nbsp;! <?php }?> </span>
                  </div>
                </li>

                <?php if(auth()->guard('customer')->check()){ ?>
                  <li class="nav-item"> <a href="<?php echo e(url('profile')); ?>" class="nav-link"><?php echo app('translator')->get('website.Profile'); ?></a> </li>
                  <li class="nav-item"> <a href="<?php echo e(url('wishlist')); ?>" class="nav-link"><?php echo app('translator')->get('website.Wishlist'); ?> <span class="total_wishlist"> (<?php echo e($result['commonContent']['total_wishlist']); ?>)</span></a> </li>
                  <li class="nav-item"> <a href="<?php echo e(url('compare')); ?>" class="nav-link"><?php echo app('translator')->get('website.Compare'); ?>&nbsp;(<span id="compare"><?php echo e($count); ?></span>)</a> </li>
                  <li class="nav-item"> <a href="<?php echo e(url('orders')); ?>" class="nav-link"><?php echo app('translator')->get('website.Orders'); ?></a> </li>
                  <li class="nav-item"> <a href="<?php echo e(url('shipping-address')); ?>" class="nav-link"><?php echo app('translator')->get('website.Shipping Address'); ?></a> </li>
                  <li class="nav-item"> <a href="<?php echo e(url('logout')); ?>" class="nav-link padding-r0"><?php echo app('translator')->get('website.Logout'); ?></a> </li>
                  <?php }else{ ?>
                    <li class="nav-item"><div class="nav-link"><?php echo app('translator')->get('website.Welcome'); ?>!</div></li>
                    <li class="nav-item"> <a href="<?php echo e(URL::to('/login')); ?>" class="nav-link -before"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;<?php echo app('translator')->get('website.Login/Register'); ?></a> </li>                      
                  <?php } ?>
              </ul> 
            </div>   
          </nav>
        </div>
      </div>
    </div> 
  </div>
  <div class="header-maxi bg-header-bar">
      <div class="container">
        <div class="row align-items-center">
           
          <div class="col-12 col-sm-12 col-lg-4">
            <a href="<?php echo e(URL::to('/')); ?>" class="logo" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.logo'); ?>">
              <?php if($result['commonContent']['settings']['sitename_logo']=='name'): ?>
            <?=stripslashes($result['commonContent']['settings']['website_name'])?>
            <?php endif; ?>
        
            <?php if($result['commonContent']['settings']['sitename_logo']=='logo'): ?>
            <img class="img-fluid" src="<?php echo e(asset('').$result['commonContent']['settings']['website_logo']); ?>" alt="<?=stripslashes($result['commonContent']['settings']['website_name'])?>">
            <?php endif; ?>
              </a>
          </div>
          <div class="col-12 col-sm-12 col-lg-8 navbar-option">
            <?php if(count($languages) > 1): ?>
              <div class="country-flag">
                  <h4><?php echo app('translator')->get('website.Country'); ?>&nbsp;:&nbsp;
                    <ul>
                      <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li><a onclick="myFunction1(<?php echo e($language->languages_id); ?>)" href="#"><img class="img-fluid" src="<?php echo e(asset('').$language->image_path); ?>"></a></li>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </ul>
                  </h4>  
                </div>
                <?php echo $__env->make('web.common.scripts.changeLanguage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
              <?php endif; ?>     
              <?php if(count($currencies) > 1): ?>    
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" >
                    <?php echo e(session('currency_code')); ?>

                  </button>
                  <div class="dropdown-menu">
                    <?php $__currentLoopData = $currencies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $currency): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <a onclick="myFunction2(<?php echo e($currency->id); ?>)" class="dropdown-item" href="#"><?php echo e($currency->code); ?></a>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    
                  </div>
                </div>
                <?php endif; ?> 
                <form class="form-inline" >
                  <div class="search-field-module">   
                    <div class="search-field-wrap">
                        <input  type="search" placeholder="<?php echo app('translator')->get('website.Search Products'); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Search Products'); ?>">
                        <button class="btn btn-secondary swipe-to-top" data-toggle="tooltip" 
                        data-placement="bottom" title="<?php echo app('translator')->get('website.Search Products'); ?>">
                        <i class="fa fa-search"></i></button>
                    </div>
                  </div>
                </form>
                <div class="phone-header">
                    <a href="#">
                        <i class="fas fa-phone"></i>
                        <span class="block">
                          <span class="title"><?php echo app('translator')->get('website.Call Us Now'); ?></span>                    
                          <span class="items" dir="ltr"><?php echo e($result['commonContent']['setting'][11]->value); ?></span>
                        </span>                   
                    </a>
                  </div> 
            </div>
        </div>
      </div>
  </div> 
  <div class="header-navbar bg-menu-bar">
      <div class="container">
        <nav id="navbar_header_9" class="navbar navbar-expand-lg  bg-nav-bar">
    
          <div class="navbar-collapse" >
            <ul class="navbar-nav">
              <?php echo $result['commonContent']["menusRecursive"]; ?>

              
              <li class="nav-item">
                <ul class="pro-header-right-options">
                  <li class="dropdown head-cart-content">
                    <?php echo $__env->make('web.headers.cartButtons.cartButton5', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>     
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </div>
  </div>
</header>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/headers/headerFive.blade.php ENDPATH**/ ?>