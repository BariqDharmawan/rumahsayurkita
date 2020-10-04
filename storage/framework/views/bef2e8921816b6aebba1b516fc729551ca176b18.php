<?php $qunatity=0; ?>
                <?php $__currentLoopData = $result['commonContent']['cart']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                	<?php $qunatity += $cart_data->customers_basket_quantity; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <a class="cart-dropdown-toggle" href="#" role="button" id="ddAction" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-cart-arrow-down" aria-hidden="true"></i>
                    <span class="badge badge-secondary"><?php echo e($qunatity); ?></span>

                </a>

                <?php if(count($result['commonContent']['cart'])>0): ?>
                <div class="cart-dropdown-menu dropdown-menu dropdown-menu-right" aria-labelledby="ddaction">
                    <ul class="shopping-cart-items">
                        <?php
                            $total_amount=0;
                            $qunatity=0;
                        ?>
                        <?php $__currentLoopData = $result['commonContent']['cart']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <?php
					             	$total_amount += $cart_data->final_price*$cart_data->customers_basket_quantity;
					            	$qunatity 	  += $cart_data->customers_basket_quantity; ?>
                        <li>
                            <div class="item-thumb">
                            	<a href="<?php echo e(URL::to('/deleteCart?id='.$cart_data->customers_basket_id)); ?>" class="icon" ><img class="img-fluid" src="<?php echo e(asset('').'web/images/close.png'); ?>" alt="icon"></a>
                            	<div class="image">
                                	<img class="img-fluid" src="<?php echo e(asset('').$cart_data->image); ?>" alt="<?php echo e($cart_data->products_name); ?>"/>
                                </div>
                            </div>
                            <div class="item-detail">
                              <h2 class="item-name"><?php echo e($cart_data->products_name); ?></h2>
                              <span class="item-quantity"><?php echo app('translator')->get('website.Qty'); ?>&nbsp;:&nbsp;<?php echo e($cart_data->customers_basket_quantity); ?></span>
                              <span class="item-price"><?php echo e(Session::get('symbol_left')); ?><?php echo e($cart_data->final_price*$cart_data->customers_basket_quantity*session('currency_value')); ?><?php echo e(Session::get('symbol_right')); ?></span>
                           </div>
                        </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <li>
                      <div class="tt-summary">
                      	  <p><?php echo app('translator')->get('website.items'); ?><span><?php echo e($qunatity); ?></span></p>
                        	<p><?php echo app('translator')->get('website.SubTotal'); ?><span><?php echo e(Session::get('symbol_left')); ?><?php echo e($total_amount*session('currency_value')); ?><?php echo e(Session::get('symbol_right')); ?></span></p>
                      </div>
                    </li>
                    <li>
                      <div class="buttons">
                          <a class="btn btn-link" href="<?php echo e(URL::to('/viewcart')); ?>"><?php echo app('translator')->get('website.View Cart'); ?></a>
                          <a class="btn btn-secondary swipe-to-top" href="<?php echo e(URL::to('/checkout')); ?>"><?php echo app('translator')->get('website.Checkout'); ?></a>
                      </div>
                   </li>
                 </ul>

                </div>

				<?php else: ?>

                <div class="shopping-cart shopping-cart-empty dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                    <ul class="shopping-cart-items">
                        <li><?php echo app('translator')->get('website.You have no items in your shopping cart'); ?></li>
                    </ul>
                </div>
                <?php endif; ?>


<!--
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
-->
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/headers/cartButtons/cartButtonMobile.blade.php ENDPATH**/ ?>