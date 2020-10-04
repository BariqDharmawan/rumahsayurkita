
            <?php if($result['products']['success']==1): ?>
            <?php $__currentLoopData = $result['products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="product">
                <article>
                    <div class="media">
                        <img class="img-fluid" src="<?php echo e(asset('').$products->image_path); ?>" alt="<?php echo e($products->products_name); ?>">
                        <div class="media-body">
                          <div class="row">
                            <div class="col-12 col-md-8  texting">
                              <h3 class="title"><a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo e($products->products_name); ?></a></h3>
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
                            }
                           ?>


                              <div class="price"> <?php echo app('translator')->get('website.Total Price'); ?>: 
                                <?php if(!empty($products->discount_price)): ?>
                                    <span><?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($discount_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?></span>
                                    <del> <?php echo e(Session::get('symbol_left')); ?><?php echo e($orignal_price+0); ?><?php echo e(Session::get('symbol_right')); ?></del>
                                    <?php else: ?>
                                    <span><?php echo e(Session::get('symbol_left')); ?>&nbsp;<?php echo e($orignal_price+0); ?>&nbsp;<?php echo e(Session::get('symbol_right')); ?></span>
                                    <?php endif; ?> 
                               </div>
                              <div class="wishlist-discription">
                                <?=stripslashes($products->products_description)?>
                              </div>
                             
                              <div class="buttons">
                                <?php if($products->products_type==0): ?>
                                <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                    <?php if($products->defaultStock==0): ?>

                                        <button type="button" class="btn  btn-danger swipe-to-top" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
                                    <?php elseif($products->products_min_order>1): ?>
                                    <a class="btn  btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                    <?php else: ?>
                                        <button type="button" class="btn  btn-secondary cart swipe-to-top" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Add to Cart'); ?></button>
                                    <?php endif; ?>
                                    <?php else: ?>
                                        <button type="button" class="btn btn-secondary active swipe-to-top"><?php echo app('translator')->get('website.Added'); ?></button>
                                    <?php endif; ?>
                                <?php elseif($products->products_type==1): ?>
                                    <a class="btn  btn-secondary swipe-to-top" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                <?php elseif($products->products_type==2): ?>
                                    <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn  btn-secondary swipe-to-top"><?php echo app('translator')->get('website.External Link'); ?></a>
                                <?php endif; ?>
                              </div>
                            </div>
                            <div class="col-12 col-md-4 detail">
                              <div class="share"><a href="<?php echo e(URL::to("/UnlikeMyProduct")); ?>/<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Remove'); ?> &nbsp;<i class="fas fa-trash-alt"></i></a> </div>
                            </div>
                            </div>
                        </div>									
                    </div>
                </article>
            </div>
                    <hr class="border-line">

            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php if(count($result['products']['product_data'])> 0 and $result['limit'] > $result['products']['total_record']): ?>
                 <style>
                    #load_wishlist{
                        display: none;
                    }
                    #loaded_content{
                        display: block !important;
                    }
                    #loaded_content_empty{
                        display: none !important;
                    }
                 </style>
                <?php endif; ?>
            <?php elseif(count($result['products']['product_data'])==0 or $result['products']['success']==0): ?>
            	<style>
             	#load_wishlist{
					display: none;
				}
				#loaded_content{
					display: none !important;
				}
				#loaded_content_empty{
					display: block !important;
				}
             </style>
            <?php endif; ?>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/wishlistproducts.blade.php ENDPATH**/ ?>