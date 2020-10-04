<?php $__env->startSection('content'); ?>

<div class="container-fuild">
  <nav aria-label="breadcrumb">
      <div class="container">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>
            <li class="breadcrumb-item active"><a href="<?php echo e(URL::to('/orders')); ?>"><?php echo app('translator')->get('website.orders'); ?></a></li>
            <li class="breadcrumb-item active" aria-current="page"><?php echo app('translator')->get('website.Order information'); ?></li>
          </ol>
      </div>
    </nav>
</div> 

<!--My Order Content -->
<section class="order-two-content pro-content">
  <div class="container">
    <div class="page-heading-title">
        <h2>   <?php echo app('translator')->get('website.Order information'); ?>
        </h2>
     
        </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-12 col-lg-3 ">
      <div class="heading">
          <h2>
              <?php echo app('translator')->get('website.My Account'); ?>
          </h2>
          <hr >
        </div>

        <?php if(Auth::guard('customer')->check()): ?>
        <ul class="list-group">
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/profile')); ?>">
                    <i class="fas fa-user"></i>
                  <?php echo app('translator')->get('website.Profile'); ?>
                </a>
            </li>
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/wishlist')); ?>">
                    <i class="fas fa-heart"></i>
                 <?php echo app('translator')->get('website.Wishlist'); ?>
                </a>
            </li>
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/orders')); ?>">
                    <i class="fas fa-shopping-cart"></i>
                  <?php echo app('translator')->get('website.Orders'); ?>
                </a>
            </li>
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/shipping-address')); ?>">
                    <i class="fas fa-map-marker-alt"></i>
                 <?php echo app('translator')->get('website.Shipping Address'); ?>
                </a>
            </li>
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/logout')); ?>">
                    <i class="fas fa-power-off"></i>
                  <?php echo app('translator')->get('website.Logout'); ?>
                </a>
            </li>
          </ul>
          <?php elseif(!empty(session('guest_checkout')) and session('guest_checkout') == 1): ?>
          <ul class="list-group">
            <li class="list-group-item">
                <a class="nav-link" href="<?php echo e(URL::to('/orders')); ?>">
                    <i class="fas fa-shopping-cart"></i>
                  <?php echo app('translator')->get('website.Orders'); ?>
                </a>
            </li>
          </ul>
          <?php endif; ?>
    </div>
    <div class="col-12 col-lg-9 ">
      

        <div class="row">
          <div class="col-12 col-md-5">
              <div class="heading">
                <h2>                  
                    <?php echo app('translator')->get('website.orderID'); ?>&nbsp;<?php echo e($result['orders'][0]->orders_id); ?>

                </h2>
                <hr >
              </div>

              <table class="table order-id">
                  <tbody>
                      <tr class="d-flex">
                        <td class="col-6 col-md-6"><?php echo app('translator')->get('website.orderStatus'); ?></td>
                        <?php if($result['orders'][0]->orders_status_id == '1'): ?>
                          <td class="col-6 col-md-6">
                            <span class="badge badge-primary"><?php echo e($result['orders'][0]->orders_status); ?></span>
                          </td>
                        <?php elseif($result['orders'][0]->orders_status_id == '2'): ?>
                        <td class="col-6 col-md-6">
                            <span class="badge badge-success"><?php echo e($result['orders'][0]->orders_status); ?></span>
                        </td>
                        <?php elseif($result['orders'][0]->orders_status_id == '3'): ?>
                        <td class="col-6 col-md-6">
                            <span class="badge badge-danger"><?php echo e($result['orders'][0]->orders_status); ?></span>
                        </td>
                        <?php else: ?>
                        <td class="col-6 col-md-6">
                          <span class="badge badge-warning"><?php echo e($result['orders'][0]->orders_status); ?></span>
                        </td>
                        <?php endif; ?>
                      </tr>
                      <tr class="d-flex">
                          <td class="col-6 col-md-6">Order Date</td>
                          <td  class="underline col-6 col-md-6" align="left"><?php echo e(date('d/m/Y', strtotime($result['orders'][0]->date_purchased))); ?></td>
                        </tr>
                    </tbody>
              </table>

          </div>
          <div class="col-12 col-md-7">
              <div class="heading">
                  <h2>
                
                      Shipping Details
                 
                  </h2>
                  <hr >
                </div>

              <table class="table order-id">
                  <tbody>
                      <tr class="d-flex">
                        <td class="address col-12 col-md-6"><?php echo e($result['orders'][0]->delivery_name); ?></td>


                      </tr>
                      <tr class="d-flex">
                          <td  class="address col-12 col-md-12"><?php echo e($result['orders'][0]->delivery_street_address); ?>, <?php echo e($result['orders'][0]->delivery_city); ?>, <?php echo e($result['orders'][0]->delivery_state); ?>,
                          <?php echo e($result['orders'][0]->delivery_postcode); ?>,  <?php echo e($result['orders'][0]->delivery_country); ?></td>

                        </tr>
                    </tbody>
              </table>

          </div>
        </div>

        <div class="row">

            <div class="col-12 col-md-5">
                <div class="heading">
                    <h2>
                    
                        <?php echo app('translator')->get('website.Billing Detail'); ?>
                   
                    </h2>
                    <hr >
                  </div>

                <table class="table order-id">
                  <tbody>
                      <tr class="d-flex">
                        <td class="address col-12"><?php echo e($result['orders'][0]->billing_name); ?></td>
                      </tr>
                      <tr  class="d-flex">
                          <td class="address col-12"><?php echo e($result['orders'][0]->billing_street_address); ?>, <?php echo e($result['orders'][0]->billing_city); ?>, <?php echo e($result['orders'][0]->billing_state); ?>,
                          <?php echo e($result['orders'][0]->billing_postcode); ?>,  <?php echo e($result['orders'][0]->billing_country); ?></td>
                        </tr>
                    </tbody>
              </table>

            </div>
            <div class="col-12 col-md-7">
                <div class="heading">
                    <h2>                     
                         <?php echo app('translator')->get('website.Payment/Shipping Method'); ?>                      
                    </h2>
                    <hr>
                  </div>

                <table class="table order-id">
                    <tbody>
                        <tr class="d-flex">
                          <td class="col-6"><?php echo app('translator')->get('website.Shipping Method'); ?></td>
                          <td class="col-6"><?php echo e($result['orders'][0]->shipping_method); ?></td>
                        </tr>
                        <tr class="d-flex">
                            <td class="col-6"><?php echo app('translator')->get('website.Payment Method'); ?></td>
                            <td class="underline col-6"><?php echo e($result['orders'][0]->payment_method); ?></td>
                          </tr>
                      </tbody>
                </table>

            </div>
          </div>
          
          <?php if($result['commonContent']['settings']['is_enable_location'] == 1): ?>
            <?php if($result['orders'][0]->orders_status_id == '7' ): ?>
              <?php if($result['orders'][0]->deliveryboyinfo): ?>
              <div class="row">
                <div class="col-12 col-md-12">
                  <div class="heading">
                    <h2>                     
                        <?php echo app('translator')->get('website.DeliveryboyInfo'); ?>  
                        
                        <button class="btn btn-success" data-toggle="modal" data-target="#mapModal">
                          <?php echo app('translator')->get('website.Track'); ?> <i class="fas fa-location-arrow"></i> </button>
                    </h2>
                    <hr>
                  </div>
                  
                  <table class="table order-id">
                      <tbody>
                          <tr class="d-flex">
                            <td class="col-6"><?php echo app('translator')->get('website.DeliveryboyName'); ?></td>
                            <td class="col-6"><?php echo e($result['orders'][0]->deliveryboyinfo->first_name); ?> <?php echo e($result['orders'][0]->deliveryboyinfo->last_name); ?> </td>
                          </tr>
                          <tr class="d-flex">
                              <td class="col-6"><?php echo app('translator')->get('website.Contact#'); ?></td>
                              <td class="underline col-6"><?php echo e($result['orders'][0]->deliveryboyinfo->phone); ?></td>
                            </tr>
                        </tbody>
                  </table>
    
                </div>
              </div>
              
              <?php endif; ?>
            <?php endif; ?>
          <?php endif; ?>

          <?php if(count($result['bankdetail'])>0): ?>
          <div class="row">
        <div class="col-12 col-lg-12 ">
      
          <div class="heading">
            <h2>                    
                  <?php echo app('translator')->get('website.Bank Detail'); ?>                     
            </h2>
            <hr style="
            margin-bottom: 0;
        ">
          </div>

          <div class="row">
            <div class="col-12 col-md-4">
                
  
                <table class="table order-id">
                    <tbody>
                          <tr class="d-flex">
                            <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.Bank'); ?></td>
                            <td class="underline col-6 col-md-6" align="left" ><?php echo e(@$result['bankdetail']['bank_name'] ?: '---'); ?></td>
                          </tr>
                          <tr class="d-flex">
                            <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.account_name'); ?></td>
                              <td class="col-6 col-md-6" >
                              <?php echo e(@$result['bankdetail']['account_name'] ?: '---'); ?>

                              </td>
                            </tr>
                      </tbody>
                </table>
            </div>
            <div class="col-12 col-md-4">

                <table class="table order-id">
                  <tbody>
                      
                      <tr class="d-flex">
                        <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.account_number'); ?></td>
                        <td class="underline col-6 col-md-6" align="left" ><?php echo e(@$result['bankdetail']['account_number'] ?: '---'); ?></td>
                      </tr>
                      <tr class="d-flex">
                        <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.short_code'); ?></td>
                          <td class="col-6 col-md-6" >
                          <?php echo e(@$result['bankdetail']['short_code'] ?: '---'); ?>

                          </td>
                        </tr>
                    </tbody>
              </table>
            </div>
            <div class="col-12 col-md-4">

              <table class="table order-id">
                <tbody>
                    
                      <tr class="d-flex">
                        <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.iban'); ?></td>
                          <td class="col-6 col-md-6" >
                          <?php echo e(@$result['bankdetail']['iban'] ?: '---'); ?>

                          </td>
                        </tr>
                      <tr class="d-flex">
                        <td class="col-6 col-md-6" ><?php echo app('translator')->get('website.swift'); ?></td>
                        <td class="underline col-6 col-md-6" align="left" ><?php echo e(@$result['bankdetail']['swift'] ?: '---'); ?></td>
                      </tr>
                  </tbody>
            </table>
  
            </div>
            
          </div>
  
          
  
  
        <!-- ............the end..... -->
      </div>
    </div>
      <?php endif; ?>

        <table class="table items">

  
          <tbody>
            <?php
                $price = 0;
            ?>
            <?php if(count($result['orders']) > 0): ?>
                <?php $__currentLoopData = $result['orders'][0]->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                    $price+= $products->final_price;
                ?>
            <tr class="d-flex responsive-lay">
              <td class="col-12 col-md-2">
                <img class="img-fluid order-img" src="<?php echo e(asset('').$products->image); ?>" alt="<?php echo e($products->products_name); ?>" class="mr-3">
              </td>
              <td class="col-12 col-md-3 item-detail-left">
                <div class="text-body">
                      <h4><?php echo e($products->products_name); ?><br>
                  <small>
                         <?php if(count($products->attributes) >0): ?>
                            <ul>
                              <?php $__currentLoopData = $products->attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attributes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <li><?php echo e($attributes->products_options); ?><span><?php echo e($attributes->products_options_values); ?></span></li>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                          <?php endif; ?>
                  </small></h4>

                </div>

                  </div>
              </td>
              <td class="tag-color col-12 col-md-3"><?php echo e(Session::get('symbol_left')); ?><?php echo e($products->final_price/$products->products_quantity*session('currency_value')); ?><?php echo e(Session::get('symbol_right')); ?></td>
              <td class="col-12 col-md-2">
                  <div class="input-group">
                      <input name="quantity[]" type="text" readonly value="<?php echo e($products->products_quantity); ?>" class="form-control qty" min="1" max="300">

                  </div>
              </td>
              <td  class="tag-s col-12 col-md-2"><?php echo e(Session::get('symbol_left')); ?><?php echo e($products->final_price*session('currency_value')); ?><?php echo e(Session::get('symbol_right')); ?></td>
            </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>


          </tbody>
        </table>
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <?php if(count($result['orders'][0]->statusess)>0): ?>
                    <div style="border-radius:5px;"class="card">
                        <div style="background: none;" class="card-header">
                          <?php echo app('translator')->get('website.Comments'); ?>
                        </div>
                        <div class="card-body">
                        <?php $__currentLoopData = $result['orders'][0]->statusess; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$statusess): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if(!empty($statusess->comments)): ?>
                                <?php if(++$key==1): ?>
                                  <h6><?php echo app('translator')->get('website.Order Comments'); ?>: <?php echo e(date('d/m/Y', strtotime($statusess->date_added))); ?></h6>

                                <?php else: ?>
                                  <h6><?php echo app('translator')->get('website.Admin Comments'); ?>: <?php echo e(date('d/m/Y', strtotime($statusess->date_added))); ?></h6>
                                <?php endif; ?>
                                <p class="card-text"><?php echo e($statusess->comments); ?></p>
                            <?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>


      <!-- ............the end..... -->
    </div>
  </div>
