<?php $__env->startSection('content'); ?>

      <section class="product-page product-page-one ">
          <div class="container">

            <div class="product-main">

                <div class="row">
                  <div class="col-12 col-sm-12">
                      <div class="row justify-content-end">
                          <nav aria-label="breadcrumb">
                              <ol class="breadcrumb">

                                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>

                                <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
                                  <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
                                  <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['sub_category_slug'])); ?>"><?php echo e($result['sub_category_name']); ?></a></li>
                                <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
                                  <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
                                <?php endif; ?>
                                <li class="breadcrumb-item active"><?php echo e($result['detail']['product_data'][0]->products_name); ?></li>
                              </ol>
                            </nav>
                      </div>
                  </div>
                  <div class="col-12 col-sm-12">
                    <div class="row">
                      <div class="col-12 col-lg-5">

                                                    <div id="carouselExampleIndicators4" class="carousel slide" data-ride="carousel">
                                                      <ol class="carousel-indicators">
                                                        <?php $__currentLoopData = $result['detail']['product_data'][0]->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                          <li data-target="#carouselExampleIndicators4" data-slide-to="<?php echo e($key); ?>" class="<?php if($key==0): ?> active <?php endif; ?>"></li>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                      </ol>
                                                      <div class="carousel-inner">
                                                        <?php

                                                          if(!empty($result['detail']['product_data'][0]->discount_price) or !empty($result['detail']['product_data'][0]->flash_price)){
                                          if(!empty($result['detail']['product_data'][0]->discount_price)){
                                                                $discount_price = $result['detail']['product_data'][0]->discount_price;
                                          }else{
                                            $discount_price = $result['detail']['product_data'][0]->flash_price;
                                          }
                                                              $orignal_price = $result['detail']['product_data'][0]->products_price;

                                                              if(($orignal_price+0)>0){
                                                                  $discounted_price = $orignal_price-$discount_price;
                                                                  $discount_percentage = $discounted_price/$orignal_price*100;
                                                              }else{
                                                                  $discount_percentage = 0;
                                                              }
                                                              echo "<span class='discount-tag'>".(int)$discount_percentage."%</span>";
                                                          }

                                        ?>

                                                             <?php $__currentLoopData = $result['detail']['product_data'][0]->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                          <div class="carousel-item  <?php if($key==0): ?> active <?php endif; ?>">
                                                            <img width="100%" class="first-slide"  src="<?php echo e(asset('').$images->image_path); ?>" width="100%" alt="First slide">
                                                            </a>
                                                          </div>

                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                                                      </div>
                                                      <a class="carousel-control-prev" href="#carouselExampleIndicators4" role="button" data-slide="prev">
                                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                        <span class="sr-only"><?php echo app('translator')->get('website.Previous'); ?></span>
                                                      </a>
                                                      <a class="carousel-control-next" href="#carouselExampleIndicators4" role="button" data-slide="next">
                                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                        <span class="sr-only"><?php echo app('translator')->get('website.Next'); ?></span>
                                                      </a>
                                                </div>

                      </div>
                          <div class="col-12 col-lg-7" >
                              <h1><?php echo e($result['detail']['product_data'][0]->products_name); ?></h1>
                              <div class="list-main">
                                  <div class="icon-liked">
                                      <a onclick="myLike(<?php echo e($result['detail']['product_data'][0]->products_id); ?>)" class="icon active">
                                        <i class="fas fa-heart"></i>
                                        <span products_id='<?php echo e($result['detail']['product_data'][0]->products_id); ?>' class=" is_liked badge badge-secondary" id="like_count"><?php echo e($result['detail']['product_data'][0]->products_liked); ?></span>
                                      </a>
                                    </div>
                                  <ul class="list">
                                    <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
                                      <li><?php echo e($result['sub_category_name']); ?></li>
                                    <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
                                      <li><?php echo e($result['category_name']); ?></li>
                                    <?php endif; ?>
                                      <li> <?php echo e($result['detail']['product_data'][0]->products_ordered); ?>&nbsp;<?php echo app('translator')->get('website.Order(s)'); ?></li>
                                      <?php if($result['detail']['product_data'][0]->products_type == 0): ?>
                                      <?php if($result['detail']['product_data'][0]->defaultStock == 0): ?>
                                      <li class="outstock"><i class="fas fa-check"></i><?php echo app('translator')->get('website.Out of Stock'); ?></li>
                                      <?php else: ?>
                                      <li class="instock"><i class="fas fa-check"></i><?php echo app('translator')->get('website.In stock'); ?></li>
                                      <?php endif; ?>
                                      <?php endif; ?>
                                  </ul>
                               <?php echo $__env->make('web.common.scripts.Like', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                              </div>
                              <form name="attributes" id="add-Product-form" method="post" >
                                  <input type="hidden" name="products_id" value="<?php echo e($result['detail']['product_data'][0]->products_id); ?>">

                                  <input type="hidden" name="products_price" id="products_price" value="<?php if(!empty($result['detail']['product_data'][0]->flash_price)): ?> <?php echo e($result['detail']['product_data'][0]->flash_price+0); ?> <?php elseif(!empty($result['detail']['product_data'][0]->discount_price)): ?><?php echo e($result['detail']['product_data'][0]->discount_price+0); ?><?php else: ?><?php echo e($result['detail']['product_data'][0]->products_price+0); ?><?php endif; ?>">

                                  <input type="hidden" name="checkout" id="checkout_url" value="<?php if(!empty(app('request')->input('checkout'))): ?> <?php echo e(app('request')->input('checkout')); ?> <?php else: ?> false <?php endif; ?>" >

                                  <input type="hidden" id="max_order" value="<?php if(!empty($result['detail']['product_data'][0]->products_max_stock)): ?> <?php echo e($result['detail']['product_data'][0]->products_max_stock); ?> <?php else: ?> 0 <?php endif; ?>" >

                              <div class="controls">
                                <?php if(count($result['detail']['product_data'][0]->attributes)>0): ?>
                                <?php
                                    $index = 0;
                                ?>
                                <?php $__currentLoopData = $result['detail']['product_data'][0]->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$attributes_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    $functionValue = 'function_'.$key++;
                                ?>
                                <input type="hidden" name="option_name[]" value="<?php echo e($attributes_data['option']['name']); ?>" >
                                <input type="hidden" name="option_id[]" value="<?php echo e($attributes_data['option']['id']); ?>" >
                                <input type="hidden" name="<?php echo e($functionValue); ?>" id="<?php echo e($functionValue); ?>" value="0" >
                                <input id="attributeid_<?=$index?>" type="hidden" value="">
                                <input id="attribute_sign_<?=$index?>" type="hidden" value="">
                                <input id="attributeids_<?=$index?>" type="hidden" name="attributeid[]" value="" >
                                  <div class="select-control col-12 col-lg-4">
                                      <select name="<?php echo e($attributes_data['option']['id']); ?>" onChange="getQuantity()" class="form-control attributeid_<?=$index++?>" attributeid = "<?php echo e($attributes_data['option']['id']); ?>">
                                        <option selected>Select <?php echo e($attributes_data['option']['name']); ?></option>
                                        <?php $__currentLoopData = $attributes_data['values']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $values_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option attributes_value="<?php echo e($values_data['products_attributes_id']); ?>" value="<?php echo e($values_data['id']); ?>" prefix = '<?php echo e($values_data['price_prefix']); ?>'  value_price ="<?php echo e($values_data['price']+0); ?>"><?php echo e($values_data['value']); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      </select>
                                  </div>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                                <div class="col-12 col-lg-4">
                                  <div class="input-group item-quantity">

                                    <input type="text" id="quantity" name="quantity" class="form-control input-number" value="<?php if($result['detail']['product_data'][0]->products_min_order>0): ?> <?php echo e($result['detail']['product_data'][0]->products_min_order); ?> <?php else: ?> 1 <?php endif; ?>" min="<?php if($result['detail']['product_data'][0]->products_min_order>0): ?> <?php echo e($result['detail']['product_data'][0]->products_min_order); ?> <?php else: ?> 1 <?php endif; ?>" max="<?php if(!empty($result['detail']['product_data'][0]->products_max_stock) and $result['detail']['product_data'][0]->products_max_stock>0): ?><?php echo e($result['detail']['product_data'][0]->products_max_stock); ?><?php else: ?><?php echo e($result['detail']['product_data'][0]->defaultStock); ?><?php endif; ?>">

                                        <span class="input-group-btn">
                                            <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                              <span class="fas fa-angle-up"></span>
                                            </button>

                                            <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                                <span class="fas fa-angle-down"></span>
                                            </button>
                                        </span>


                                </div>
                                </div>
                              </div>

                              <div class="product-buttons">
                                  <h2>Total Price:
                                    <span>
                                      <?php
                                          if(!empty($products->discount_price)){

                                              $discount_price = $products->discount_price;

                                              $orignal_price = $products->products_price;



                                                            if(($orignal_price+0)>0){
                                          $discounted_price = $orignal_price-$discount_price;
                                          $discount_percentage = $discounted_price/$orignal_price*100;
                                        }else{
                                          $discount_percentage = 0;
                                        }
                                      ?>
                                      <span class="discount-tag"><?php echo (int)$discount_percentage; ?>%</span>
                                     <?php } ?>
                                      <?php if(!empty($result['detail']['product_data'][0]->discount_price)): ?>
                                      <?php if($result['detail']['product_data'][0]->currency_symbol_left != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_left); ?><?php endif; ?><?php echo e($result['detail']['product_data'][0]->discount_price+0); ?><?php if($result['detail']['product_data'][0]->currency_symbol_right != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_right); ?><?php endif; ?>
                                      <span> <?php if($result['detail']['product_data'][0]->currency_symbol_left != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_left); ?><?php endif; ?><?php echo e($result['detail']['product_data'][0]->price+0); ?><?php if($result['detail']['product_data'][0]->currency_symbol_right != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_right); ?><?php endif; ?></span>
                                      <?php else: ?>
                                      <?php if($result['detail']['product_data'][0]->currency_symbol_left != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_left); ?><?php endif; ?><?php echo e($result['detail']['product_data'][0]->price+0); ?><?php if($result['detail']['product_data'][0]->currency_symbol_right != null): ?><?php echo e($result['detail']['product_data'][0]->currency_symbol_right); ?><?php endif; ?>
                                      <?php endif; ?>
                                      <span>

                                    </span></h2>
                                    <?php if($result['detail']['product_data'][0]->products_min_order>0): ?>
                                      <p>
                                      &nbsp; <?php echo app('translator')->get('website.Min Order Limit:'); ?> <?php echo e($result['detail']['product_data'][0]->products_min_order); ?>

                                        </p>
                                    <?php endif; ?>

                                    <div class="buttons">
                                     <?php if(!empty($result['detail']['product_data'][0]->flash_start_date) and $result['detail']['product_data'][0]->server_time < $result['detail']['product_data'][0]->flash_start_date ): ?>
                                      <?php else: ?>
                                       <?php if($result['detail']['product_data'][0]->products_type == 0): ?>
                                            <?php if($result['detail']['product_data'][0]->defaultStock == 0): ?>
                                              <button class="btn btn-danger " type="button"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
                                            <?php else: ?>
                                                <button class="btn btn-secondary add-to-Cart" type="button" products_id="<?php echo e($result['detail']['product_data'][0]->products_id); ?>"><?php echo app('translator')->get('website.Update'); ?></button>
                                            <?php endif; ?>
                                        <?php else: ?>
                                             <button class="btn btn-secondary add-to-Cart stock-cart" hidden type="button" products_id="<?php echo e($result['detail']['product_data'][0]->products_id); ?>"><?php echo app('translator')->get('website.Update'); ?></button>
                                             <button class="btn btn-danger stock-out-cart" hidden type="button"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
                                        <?php endif; ?>
                                      <?php endif; ?>
                                    </div>

                              </div>
                        </form>

                              <div class="row">
                                  <div class="col-md-12 tab-list">
                                    <div class="nav nav-pills" role="tablist">
                                      <a class="nav-link nav-item nav-index active show" href="#description" id="description-tab" data-toggle="pill" role="tab">Description</a>
                                    </div>
                                    <div class="tab-content">
                                      <div role="tabpanel" class="tab-pane fade active show" id="description" aria-labelledby="description-tab">
                                        <div class="tabs-pera">
                                            <p>
                                             <?=stripslashes($result['detail']['product_data'][0]->products_description)?>
                                            </p>

                                        </div>

                                      </div>
                                      <div role="tabpanel" class="tab-pane fade" id="review" aria-labelledby="review-tab">
                                          <div class="tabs-pera">
                                              <p>
                                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                                                  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                                                  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in
                                                  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis aute irure dolor in
                                                  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                                              </p>
                                              <p>
                                                  Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                  sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                                  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                                                </p>
                                          </div>
                                      </div>
                                  </div>
                              </div>

                          </div>

                          </div>
                  </div>
                </div>

                </div>
            </div>

            <div class="products-area">
                <div class="row">
                    <div class="col-12">
                      <div class="heading">
                        <h2>
                          <?php echo app('translator')->get('website.Related Products'); ?>
                        </h2>
                        <hr style="margin-bottom: 0;">
                      </div>
                      <div id="p2" class="owl-carousel" style="margin-bottom: 10px;">
                        <?php $__currentLoopData = $result['simliar_products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if($result['detail']['product_data'][0]->products_id != $products->products_id): ?>
                        <?php if(++$key<=5): ?>
                        <div class="product">
                            <article>
                                <div class="thumb">
                                  <div class="icons mobile-icons d-lg-none d-xl-none">
                                      <div class="icon-liked">
                                        <a onclick="myLike(<?php echo e($result['detail']['product_data'][0]->products_id); ?>)" class="icon active">
                                          <i class="fas fa-heart"></i>
                                          <span class="badge badge-secondary"><?php echo e($products->products_liked); ?></span>
                                        </a>
                                      </div>
                                      <div class="icon" data-toggle="modal" data-target="#myModal"><i class="fas fa-eye"></i></div>
                                      <a href="compare.html" class="icon"><i class="fas fa-align-right" data-fa-transform="rotate-90"></i></a>
                                    </div>
                                  <img class="img-fluid" src="<?php echo e(asset('').$products->image_path); ?>" alt="<?php echo e($products->products_name); ?>">
                               </div>
                               <?php
                                   if(!empty($products->discount_price)){

                                       $discount_price = $products->discount_price;

                                       $orignal_price = $products->products_price;



                                                     if(($orignal_price+0)>0){
                                   $discounted_price = $orignal_price-$discount_price;
                                   $discount_percentage = $discounted_price/$orignal_price*100;
                                 }else{
                                   $discount_percentage = 0;
                                 }
                               ?>
                               <span class="discount-tag"><?php echo (int)$discount_percentage; ?>%</span>
                              <?php } ?>
                              <span class="tag">
                                <?php $__currentLoopData = $products->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              </span>
                              <h2 class="title text-center"><a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo e($products->products_name); ?></a></h2>
                              <div class="price">
                                <?php if(!empty($products->discount_price)): ?>
                                <?php if($products->currency_symbol_left != null): ?><?php echo e($products->currency_symbol_left); ?><?php endif; ?><?php echo e($products->discount_price+0); ?><?php if($products->currency_symbol_right != null): ?><?php echo e($products->currency_symbol_right); ?><?php endif; ?>
                                <span> <?php if($products->currency_symbol_left != null): ?><?php echo e($products->currency_symbol_left); ?><?php endif; ?><?php echo e($products->price+0); ?><?php if($products->currency_symbol_right != null): ?><?php echo e($products->currency_symbol_right); ?><?php endif; ?></span>
                                <?php else: ?>
                                <?php if($products->currency_symbol_left != null): ?><?php echo e($products->currency_symbol_left); ?><?php endif; ?><?php echo e($products->price+0); ?><?php if($products->currency_symbol_right != null): ?><?php echo e($products->currency_symbol_right); ?><?php endif; ?>
                                <?php endif; ?>
                              </div>
                            <div class="product-hover d-none d-lg-block d-xl-block">
                              <div class="icons">
                                  <div class="icon-liked">
                                    <a onclick="myLike(<?php echo e($products->products_id); ?>)" class="icon active">
                                      <i class="fas fa-heart"></i>
                                      <span  class="badge badge-secondary" id="like_count"><?php echo e($products->products_liked); ?></span>
                                    </a>
                                  </div>
                                <div class="icon" data-toggle="modal" data-target="#myModal"><i class="fas fa-eye"></i></div>
                                  <a onclick="myFunction3(<?php echo e($products->products_id); ?>)"class="icon"><i class="fas fa-align-right" data-fa-transform="rotate-90"></i></a>
                              </div>
                              <?php echo $__env->make('web.common.scripts.addToCompare', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                              <div class="buttons">
                                         <?php if($products->products_type==0): ?>
                                            <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                                <?php if($products->defaultStock==0): ?>
                                                    <button type="button" class="btn btn-block btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
                                                <?php elseif($products->products_min_order>1): ?>
                                                 <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                                <?php else: ?>
                                                    <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Add to Cart'); ?></button>
                                                <?php endif; ?>
                                            <?php else: ?>
                                                <button type="button" class="btn btn-block btn-secondary active"><?php echo app('translator')->get('website.Added'); ?></button>
                                            <?php endif; ?>
                                        <?php elseif($products->products_type==1): ?>
                                            <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                        <?php elseif($products->products_type==2): ?>
                                            <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn btn-block btn-secondary"><?php echo app('translator')->get('website.External Link'); ?></a>
                                        <?php endif; ?>
                                    </div>
                            </div>
                            <div class="mobile-buttons d-lg-none d-xl-none">
                                      <?php if($products->products_type==0): ?>
                                         <?php if(!in_array($products->products_id,$result['cartArray'])): ?>
                                             <?php if($products->defaultStock==0): ?>
                                                 <button type="button" class="btn btn-block btn-danger" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Out of Stock'); ?></button>
                                             <?php elseif($products->products_min_order>1): ?>
                                              <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                             <?php else: ?>
                                                 <button type="button" class="btn btn-block btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->get('website.Add to Cart'); ?></button>
                                             <?php endif; ?>
                                         <?php else: ?>
                                             <button type="button" class="btn btn-block btn-secondary active"><?php echo app('translator')->get('website.Added'); ?></button>
                                         <?php endif; ?>
                                     <?php elseif($products->products_type==1): ?>
                                         <a class="btn btn-block btn-secondary" href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>"><?php echo app('translator')->get('website.View Detail'); ?></a>
                                     <?php elseif($products->products_type==2): ?>
                                         <a href="<?php echo e($products->products_url); ?>" target="_blank" class="btn btn-block btn-secondary"><?php echo app('translator')->get('website.External Link'); ?></a>
                                     <?php endif; ?>
                                    </div>
                          </article>
                        </div>
                        <?php endif; ?>
                        <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </div>
                    </div>
                  </div>

            </div>
          </div>
        </section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/editcart.blade.php ENDPATH**/ ?>