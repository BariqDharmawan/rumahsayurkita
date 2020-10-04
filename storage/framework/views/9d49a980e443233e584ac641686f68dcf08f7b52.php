<div class="container-fuild">
  <nav aria-label="breadcrumb">
      <div class="container">
          <ol class="breadcrumb">
            <?php if(!empty($result['category_name']) and !empty($result['sub_category_name'])): ?>
            <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>
            <li  class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop')); ?>"><?php echo app('translator')->get('website.Shop'); ?></a></li>
           <li  class="breadcrumb-item"><a href="<?php echo e(URL::to('/shop?category='.$result['category_slug'])); ?>"><?php echo e($result['category_name']); ?></a></li>
           <li  class="breadcrumb-item active"><?php echo e($result['sub_category_name']); ?></li>
           <?php elseif(!empty($result['category_name']) and empty($result['sub_category_name'])): ?>
           <li class="breadcrumb-item active"><?php echo e($result['category_name']); ?></li>
           <?php else: ?>
           <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>
           <li class="breadcrumb-item active"><?php echo app('translator')->get('website.Shop'); ?></li>
           <?php endif; ?>
          </ol>
      </div>
    </nav>
</div>

<section class="pro-content">
  <div class="container">
      <div class="page-heading-title">
          <h2> <?php echo app('translator')->get('website.Shop'); ?>  
          </h2>
      
          </div>
  </div>
  <div class="container">
      <div class="top-bar">
          <div class="row">
            <div class="col-12 col-lg-12">
                <div class="row align-items-center">
                    <div class="col-12 col-xl-2">
                        <div class="block">
                            <label><?php echo app('translator')->get('website.Display'); ?></label>
                            <div class="buttons">
                              <a href="javascript:void(0);" id="grid"><i class="fas fa-th-large"></i></a>
                              <a href="javascript:void(0);" id="list"><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                    </div> 

                    <div class="col-12 col-xl-7 select-bar">
                        <form class="form-inline justify-content-center">
                          <?php if(!empty($result['categories'])): ?>
                            <div class="form-group ">
                                <label><?php echo app('translator')->get('website.Categories'); ?> </label>
                                <div class="select-control">
                                  <select class="form-control" name="category" onchange="this.form.submit()">
                                      <?php $__currentLoopData = $result['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <option value="<?php echo e($category->slug); ?>" <?php if(app('request')->input('category') == $category->slug): ?> selected <?php endif; ?>><?php echo e($category->categories_name); ?></option>                                      
                                          <?php if(isset($category->childs)): ?>{
                                            <?php $__currentLoopData = $category->childs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                              <option value="<?php echo e($cat->slug); ?>" <?php if(app('request')->input('category') == $category->slug): ?> selected <?php endif; ?>>-<?php echo e($cat->categories_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                          <?php endif; ?>
                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                                      
                                  </select>
                                </div>
                              
                            </div>
                            <?php endif; ?>
                        </form>
                          
                        
                    </div> 
                    <?php if($result['products']['success']==1): ?>
                    <div class="col-12 col-xl-3">
                      <form class="form-inline justify-content-end" id="load_products_form">
                        <?php if(!empty(app('request')->input('search'))): ?>
                         <input type="hidden"  name="search" value="<?php echo e(app('request')->input('search')); ?>">
                        <?php endif; ?>
                        <?php if(!empty(app('request')->input('category'))): ?>
                         <input type="hidden"  name="category" value="<?php if(app('request')->input('category')!='all'): ?><?php echo e(app('request')->input('category')); ?> <?php endif; ?>">
                        <?php endif; ?>
                         <input type="hidden"  name="load_products" value="1">
                         <input type="hidden"  name="products_style" id="products_style" value="grid">
                         <input type="hidden"  name="products_style" id="pagelayout" value="fullpage">
                          
                          <div class="form-group">
                              <label><?php echo app('translator')->get('website.Sort'); ?></label> 
                              <div class="select-control">
                                <select name="type" id="sortbytype" class="form-control" >
                                  <option value="desc" <?php if(app('request')->input('type')=='desc'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Newest'); ?></option>
                                  <option value="atoz" <?php if(app('request')->input('type')=='atoz'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.A - Z'); ?></option>
                                  <option value="ztoa" <?php if(app('request')->input('type')=='ztoa'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Z - A'); ?></option>
                                  <option value="hightolow" <?php if(app('request')->input('type')=='hightolow'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Price: High To Low'); ?></option>
                                  <option value="lowtohigh" <?php if(app('request')->input('type')=='lowtohigh'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Price: Low To High'); ?></option>
                                  <option value="topseller" <?php if(app('request')->input('type')=='topseller'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Top Seller'); ?></option>
                                  <option value="special" <?php if(app('request')->input('type')=='special'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Special Products'); ?></option>
                                  <option value="mostliked" <?php if(app('request')->input('type')=='mostliked'): ?> selected <?php endif; ?>><?php echo app('translator')->get('website.Most Liked'); ?></option>
                                </select>
                          </div>
                          
                          <div class="form-group">
                              <label><?php echo app('translator')->get('website.Limit'); ?></label> 
                              <div class="select-control">
                                <select class="form-control"name="limit" id="sortbylimit" >
                                  <option value="15" <?php if(app('request')->input('limit')=='15'): ?> selected <?php endif; ?>>15</option>
                                  <option value="30" <?php if(app('request')->input('limit')=='30'): ?> selected <?php endif; ?>>30</option>
                                  <option value="60" <?php if(app('request')->input('limit')=='60'): ?> selected <?php endif; ?>>60</option>
                                </select>
                              
                          </div>                          
                          <?php echo $__env->make('web.common.scripts.shop_page_load_products', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>    
                    </div>  
                    <?php endif; ?>
                </div>
              
            </div>
          </div>
      </div>  
    </div>
  </div>
</div>
  
  <section id="swap2" class="shop-content shop-topbar shop-one" >
    <div class="container">
      <div class="products-area">
      <?php if($result['products']['success']==1): ?>
      
        <div class="row">                    
        <?php if($result['categories_status'] == 1): ?>   
            <?php $__currentLoopData = $result['products']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>   
            <?php 
              $is_status = false;
              if(!empty($products->categories)){
                foreach($products->categories as $key=>$category){
                    if($category->categories_status == 1)
                      $is_status = true;                                         
                } 
              }

              if($is_status == true){
              ?>   
            <div class="col-12 col-md-6 col-lg-3">
              <?php echo $__env->make('web.common.product', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
              <?php }?>
            
              
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php else: ?>
            <div class="col-12">
            <br>
            <h3><?php echo app('translator')->get('website.No Record Found!'); ?></h3></div>
            <?php endif; ?>
        <?php endif; ?>
            <?php echo $__env->make('web.common.scripts.addToCompare', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>            
        </div>
      <?php else: ?>
      <br>
        <h3><?php echo app('translator')->get('website.No Record Found!'); ?></h3>
      <?php endif; ?>
        
    </div>
    
    </div>  
  </section> 
  <?php if($result['categories_status'] == 1): ?>
  <div class="container">
    <div class="pagination justify-content-between ">
      <input id="record_limit" type="hidden" value="<?php echo e($result['limit']); ?>">
      <input id="total_record" type="hidden" value="<?php echo e($result['products']['total_record']); ?>">
      <label for="staticEmail" class="col-form-label"> <?php echo app('translator')->get('website.Showing'); ?>&nbsp;<span class="showing_record"><?php echo e($result['limit']); ?></span>&nbsp;<?php echo app('translator')->get('website.of'); ?>&nbsp;<span class="showing_total_record"><?php echo e($result['products']['total_record']); ?></span> &nbsp;<?php echo app('translator')->get('website.results'); ?></label>
      
        <div class=" justify-content-end col-6">
            <input type="hidden" value="1" name="page_number" id="page_number">
        <?php
            if(!empty(app('request')->input('limit'))){
                $record = app('request')->input('limit');
            }else{
                $record = '15';
            }
        ?>
            <button class="btn btn-dark" type="button" id="load_products"
            <?php if(count($result['products']['product_data']) < $record ): ?>
                style="display:none"
            <?php endif; ?>
            ><?php echo app('translator')->get('website.Load More'); ?></button>
        </div>
    </div>
  </div>
  <?php endif; ?>
</form>
</section>

<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/shop-pages/shop3.blade.php ENDPATH**/ ?>