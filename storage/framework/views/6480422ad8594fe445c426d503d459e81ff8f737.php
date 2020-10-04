<div class="container-fuild">
	<nav aria-label="breadcrumb">
		<div class="container">
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>
			<li class="breadcrumb-item active" aria-current="page"><?php echo app('translator')->get('website.News'); ?></li>

		</ol>
		</div>
	</nav>
</div>  

<section class="pro-content">
	<div class="container">
	  <div class="page-heading-title">
		  <h2> <?php echo app('translator')->get('website.News'); ?> 
		  </h2>
	   
		  </div>
  </div>

<section class="blog-content">
	<div class="container"> 
	  
	  <div class="blog-area">

		<div class="row">
			
		  <div class="col-12 col-lg-8">
			<div class="row">
        

				<?php if($result['news']['success']==1): ?>
          <?php $__currentLoopData = $result['news']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          
          <div class="col-12 col-sm-12">
            <div class="blog">
              <div class="blog-thumbnail">
				<span class="date-tag badge"><?php echo e(date('d-M-Y', strtotime($news_data->created_at))); ?></span>
                <img class="img-thumbnail" src="<?php echo e(asset('').$news_data->image_path); ?>" width="100%" alt="<?php echo e($news_data->news_name); ?>">                
              </div>
              
              
              <h5 class="post-title">
                <a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>">
                  <?php echo e($news_data->news_name); ?></a>
              </h5>
              <div class="blog-title">
				<p><?php
					$descriptions = strip_tags($news_data->news_description);
					echo stripslashes($descriptions);
					?></p>  
              </div>
                  <span class="blink"><a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>"><?php echo app('translator')->get('website.Read More'); ?>.. </a></span>
            </div>
        </div>

					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<?php endif; ?>
					   
			  </div>

      </div>
      
      <div class="col-12 col-lg-4  d-lg-block d-xl-block blog-menu"> 
				<?php if(!empty($result['news_categories']) and count($result['news_categories'])>0): ?>
				<div class="right-menu-categories category-div">
				<?php $__currentLoopData = $result['news_categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				<a class="main-manu" href="<?php echo e(URL::to('/news'.$item->slug)); ?>">
					<img class="img-fuild" src="<?php echo e(asset('').$item->news_image); ?>">
					<?php echo e($item->name); ?>				
				</a>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>				  
						
				  </div>
				<?php endif; ?>
			  <div class="category-div">
				<?php if($result['news']['success']==1): ?>
					<?php $__currentLoopData = $result['news']['news_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$news_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="media">
						<div class="media-img">  
							<img src="<?php echo e(asset('').$news_data->image_path); ?>" alt="John Doe" width="100%">
						   </div>
						<div class="media-body">
						<h5><a href="<?php echo e(URL::to('/news-detail/'.$news_data->news_slug)); ?>"><?php echo e($news_data->news_name); ?></a></h5>
							<div class="post-date">
								<i class="fa fa-calendar" aria-hidden="true"></i>
								<?php echo e(date('M d, Y', strtotime($news_data->created_at))); ?> 
							</div>
						
						</div>
					</div>

					  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<?php endif; ?>							  
			  </div>			  		 
			</div>
 
		</div>
		
	  </div>
	</div>
  </section>
  </section>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/news/news2.blade.php ENDPATH**/ ?>