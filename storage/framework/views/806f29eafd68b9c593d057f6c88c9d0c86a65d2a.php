<?php echo $__env->make('web.headers.fixedHeader', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<header id="headerOne" class="header-area header-one  header-desktop d-none d-lg-block d-xl-block">
  <div class="header-mini bg-top-bar">
    <div class="container">
      <div class="row justify-content-end">
        <div class="col-12 col-md-6">
          <ul class="pro-header-options">
            <li>
              <p>
                <?php if(auth()->guard('customer')->check()){ ?>
                <?php echo app('translator')->get('website.Welcome'); ?> <?php echo e(auth()->guard('customer')->user()->first_name); ?>&nbsp;! <?php }?>
              </p>
            </li>
            <li class="dropdown">
              <button class="btn dropdown-toggle" type="button">
                <?php echo app('translator')->get('website.My Account'); ?>
              </button>
              <div class="dropdown-menu">
                <?php if(auth()->guard('customer')->check()){ ?>
                <a class="dropdown-item" href="<?php echo e(url('profile')); ?>"><?php echo app('translator')->get('website.Profile'); ?></a>
                <a class="dropdown-item" href="<?php echo e(url('wishlist')); ?>">
                  <?php echo app('translator')->get('website.Wishlist'); ?>
                  <span class="total_wishlist">
                    (<?php echo e($result['commonContent']['total_wishlist']); ?>)
                  </span>
                </a>
                <a class="dropdown-item" href="<?php echo e(url('compare')); ?>">
                  <?php echo app('translator')->get('website.Compare'); ?>&nbsp;(<span id="compare"><?php echo e($count); ?></span>)
                </a>
                <a class="dropdown-item" href="<?php echo e(url('orders')); ?>"><?php echo app('translator')->get('website.Orders'); ?></a>
                <a class="dropdown-item" href="<?php echo e(url('shipping-address')); ?>"><?php echo app('translator')->get('website.Shipping Address'); ?></a>
                <a class="dropdown-item" href="<?php echo e(url('logout')); ?>"><?php echo app('translator')->get('website.Logout'); ?></a>
                <?php }else{ ?>
                <a class="dropdown-item" href="<?php echo e(URL::to('/login')); ?>"><i class="fa fa-lock"
                    aria-hidden="true"></i>&nbsp;<?php echo app('translator')->get('website.Login/Register'); ?></a>
                <?php } ?>
              </div>
            </li>
          </ul>

        </div>
      </div>
    </div>
  </div>
  <div class="header-maxi bg-header-bar">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-12 col-md-12 col-lg-3">
          <a href="<?php echo e(URL::to('/')); ?>" class="logo" data-toggle="tooltip" data-placement="bottom"
            title="<?php echo app('translator')->get('website.logo'); ?>">
            <?php if($result['commonContent']['settings']['sitename_logo']=='name'): ?>
            <?=stripslashes($result['commonContent']['settings']['website_name'])?>
            <?php endif; ?>

            <?php if($result['commonContent']['settings']['sitename_logo']=='logo'): ?>
            <img class="img-fluid" src="<?php echo e(asset('').$result['commonContent']['settings']['website_logo']); ?>"
              alt="<?=stripslashes($result['commonContent']['settings']['website_name'])?>">
            <?php endif; ?>
          </a>
        </div>

        <div class="col-12 col-sm-6">

          <form class="form-inline" action="<?php echo e(URL::to('/shop')); ?>" method="get">
            <div class="search-field-module">
              <input type="hidden" name="category" class="category-value" value="">
              <?php echo $__env->make('web.common.HeaderCategories', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
              <button class="btn btn-secondary swipe-to-top dropdown-toggle header-selection" type="button"
                id="headerOneCartButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get(" website.Choose Any Category"); ?>">
                <?php echo app('translator')->get("website.Choose Any Category"); ?>
              </button>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="headerOneCartButton">
                <?php productCategories(); ?>
              </div>
              <div class="search-field-wrap">
                <input type="search" name="search" placeholder="<?php echo app('translator')->get('website.Search entire store here'); ?>..."
                  data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Search Products'); ?>"
                  value="<?php echo e(app('request')->input('search')); ?>">
                <button class="btn btn-secondary swipe-to-top" data-toggle="tooltip" data-placement="bottom"
                  title="<?php echo app('translator')->get('website.Search Products'); ?>">
                  <i class="fa fa-search"></i></button>
              </div>
            </div>
          </form>
        </div>
        <div class="col-6 col-sm-6 col-md-4 col-lg-3">
          <ul class="pro-header-right-options">
            <li>
              <a href="<?php echo e(URL::to('/wishlist')); ?>" class="btn" data-toggle="tooltip" data-placement="bottom"
                title="<?php echo app('translator')->get('website.Wishlist'); ?>">
                <i class="far fa-heart"></i>
                <span class="badge badge-secondary total_wishlist"><?php echo e($result['commonContent']['total_wishlist']); ?></span>
              </a>
            </li>
            <li class="dropdown head-cart-content">
              <?php echo $__env->make('web.headers.cartButtons.cartButton9', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="header-navbar bg-menu-bar">
    <div class="container">
      <nav id="navbar_header_9" class="navbar navbar-expand-lg  bg-nav-bar">

        <div class="navbar-collapse">
          <ul class="navbar-nav">
            <?php echo $result['commonContent']["menusRecursive"]; ?>


          </ul>
        </div>
      </nav>
    </div>
  </div>
</header><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/headers/headerNine.blade.php ENDPATH**/ ?>