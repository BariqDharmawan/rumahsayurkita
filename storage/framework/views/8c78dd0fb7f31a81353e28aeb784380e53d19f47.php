<div class="product">
  <article>
    <div class="thumb">
      <div class="badges">
          <?php
              $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
              $date=date_create($string);
              date_add($date,date_interval_create_from_date_string($result['commonContent']['settings']['new_product_duration']." days"));
              $after_date = date_format($date,"Y-m-d");
              if($after_date >= date("Y-m-d", strtotime("now"))){
                print '<span class="badge badge-info">';
                print __('website.New');
                print '</span>';
              }
          ?>

          <?php $__currentLoopData = $discountPercentages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $discount_percentage): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($loop->index == $loop->parent->index): ?>
                  <span class="badge badge-danger"  data-toggle="tooltip" data-placement="bottom"
                    title="<?php echo e((int)$discount_percentage); ?> '%' <?php echo app('translator')->get('website.off'); ?>">
                      <?php echo e((int)$discount_percentage); ?> %
                  </span>
              <?php endif; ?>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        <?php if($products->is_feature == 1): ?>
          <span class="badge badge-success"><?php echo app('translator')->get('website.Featured'); ?></span>
        <?php endif; ?>

      </div>
      <div class="product-hover d-none d-lg-block d-xl-block">
        <div class="icons">

          <a class="icon active swipe-to-top is_liked" products_id="<?=$products->products_id?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Wishlist'); ?>">
            <i class="fas fa-heart"></i>
          </a>

          <div class="icon swipe-to-top modal_show " products_id ="<?php echo e($products->products_id); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Quick View'); ?>">
            <i class="fas fa-eye"></i>
          </div>

          <a onclick="myFunction3(<?php echo e($products->products_id); ?>)" class="icon swipe-to-top"  data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Compare'); ?>"><i class="fas fa-align-right" data-fa-transform="rotate-90"></i></a>
        </div>
        <?php if($products->products_type==0): ?>
          <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
            <?php if($products->products_min_order>1): ?>
              <a class="btn btn-block  btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
            <?php else: ?>
              <button type="button" class="btn btn-block  btn-secondary cart swipe-to-top" products_id="<?php echo e($products->products_id); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Add to Cart'); ?>"><?php echo app('translator')->get('website.Add to Cart'); ?></button>
            <?php endif; ?>
          <?php else: ?>
            <button type="button" class="btn btn-block  btn-secondary active swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Added'); ?>"><?php echo app('translator')->get('website.Added'); ?></button>
          <?php endif; ?>
        <?php elseif($products->products_type==1): ?>
          <a class="btn btn-block  btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
        <?php elseif($products->products_type==2): ?>
          <a href="<?php echo e($products->products_url); ?> swipe-to-top" target="_blank" class="btn btn-block  btn-secondary" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.External Link'); ?>"><?php echo app('translator')->get('website.External Link'); ?></a>
        <?php endif; ?>


      </div>
      <div class="mobile-icons d-lg-none d-xl-none">
        <div class="icons">
          <div class="icon-liked">

            <a class="icon active swipe-to-top is_liked" products_id="<?=$products->products_id?>">
              <i class="fas fa-heart"></i>
            </a>

          </div>

          <div class="icon modal_show " products_id ="<?php echo e($products->products_id); ?>">
            <i class="fas fa-eye"></i>
          </div>
          <a onclick="myFunction3(<?php echo e($products->products_id); ?>)" class="icon">
            <i class="fas fa-align-right" data-fa-transform="rotate-90"></i>
          </a>
        </div>
      </div>
      <img class="img-fluid" src="<?php echo e(asset('').$products->image_path); ?>" alt="<?php echo e($products->products_name); ?>">
    </div>

    <div class="content">
      <span class="tag">
        <?php

        $cat_name = '';
        foreach($products->categories as $key=>$category){
          $cat_name = $category->categories_name;
        }

        echo $cat_name;
        ?>
      </span>
      <h5 class="title text-center"><a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo e($products->products_name); ?></a></h5>
      <div class="expand-detail">
        <?=stripslashes($products->products_description)?>
      </div>
      <div class="price">
        <?php $__currentLoopData = $originalPrices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $orignal_price): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php if($loop->index == $loop->parent->index): ?>
            <?php if(!empty($products->discount_price)): ?>
              &nbsp;<?php echo e($discount_price+0); ?>&nbsp;
              <span><?php echo e($orignal_price); ?></span>
            <?php else: ?>
              &nbsp;<?php echo e($orignal_price); ?>&nbsp;
            <?php endif; ?>
          <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
    </div>


    <div class="mobile-buttons d-lg-none d-xl-none">
      <?php if($products->products_type==0): ?>
        <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
          <?php if($products->defaultStock==0): ?>

            <button type="button" class="btn  btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
          <?php elseif($products->products_min_order>1): ?>
            <a class="btn  btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
          <?php else: ?>
            <button type="button" class="btn  btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Add to Cart'); ?></button>
          <?php endif; ?>
        <?php else: ?>
          <button type="button" class="btn btn-secondary active"><?php echo app('translator')->get('website.Added'); ?></button>
        <?php endif; ?>
      <?php elseif($products->products_type==1): ?>
        <a class="btn  btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
      <?php elseif($products->products_type==2): ?>
        <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn  btn-secondary"><?php echo app('translator')->get('website.External Link'); ?></a>
      <?php endif; ?>
    </div>
  </article>
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/common/product_card_style/1.blade.php ENDPATH**/ ?>