</div>

<div class="modal fade" id="mapModal" tabindex="-1" role="dialog" aria-modal="true">
       
  <div class="modal-dialog modal-dialog-centered modal-lg " role="document">
    <div class="modal-content">
        <div class="modal-body">

            <div class="container">
                <div class="row align-items-center">                   
             
                <div class="form-group">
<input type="text" id="pac-input" name="address_address" class="form-control map-input">
</div>
<div id="address-map-container" style="width:100%;height:400px; ">
<div style="width: 100%; height: 100%" id="map"></div>
</div>
              </div>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
            </div>
          </div>
          <div class="modal-footer">
   
   <button type="button" class="btn btn-primary" onclick="setUserLocation()"><i class="fas fa-location-arrow"></i></button>
   <button type="button" class="btn btn-secondary" onclick="saveAddress()">Save</button>
 </div>
    </div>
  </div>
  </div>
</section>

<script src="https://maps.googleapis.com/maps/api/js?key=<?=$result['commonContent']['settings']['google_map_api']?>&libraries=places&callback=initialize" async defer></script>
    <script>
      var markers;
      var myLatlng;
      var map;
      var geocoder;
     function setUserLocation(){
      if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            myLatlng = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            markers.setPosition(myLatlng);
            map.setCenter(myLatlng);

          }, function() {
          });
        } 
     } 
     function saveAddress(){
      var latlng = markers.getPosition();
      geocoder.geocode({'location': latlng}, function(results, status) {
          if (status === 'OK') {
            if (results[0]) {
             var street = "";
             var state = "";
             var country = "";
             var city = "";
             var postal_code = "";

                for (var i = 0; i < results[0].address_components.length; i++) {
                    for (var b = 0; b < results[0].address_components[i].types.length; b++) {
                        switch (results[0].address_components[i].types[b]) {
                            case 'locality':
                                city = results[0].address_components[i].long_name;
                                break;
                            case 'administrative_area_level_1':
                                state = results[0].address_components[i].long_name;
                                break;
                            case 'country':
                                country = results[0].address_components[i].long_name;
                                break;
                            case 'postal_code':
                              postal_code =  results[0].address_components[i].long_name; 
                              break;
                            case 'route':
                              if (street == "") {
                                street = results[0].address_components[i].long_name;
                              }
                            break;

                            case 'street_address':
                              if (street == "") {
                                street += ", " + results[0].address_components[i].long_name;
                              }
                            break;
                        }
                    }
                }
                $("#postcode").val(postal_code);
                $("#street").val(street);
                $("#city").val(city);

                $("#latitude").val(markers.getPosition().lat());
                $("#longitude").val(markers.getPosition().lng());

                // $("#entry_country_id").val(country);
               
                $("#location").val(latlng);

                $("#entry_country_id option").filter(function() {
                  //may want to use $.trim in here
                  return $(this).text() == country;
                }).prop('selected', true);
                if(getZones("no_loader")){
                  $("#entry_zone_id option").filter(function() {
                    //may want to use $.trim in here
                    return $(this).text() == state;
                  }).prop('selected', true);
                }
                $('#mapModal').modal('hide');

            } else {
              console.log('No results found');
            }
          } else {
            console.log('Geocoder failed due to: ' + status);
          }
        });
     }

     function initialize() {
      defaultPOS = {
              lat: <?=$result['commonContent']['setting'][127]->value?>,
              lng: <?=$result['commonContent']['setting'][128]->value?>
            };
      map = new google.maps.Map(document.getElementById('map'), {
          center: defaultPOS,
          zoom: 13,
          mapTypeId: 'roadmap'
        });
      geocoder = new google.maps.Geocoder;
      markers = new google.maps.Marker({
          map: map,
          draggable:true,
          position: defaultPOS
        });

        
        
        var infowindow = new google.maps.InfoWindow;
        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

          searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          var bounds = new google.maps.LatLngBounds();

          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };
            console.log(place.geometry.location);
            // Create a marker for each place.
            markers.setPosition(place.geometry.location);
            markers.setTitle(place.name);
            

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });
      }

    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/view-order.blade.php ENDPATH**/ ?>