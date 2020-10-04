<?php $__env->startSection('content'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> <?php echo e(trans('labels.Merge Project')); ?> <small><?php echo e(trans('labels.Merge Project')); ?>...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
                <li class="active"><?php echo e(trans('labels.Merge Project')); ?></li>
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
                            <h3 class="box-title"><?php echo e(trans('labels.Merge Project')); ?></h3>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <!-- <?php if(count($errors) > 0): ?>
                                        <?php if($errors->any()): ?>
                                            <div class="alert alert-success alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <?php echo e($errors->first()); ?>

                                            </div>
                                        <?php endif; ?>
                                    <?php endif; ?> -->

                                    <?php if(session()->has('message')): ?>
                                        <div class="alert alert-success">
                                            <?php echo e(session()->get('message')); ?>

                                        </div>
                                    <?php endif; ?>
                                    <?php if(session()->has('error')): ?>
                                        <div class="alert alert-danger">
                                            <?php echo e(session()->get('error')); ?>

                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box box-info">
                                        <!-- form start -->
                                        <div class="box-body">

                                            <?php echo Form::open(array('url' =>'admin/managements/mergecontent', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>

                                            
                                            <?php
                                                $execution_time = ini_get('max_execution_time');
                                                $upload_size = ini_get('upload_max_filesize'); 
                                                $upload_size = str_replace('M','',$upload_size);

                                                $post_size = ini_get('post_max_size');  
                                                $post_size = str_replace('M','',$post_size);     

                                               //if($execution_time < 180 and $upload_size < 128 and $post_size < 128){

                                               
                                            ?>
                                            <div class="form-group" id="imageIcone">
                                                <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.NOTE')); ?></label>
                                                <p class="col-sm-10 col-md-4">Your maximum file upload size, post max size and execution time do not match to the given requirements. Please fix it. Otherwise you will face problem while merging project.
                                                </br>
                                                <strong>Max Execution Time:</strong> 180 </br>
                                                <strong>Upload File Size:</strong> 128M</br>
                                                <strong>Post Max Size:</strong> 128M </p>
                                            </div>
                                            <?php
                                               // }
                                            ?>

                                            <div class="form-group" id="imageIcone">
                                                <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Choose Zip')); ?></label>
                                                <div class="col-sm-10 col-md-4">
                                                    <input type="file" name="zip_file" id="file" class="form-control field-validate">
                                                    <span class="help-block"><?php echo e(trans('labels.Text for upload zip file')); ?></span>
                                                </div>
                                            </div>

                                            <!-- /.box-body -->
                                            <div class="box-footer text-right">
                                                <div class="col-sm-offset-2 col-md-offset-3 col-sm-10 col-md-4">
                                                    <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Submit')); ?></button>
                                                </div>
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

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/managements/merge.blade.php ENDPATH**/ ?>