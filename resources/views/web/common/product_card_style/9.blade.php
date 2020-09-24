<div class="product product9">
  <article>
   <div class="thumb">
     <div class="badges">
      <?php 
        $current_date = date("Y-m-d", strtotime("now"));

        $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
        $date=date_create($string);
        date_add($date,date_interval_create_from_date_string($result['commonContent']['settings']['new_product_duration']." days"));
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
      
        <span class="badge badge-danger"  data-toggle="tooltip" data-placement="bottom" title="<?php echo (int)$discount_percentage; ?>% @lang('website.off')"><?php echo (int)$discount_percentage; ?>%</span>
        <?php }?>
        
      
      @if($products->is_feature == 1)
      <span class="badge badge-success">@lang('website.Featured')</span> 
      @endif  
     </div>
     <div class="product-action-vertical">
     
      @if($products->products_type==0)
       @if(!in_array($products->products_id,$result['cartArray']))
          @if($products->products_min_order>1)
          <a class="btn icon swipe-to-top" href="{{ URL::to('/product-detail/'.$products->products_slug)}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.View Detail')"><i class="fas fa-shopping-bag"></i></a>
          @else
              <button type="button" class="btn icon cart swipe-to-top" products_id="{{$products->products_id}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Add to Cart')"><i class="fas fa-shopping-bag"></i></button>
          @endif
        @else
            <button type="button" class="btn icon active swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Added')"><i class="fas fa-shopping-bag"></i></button>
        @endif
      @elseif($products->products_type==1)
          <a class="btn icon swipe-to-top" href="{{ URL::to('/product-detail/'.$products->products_slug)}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.View Detail')"><i class="fas fa-shopping-bag"></i> </a>
      @elseif($products->products_type==2)
          <a href="{{$products->products_url}}" target="_blank" class="btn icon swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="@lang('website.External Link')"><i class="fas fa-shopping-bag"></i></a>
      @endif
   
     </div>

     <img class="img-fluid" src="{{asset('').$products->image_path}}" alt="{{$products->products_name}}">
     <div class="product-action">

          <div class="btn btn-block btn-secondary icon swipe-to-top modal_show" products_id ="{{$products->products_id}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Quick View')">
            @lang('website.Quick View')
          </div>
    </div>
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
     <h5 class="title"><a href="{{ URL::to('/product-detail/'.$products->products_slug)}}">{{$products->products_name}}</a></h5>
     <p><?php
      $descriptions = strip_tags($products->products_name);
      echo stripslashes($descriptions);
      ?></p>
     <div class="pricetag">
        <div class="price">                     
          @if(!empty($products->discount_price))
            {{Session::get('symbol_left')}}&nbsp;{{$discount_price+0}}&nbsp;{{Session::get('symbol_right')}}
          <span> {{Session::get('symbol_left')}}{{$orignal_price+0}}{{Session::get('symbol_right')}}</span>
          @else
            {{Session::get('symbol_left')}}&nbsp;{{$orignal_price+0}}&nbsp;{{Session::get('symbol_right')}}
          @endif                        
          </div>  

          <a href="javascript:void(0)" class="btn-secondary icon swipe-to-top is_liked" products_id="<?=$products->products_id?>" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Wishlist')">
            <i class="fas fa-heart"></i>
          </a>

     </div> 
  </article>
</div>