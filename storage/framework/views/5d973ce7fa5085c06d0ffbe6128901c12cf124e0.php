<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> <?php echo e(trans('labels.Editdeliveryboy')); ?> <small><?php echo e(trans('labels.Editdeliveryboy')); ?>...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
            <li><a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>"><i class="fa fa-users"></i> <?php echo e(trans('labels.Listing Delivery Boys')); ?></a></li>
            <li class="active"><?php echo e(trans('labels.Editdeliveryboy')); ?></li>
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
                        <h3 class="box-title"><?php echo e(trans('labels.Editdeliveryboy')); ?> </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box box-info">

                                    <?php if(session()->has('message')): ?>
                                        <div class="alert alert-success alert-dismissable custom-success-box" style="margin: 15px;">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong> <?php echo e(session()->get('message')); ?> </strong>
                                        </div>
                                    <?php endif; ?>

                                    <?php if(count($errors) > 0): ?>
                                      <?php if($errors->any()): ?>
                                      <div class="alert alert-danger alert-dismissible" role="alert">
                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                          <?php echo e($errors->first()); ?>

                                      </div>
                                      <?php endif; ?>
                                    <?php endif; ?>

                                    <div class="box-body">
                                        <?php echo Form::open(array('url' =>'admin/deliveryboys/update', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>

                                        <?php echo Form::hidden('user_id',  $data['deliveryboy']->id); ?>

                                        <?php echo Form::hidden('old_email_address',  $data['deliveryboy']->email); ?>

                                        <h4><?php echo e(trans('labels.Delivery Boy Info')); ?></h4>
                                        <hr>
                                        <div class="row">
                                          <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                              <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FirstName')); ?> </label>
                                              <div class="col-sm-10 col-md-8">
                                                <?php echo Form::text('first_name',  $data['deliveryboy']->first_name, array('class'=>'form-control field-validate', 'id'=>'first_name')); ?>

                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.FirstNameText')); ?></span>
                                                <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                              <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.LastName')); ?> </label>
                                              <div class="col-sm-10 col-md-8">
                                                <?php echo Form::text('last_name',  $data['deliveryboy']->last_name, array('class'=>'form-control field-validate', 'id'=>'last_name')); ?>

                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.lastNameText')); ?></span>
                                                <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="col-xs-12 col-sm-6">
                                            <div class="form-group" id="imageIcone">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Avatar')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                      <!-- Modal -->
                                                      <div class="modal fade embed-images" id="ModalmanufacturedICone" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                          <div class="modal-dialog" role="document">
                                                              <div class="modal-content">
                                                                  <div class="modal-header">
                                                                      <button type="button" class="close" data-dismiss="modal" id="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                      <h3 class="modal-title text-primary" id="myModalLabel"><?php echo e(trans('labels.Choose Image')); ?> </h3>
                                                                  </div>
                                                                  <div class="modal-body manufacturer-image-embed">
                                                                      <?php if(isset($allimage)): ?>
                                                                      <select class="image-picker show-html <?php if( $data['deliveryboy']->avatar=== null): ?> field-validate <?php endif; ?>" name="image_id" id="select_img">
                                                                          <option value=""></option>
                                                                          <?php $__currentLoopData = $allimage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <option data-img-src="<?php echo e(asset($image->path)); ?>" class="imagedetail" data-img-alt="<?php echo e($key); ?>" value="<?php echo e($image->id); ?>"> <?php echo e($image->id); ?> </option>
                                                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                      </select>
                                                                      <?php endif; ?>
                                                                  </div>
                                                                  <div class="modal-footer">
                                                                      <a href="<?php echo e(url('admin/media/add')); ?>" target="_blank" class="btn btn-primary pull-left" ><?php echo e(trans('labels.Add Image')); ?></a>
                                                                      <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                                      <button type="button" class="btn btn-success" id="selectedICONE" data-dismiss="modal"><?php echo e(trans('labels.Done')); ?></button>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div id="imageselected">
                                                        <?php echo Form::button(trans('labels.Add Image'), array('id'=>'newIcon','class'=>"btn btn-primary", 'data-toggle'=>"modal", 'data-target'=>"#ModalmanufacturedICone" )); ?>

                                                        <br>
                                                        <div id="selectedthumbnailIcon" class="selectedthumbnail col-md-5"> </div>
                                                        <div class="closimage">
                                                            <button type="button" class="close pull-left image-close " id="image-Icone"
                                                              style="display: none; position: absolute;left: 105px; top: 54px; background-color: black; color: white; opacity: 2.2; " aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <br>
                                                        <?php echo Form::hidden('old_avatar', $data['deliveryboy']->avatar, array('id'=>'oldImage')); ?>

                                                        <?php if(($data['deliveryboy']->avatar!== null)): ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->avatar)); ?>" class="img-circle">
                                                        <?php else: ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->avatar)); ?>" class="img-circle">
                                                        <?php endif; ?>
                                                      </div>
                                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.ImageText')); ?></span>
                                                      <br>
                                                  </div>
                                              </div>
                                            </div>

                                            <div class="col-xs-12 col-sm-6">
                                              <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Phone')); ?></label>
                                                <div class="col-sm-10 col-md-8">
                                                  <div class="input-group col-xs-12">
                                                    <!-- <select name="country_code" class="form-control">                                                      
                                                    <option value="+91" >+91</option>
                                                    </select>
                                                    <span class="input-group-addon" style="width:0px; padding-left:0px; padding-right:0px; border:none;"></span> -->
                                                    <?php echo Form::text('phone',  $data['deliveryboy']->phone, array('class'=>'form-control phone-validate', 'id'=>'phone')); ?>

                                                  </div>
                                                 <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                 <?php echo e(trans('labels.TelephoneText')); ?></span>
                                                </div>
                                              </div>
                                            </div>
                                          </div>

                                          <div class="row">
                                            <div class="col-xs-12 col-sm-6">
                                              <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.DOB')); ?> </label>
                                                <div class="col-sm-10 col-md-8">
                                                  <?php echo Form::text('dob',  $data['deliveryboy']->dob, array('class'=>'form-control datepicker' , 'id'=>'dob', 'readonly'=>'readonly')); ?>

                                                 <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                 <?php echo e(trans('labels.DOBText')); ?></span>
                                                </div>
                                              </div>
                                            </div>


                                            <div class="col-xs-12 col-sm-6">
                                              <div class="form-group">
                                              <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.blood_group')); ?> </label>
                                              <div class="col-sm-10 col-md-8">
                                                  <select name="blood_group" class="form-control">
                                                    <OPTION VALUE="A +ve" <?php if($data['deliveryboy']->dob == 'A +ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.A +ve')); ?> </OPTION>
                                                    <OPTION VALUE="A -ve" <?php if($data['deliveryboy']->dob == 'A -ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.A -ve')); ?> </OPTION>
                                                    <OPTION VALUE="B +ve" <?php if($data['deliveryboy']->dob == 'B +ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.B +ve')); ?>  </OPTION>
                                                    <OPTION VALUE="B -ve" <?php if($data['deliveryboy']->dob == 'B -ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.B -ve')); ?> </OPTION>
                                                    <OPTION VALUE="O +ve" <?php if($data['deliveryboy']->dob == 'O +ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.O +ve')); ?></OPTION>
                                                    <OPTION VALUE="O -ve" <?php if($data['deliveryboy']->dob == 'O -ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.O -ve')); ?> </OPTION>
                                                    <OPTION VALUE="AB +ve" <?php if($data['deliveryboy']->dob == 'AB +ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.AB +ve')); ?> </OPTION>
                                                    <OPTION VALUE="AB -ve" <?php if($data['deliveryboy']->dob == 'AB -ve'): ?> selected <?php endif; ?> ><?php echo e(trans('labels.AB -ve')); ?>AB -ve </OPTION>
                                                  </select>
                                                 <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                 <?php echo e(trans('labels.blood_groupText')); ?></span>
                                              </div>
                                            </div>
                                          </div>

                                          <div class="row">
                                            <div class="col-xs-12 col-sm-6">
                                              <div class="form-group">
                                              <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Commission')); ?> </label>
                                              <div class="col-sm-10 col-md-8">
                                                <?php echo Form::text('commission',  $data['deliveryboy']->commission, array('class'=>'form-control field-validate' , 'id'=>'commission')); ?>

                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                <?php echo e(trans('labels.CommissionText')); ?></span>
                                                
                                              </div>
                                            </div>
                                          </div>
                                          </div>

                                          </div>

                                            <hr>
                                            <h4><?php echo e(trans('labels.Login Info')); ?></h4>
                                            <hr>
                                            <div class="row">
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.EmailAddress')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('email',  $data['deliveryboy']->email, array('class'=>'form-control email-validate', 'id'=>'email')); ?>

                                                     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                     <?php echo e(trans('labels.EmailText')); ?></span>
                                                    <span class="help-block hidden"> <?php echo e(trans('labels.EmailError')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.PinCode')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('password', $data['deliveryboy']->password, array('class'=>'form-control field-validate', 'id'=>'password')); ?>

                                	                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.PasswordText')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <select class="form-control" name="status">
                                                          <option value="1" <?php if($data['deliveryboy']->status == '1'): ?> selected <?php endif; ?>><?php echo e(trans('labels.Active')); ?></option>
                                                          <option value="0" <?php if($data['deliveryboy']->status == '0'): ?> selected <?php endif; ?>><?php echo e(trans('labels.Inactive')); ?></option>
                                	                  </select>
                                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                  <?php echo e(trans('labels.StatusText')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Availability Status')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <select class="form-control" name="availability_status">
                                                        <?php $__currentLoopData = $data['statuses']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $status): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                          <option value="<?php echo e($status->orders_status_id); ?>" <?php if($status->orders_status_id == $data['deliveryboy']->availability_status): ?> selected <?php endif; ?>><?php echo e($status->orders_status_name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                	                  </select>
                                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                  <?php echo e(trans('labels.StatusText')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                            </div>


                                            <hr>
                                            <h4><?php echo e(trans('labels.Address Info')); ?></h4>
                                            <hr>

                                            <div class="row">

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Address')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('address', $data['deliveryboy']->entry_street_address, array('class'=>'form-control field-validate', 'id'=>'address')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    <?php echo e(trans('labels.AddressText')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.City')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('city', $data['deliveryboy']->entry_city, array('class'=>'form-control field-validate', 'id'=>'City')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    <?php echo e(trans('labels.CityText')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>



                                          <div class="row">

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ZipCode')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('zip', $data['deliveryboy']->entry_postcode, array('class'=>'form-control field-validate', 'id'=>'zip')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    <?php echo e(trans('labels.ZipCode')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Country')); ?> </label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <select class="form-control field-validate" name="country_id" id="entry_country_id">
                                                    	<option value=""><?php echo e(trans('labels.SelectCountry')); ?></option>
                                                    	<?php $__currentLoopData = $data['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    		<option value="<?php echo e($countries->countries_id); ?>" <?php if($data['deliveryboy']->countries_id == $countries->countries_id ): ?> selected <?php endif; ?>><?php echo e($countries->countries_name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    <?php echo e(trans('labels.CountryText')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>


                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6">
                                                  <div class="form-group">
                                                    <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.State')); ?> </label>
                                                    <div class="col-sm-10 col-md-8">
                                                      <select class="form-control zoneContent field-validate" name="state_id">
                                                       	<option value=""><?php echo e(trans('labels.SelectZone')); ?></option>
                                                        <?php $__currentLoopData = $data['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $zone): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                          <option value="<?php echo e($zone->zone_id); ?>" <?php if($data['deliveryboy']->entry_state == $zone->zone_id ): ?> selected <?php endif; ?>><?php echo e($zone->zone_name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                       </select>
                                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                      <?php echo e(trans('labels.SelectZoneText')); ?></span>
                                                    </div>
                                                  </div>
                                                </div>
                                            </div>

                                            <hr>
                                            <h4><?php echo e(trans('labels.Bike Vehicle Info')); ?></h4>
                                            <hr>

                                            <div class="row">
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.bike_name')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bike_name', $data['deliveryboy']->bike_name, array('class'=>'form-control field-validate', 'id'=>'bike_name')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.bike_nameText')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.owner_name')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('owner_name', $data['deliveryboy']->owner_name, array('class'=>'form-control field-validate', 'id'=>'owner_name')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.owner_nameText')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="col-xs-12 col-sm-6">

                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.bike_color')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bike_color', $data['deliveryboy']->bike_color, array('class'=>'form-control field-validate', 'id'=>'bike_color')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.bike_colorText')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>

                                              </div>

                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.vehicle_registration_number')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('vehicle_registration_number', $data['deliveryboy']->vehicle_registration_number, array('class'=>'form-control field-validate', 'id'=>'vehicle_registration_number')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.vehicle_registration_number')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group">
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.bike_details')); ?></label>
                                                  <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bike_details', $data['deliveryboy']->bike_details, array('class'=>'form-control field-validate', 'id'=>'bike_details')); ?>

                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                   <?php echo e(trans('labels.bike_detailsText')); ?></span>
                                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                                  </div>
                                                </div>
                                              </div>

                                              <div class="col-xs-12 col-sm-6">

                                                <div class="form-group image-content" id='image-content-3'>
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.driving_license_image')); ?> </label>
                                                  <div class="col-sm-10 col-md-8" >
                                                      <!-- Modal -->
                                                      <div class="modal fade embed-images" id="imagemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                          <div class="modal-dialog" role="document">
                                                              <div class="modal-content">
                                                                  <div class="modal-header">
                                                                      <button type="button" class="close" data-dismiss="modal" id="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                      <h3 class="modal-title text-primary" id="myModalLabel"><?php echo e(trans('labels.Choose Image')); ?> </h3>
                                                                  </div>
                                                                  <div class="modal-body manufacturer-image-embed">
                                                                      <?php if(isset($allimage)): ?>
                                                                      <select class="image-picker show-html <?php if( $data['deliveryboy']->driving_license_image=== null): ?> field-validate <?php endif; ?>" name="driving_license_image">
                                                                          <option value=""></option>
                                                                          <?php $__currentLoopData = $allimage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <option data-img-src="<?php echo e(asset($image->path)); ?>" class="imagedetail" data-img-alt="<?php echo e($key); ?>" value="<?php echo e($image->id); ?>"> <?php echo e($image->id); ?> </option>
                                                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                      </select>
                                                                      <?php endif; ?>
                                                                  </div>
                                                                  <div class="modal-footer">
                                                                      <a href="<?php echo e(url('admin/media/add')); ?>" target="_blank" class="btn btn-primary pull-left" ><?php echo e(trans('labels.Add Image')); ?></a>
                                                                      <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                                      <button type="button" class="btn btn-success selected-image" data-dismiss="modal"><?php echo e(trans('labels.Done')); ?></button>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div id="imageselected">
                                                        <?php echo Form::button(trans('labels.Add Image'), array('class'=>"btn btn-primary add-image" )); ?>

                                                        <br>
                                                        <div class="selectedthumbnail col-md-5"> </div>
                                                        <div class="closimage">
                                                            <button type="button" class="close pull-left image-close show-image-btn"
                                                              style="display: none; position: absolute;left: 105px; top: 54px; background-color: black; color: white; opacity: 2.2; " aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <br>
                                                        <?php echo Form::hidden('old_driving_license_image', $data['deliveryboy']->driving_license_image_id, array('id'=>'oldImage')); ?>

                                                        <?php if(($data['deliveryboy']->driving_license_image!== null)): ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->driving_license_image)); ?>" class="img-circle">
                                                        <?php else: ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->driving_license_image)); ?>" class="img-circle">
                                                        <?php endif; ?>
                                                      </div>
                                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.driving_license_image')); ?></span>
                                                      <br>
                                                  </div>
                                                </div>

                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="col-xs-12 col-sm-6">
                                                <div class="form-group image-content" id='image-content-1'>
                                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.vehicle_rc_book_image')); ?> </label>
                                                  <div class="col-sm-10 col-md-8" >
                                                      <!-- Modal -->
                                                      <div class="modal fade embed-images" id="imagemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                          <div class="modal-dialog" role="document">
                                                              <div class="modal-content">
                                                                  <div class="modal-header">
                                                                      <button type="button" class="close" data-dismiss="modal" id="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                      <h3 class="modal-title text-primary" id="myModalLabel"><?php echo e(trans('labels.Choose Image')); ?> </h3>
                                                                  </div>
                                                                  <div class="modal-body manufacturer-image-embed">
                                                                      <?php if(isset($allimage)): ?>
                                                                      <select class="image-picker show-html <?php if( $data['deliveryboy']->vehicle_rc_book_image=== null): ?> field-validate <?php endif; ?>" name="vehicle_rc_book_image">
                                                                          <option value=""></option>
                                                                          <?php $__currentLoopData = $allimage; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <option data-img-src="<?php echo e(asset($image->path)); ?>" class="imagedetail" data-img-alt="<?php echo e($key); ?>" value="<?php echo e($image->id); ?>"> <?php echo e($image->id); ?> </option>
                                                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                      </select>
                                                                      <?php endif; ?>
                                                                  </div>
                                                                  <div class="modal-footer">
                                                                      <a href="<?php echo e(url('admin/media/add')); ?>" target="_blank" class="btn btn-primary pull-left" ><?php echo e(trans('labels.Add Image')); ?></a>
                                                                      <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                                      <button type="button" class="btn btn-success selected-image" data-dismiss="modal"><?php echo e(trans('labels.Done')); ?></button>
                                                                  </div>
                                                              </div>
                                                          </div>
                                                      </div>
                                                      <div id="imageselected">
                                                        <?php echo Form::button(trans('labels.Add Image'), array('class'=>"btn btn-primary add-image" )); ?>

                                                        <br>
                                                        <div class="selectedthumbnail col-md-5"> </div>
                                                        <div class="closimage">
                                                            <button type="button" class="close pull-left image-close show-image-btn"
                                                              style="display: none; position: absolute;left: 105px; top: 54px; background-color: black; color: white; opacity: 2.2; " aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <br>
                                                        <?php echo Form::hidden('old_vehicle_rc_book_image', $data['deliveryboy']->vehicle_rc_book_image_id, array('id'=>'oldImage')); ?>

                                                        <?php if(($data['deliveryboy']->vehicle_rc_book_image!== null)): ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->vehicle_rc_book_image)); ?>" class="img-circle">
                                                        <?php else: ?>
                                                            <img width="80px" src="<?php echo e(asset($data['deliveryboy']->vehicle_rc_book_image)); ?>" class="img-circle">
                                                        <?php endif; ?>
                                                      </div>
                                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.ImageText')); ?></span>
                                                      <br>
                                                  </div>
                                                </div>
                                              </div>


                                              
                                            </div>
                                          
                                            <hr>
                                    <h4><?php echo e(trans('labels.Bank Info')); ?></h4>
                                    <hr>

                                    <div class="row">

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Account Title')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_name', $data['deliveryboy']->bank_name,
                                                    array('class'=>'form-control
                                                    field-validate', 'id'=>'bank_name')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.Account Title Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Account Number')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_account_number',
                                                    $data['deliveryboy']->bank_account_number,
                                                    array('class'=>'form-control field-validate',
                                                    'id'=>'bank_account_number')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.Account Number Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Routing Number')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_routing_number',
                                                    $data['deliveryboy']->bank_routing_number,
                                                    array('class'=>'form-control field-validate',
                                                    'id'=>'bank_routing_number')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.Routing Number Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Bank Address')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_address', $data['deliveryboy']->bank_address,
                                                    array('class'=>'form-control field-validate',
                                                    'id'=>'bank_address')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.Bank Address Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.IBAN')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_iban', $data['deliveryboy']->bank_iban,
                                                    array('class'=>'form-control field-validate',
                                                    'id'=>'bank_iban')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.IBAN Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-6">
                                            <div class="form-group">
                                                <label for="name"
                                                    class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Swift')); ?>

                                                </label>
                                                <div class="col-sm-10 col-md-8">
                                                    <?php echo Form::text('bank_swift', $data['deliveryboy']->bank_swift,
                                                    array('class'=>'form-control field-validate',
                                                    'id'=>'bank_swift')); ?>

                                                    <span class="help-block"
                                                        style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                        <?php echo e(trans('labels.Swift Text')); ?></span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    

                                            <div class="box-footer text-center">
                                              <a href="<?php echo e(URL::to('admin/deliveryboys/display')); ?>" type="button" class="btn btn-default pull-left"><?php echo e(trans('labels.back')); ?></a>
                                              <button type="submit" class="btn btn-primary pull-right"><?php echo e(trans('labels.Update')); ?></button>
                                            </div>

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

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/edit.blade.php ENDPATH**/ ?>