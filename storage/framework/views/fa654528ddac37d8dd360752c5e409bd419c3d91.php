<div class="product2 product10">
  <article>
    <div class="pro-thumb">

    <img class="img-fluid" src="<?php echo e(asset('').$products->image_path); ?>" alt="<?php echo e($products->products_name); ?>">

        <div class="badges">
          <?php
            $current_date = date("Y-m-d", strtotime("now"));

            $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
            $date = date_create($string);
            date_add($date, date_interval_create_from_date_string($web_setting[20]->value . " days"));
            $after_date = date_format($date, "Y-m-d");
            if ($after_date >= $current_date) {
                print '<span class="badge badge-info">';
                print __('website.New');
                print '</span>';
            }
          ?>
          <?php
              if (!empty($products->discount_price)) {
                  $discount_price = $products->discount_price * session('currency_value');
              }
              $orignal_price = $products->products_price * session('currency_value');

              if (!empty($products->discount_price)) {

                  if (($orignal_price + 0) > 0) {
                      $discounted_price = $orignal_price - $discount_price;
                      $discount_percentage = $discounted_price / $orignal_price * 100;
                  } else {
                      $discount_percentage = 0;
                      $discounted_price = 0;
                  }
        ?>

        <span class="badge badge-danger"  data-toggle="tooltip" data-placement="bottom" title="<?php echo (int) $discount_percentage; ?>% <?php echo app('translator')->get('website.off'); ?>"><?php echo (int) $discount_percentage; ?>%</span>
        <?php }?>


      <?php if($products->is_feature == 1): ?>
        <span class="badge badge-success"><?php echo app('translator')->get('website.Featured'); ?></span>
      <?php endif; ?>
          </div>


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

        <h5 class="title"><a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo e($products->products_name); ?></a></h5>

        <div class="pricetag">

            <div class="price">
              <?php if(!empty($products->discount_price)): ?>
                <?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($discount_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?>

              <span> <?php echo e(Session::get('symbol_left')); ?><?php echo e($orignal_price+0); ?><?php echo e(Session::get('symbol_right')); ?></span>
              <?php else: ?>
                <?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($orignal_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?>

              <?php endif; ?>
            </div>


              <?php if($products->products_type==0): ?>
                <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                    <?php if($products->products_min_order>1): ?>
                    <a class="icon btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><i class="fas fa-shopping-bag"></i></a>
                    <?php else: ?>
                        <button type="button" class="icon btn-secondary cart swipe-to-top" products_id="<?php echo e($products->products_id); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Add to Cart'); ?>"><i class="fas fa-shopping-bag"></i> </button>
                    <?php endif; ?>
                <?php else: ?>
                    <button type="button" class="icon btn-secondary active swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Added'); ?>"><i class="fas fa-shopping-bag"></i> </button>
                <?php endif; ?>
            <?php elseif($products->products_type==1): ?>
                <a class="icon btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><i class="fas fa-shopping-bag"></i></a>
            <?php elseif($products->products_type==2): ?>
                <a href="<?php echo e($products->products_url); ?>" target="_blank" class="icon btn-secondary" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.External Link'); ?>"><i class="fas fa-shopping-bag"></i></a>
            <?php endif; ?>
            
        </div>


    </div>
  </article>
</div>


<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/common/product_card_style/10.blade.php ENDPATH**/ ?>