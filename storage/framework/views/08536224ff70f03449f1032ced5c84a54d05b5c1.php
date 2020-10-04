<div class="product product8">
  <article>
    <div class="thumb">
      <div class="badges">
        <?php 
          $current_date = date("Y-m-d", strtotime("now"));

          $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
          $date=date_create($string);
          date_add($date,date_interval_create_from_date_string($web_setting[20]->value." days"));
          $after_date = date_format($date,"Y-m-d");
          if($after_date>=$current_date){
            print '<span class="badge badge-info">';
            print __('website.New');
            print '</span>';
          }
          ?> 
            <?php
          if(!empty($products->discount_price)){
            $discount_price = $products->discount_price * session('currency_value');
          }
          $orignal_price = $products->products_price * session('currency_value');

          if(!empty($products->discount_price)){

          if(($orignal_price+0)>0){
            $discounted_price = $orignal_price-$discount_price;
            $discount_percentage = $discounted_price/$orignal_price*100;
          }else{
            $discount_percentage = 0;
            $discounted_price = 0;
          }
          ?>
        
          <span class="badge badge-danger"  data-toggle="tooltip" data-placement="bottom" title="<?php echo (int)$discount_percentage; ?>% <?php echo app('translator')->get('website.off'); ?>"><?php echo (int)$discount_percentage; ?>%</span>
          <?php }?>
          
        
        <?php if($products->is_feature == 1): ?>
          <span class="badge badge-success"><?php echo app('translator')->get('website.Featured'); ?></span>                                            
        <?php endif; ?>  
      </div>


      <div class="product-hover d-none d-lg-flex d-xl-flex">
        <div class="icons">         
            
          <a href="javascript:void(0)" class="icon active swipe-to-top is_liked" products_id="<?=$products->products_id?>" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="<?php echo app('translator')->get('website.Wishlist'); ?>">
            <i class="fas fa-heart"></i>
          </a>
  
          <div class="icon swipe-to-top modal_show" products_id ="<?php echo e($products->products_id); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Quick View'); ?>">
            <i class="fas fa-eye"></i>
          </div>
          <a onclick="myFunction3(<?php echo e($products->products_id); ?>)" class="btn-secondary icon swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Compare'); ?>">
            <i class="fas fa-align-right" data-fa-transform="rotate-90"></i>
          </a>
        
        </div>
         
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
      <h5 class="title text-center"><a href="product-page1.html">Crystal High Heels</a></h5>
     
      <div class="price">                     
        <?php if(!empty($products->discount_price)): ?>
          <?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($discount_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?>

        <span> <?php echo e(Session::get('symbol_left')); ?><?php echo e($orignal_price+0); ?><?php echo e(Session::get('symbol_right')); ?></span>
        <?php else: ?>
          <?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($orignal_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?>

        <?php endif; ?>                  
      </div>  
    <div class="btn-hover">

        <?php if($products->products_type==0): ?>
          <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
              <?php if($products->products_min_order>1): ?>
              <a class="btn btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><i class="fas fa-shopping-bag"></i> <?php echo app('translator')->get('website.View Detail'); ?></a>
              <?php else: ?>
                  <button type="button" class="btn btn-secondary cart swipe-to-top" products_id="<?php echo e($products->products_id); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Add to Cart'); ?>"><i class="fas fa-shopping-bag"></i> <?php echo app('translator')->get('website.Add to Cart'); ?></button>
              <?php endif; ?>
          <?php else: ?>
              <button type="button" class="btn btn-secondary active swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.Added'); ?>"><i class="fas fa-shopping-bag"></i> <?php echo app('translator')->get('website.Added'); ?></button>
          <?php endif; ?>
      <?php elseif($products->products_type==1): ?>
          <a class="btn btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.View Detail'); ?>"><i class="fas fa-shopping-bag"></i> <?php echo app('translator')->get('website.View Detail'); ?></a>
      <?php elseif($products->products_type==2): ?>
          <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" title="<?php echo app('translator')->get('website.External Link'); ?>"><i class="fas fa-shopping-bag"></i><?php echo app('translator')->get('website.External Link'); ?></a>
      <?php endif; ?>

    </div>   
    </div>   
  </article>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/common/product_card_style/8.blade.php ENDPATH**/ ?>