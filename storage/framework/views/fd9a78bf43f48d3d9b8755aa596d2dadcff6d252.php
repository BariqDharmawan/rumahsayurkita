<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> Edit Label <small>Edit Label...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/listingAppLabels')); ?>"><i class="fa fa-bars"></i> List All Labels</a></li>
      <li class="active">Edit Label</li>
    </ol>
  </section>
  
  <!-- Main content -->
  <section class="content"> 
    <!-- Info boxes --> 
    
    <!-- /.row -->

    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">Edit labels </h3>
          </div>
          
          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		<div class="box box-info">
                        <!--<div class="box-header with-border">
                          <h3 class="box-title">Edit category</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <br>                       
                       <?php if(count($errors) > 0): ?>
							  <?php if($errors->any()): ?>
								<div class="alert alert-danger alert-dismissible" role="alert">
								  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								  <?php echo e($errors->first()); ?>

								</div>
							  <?php endif; ?>
						<?php endif; ?>
                        
                        <?php if(session()->has('message')): ?>
                            <div class="alert alert-success alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <?php echo e(session()->get('message')); ?>

                            </div>
                        <?php endif; ?>
                        
                        <!-- form start -->                        
                         <div class="box-body">
                         
                            <?php echo Form::open(array('url' =>'admin/updateAppLabel', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>

                            <?php echo Form::hidden('id',  $result['labels_value'][0]->label_id , array('class'=>'form-control', 'id'=>'id')); ?>

                            
                                                       
                            <div class="form-group">
                              <label for="name" class="col-sm-2 col-md-3 control-label">Label Key</label>
                              <div class="col-sm-10 col-md-4">
                                  <select class="form-control" name="label_id" disabled>
                                     <?php $__currentLoopData = $result['labels']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $labels): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <option value="<?php echo e($labels->label_id); ?>" 
                                      	<?php if($result['labels_value'][0]->label_id == $labels->label_id): ?>
                                        	selected
                                        <?php endif; ?>
                                      ><?php echo e($labels->label_name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  </select>
                              <span class="help-block hidden">This is the general name to identify the language of multiple value.</span>
                              </div>
                            </div>
                            
                                
                                                             
                               <?php $i = 0; $j=0;?>
                                <?php $__currentLoopData = $result['languages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$languages): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                	
                                    <?php if(!empty($result['labels_value'][$j]->language_id)): ?> 
                                    <input type="hidden" name="label_value_id_<?=$languages->languages_id?>" value="<?php echo e($result['labels_value'][$i]->label_value_id); ?>">
                                    <?php endif; ?>
                                                                        
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label">Label Value (<?php echo e($languages->name); ?>)</label>
                                      <div class="col-sm-10 col-md-4">
                                        <input type="text" name="label_value_<?=$languages->languages_id?>" class="form-control field-validate" <?php if(!empty($result['labels_value'][$j]->language_id)): ?> value="<?php echo e($result['labels_value'][$j]->label_value); ?>" <?php endif; ?>>
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Label Value (<?php echo e($languages->name); ?>).</span>
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                    </div>
                                 
                                 <?php 
								 	if(count($result['labels_value'])>1) { $i++; }
								 	$j++;
								  ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                
                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Submit')); ?></button>
                                <a href="<?php echo e(URL::to('admin/listingAppLabels')); ?>" type="button" class="btn btn-default"><?php echo e(trans('labels.back')); ?></a>
                              </div>
                              <!-- /.box-footer -->
                            <?php echo Form::close(); ?>

                        </div>
                  </div>
              </div>
            </div>
            
          </div>
          <!-- /.box-body --> 
        </div>
        <!-- /.box --> 
      </div>
      <!-- /.col --> 
    </div>
    <!-- /.row --> 
    
    <!-- Main row --> 
    
    <!-- /.row --> 
  </section>
  <!-- /.content --> 
</div>
<?php $__env->stopSection(); ?> 
<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/settings/app/labels/editAppLabel.blade.php ENDPATH**/ ?>