<div class="product">
  <article>
    <div class="thumb">
      <div class="badges">
          @php
              $string = substr($products->products_date_added, 0, strpos($products->products_date_added, ' '));
              $date=date_create($string);
              date_add($date,date_interval_create_from_date_string($result['commonContent']['settings']['new_product_duration']." days"));
              $after_date = date_format($date,"Y-m-d");
              if($after_date >= date("Y-m-d", strtotime("now"))){
                print '<span class="badge badge-info">';
                print __('website.New');
                print '</span>';
              }
          @endphp

          @foreach($discountPercentages as $discount_percentage)
              @if ($loop->index == $loop->parent->index)
                  <span class="badge badge-danger"  data-toggle="tooltip" data-placement="bottom"
                    title="{{ (int)$discount_percentage}} '%' @lang('website.off')">
                      {{ (int)$discount_percentage }} %
                  </span>
              @endif
          @endforeach

        @if($products->is_feature == 1)
          <span class="badge badge-success">@lang('website.Featured')</span>
        @endif

      </div>
      <div class="product-hover d-none d-lg-block d-xl-block">
        <div class="icons">

          <a class="icon active swipe-to-top is_liked" products_id="<?=$products->products_id?>" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Wishlist')">
            <i class="fas fa-heart"></i>
          </a>

          <div class="icon swipe-to-top modal_show " products_id ="{{$products->products_id}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Quick View')">
            <i class="fas fa-eye"></i>
          </div>

          <a onclick="myFunction3({{$products->products_id}})" class="icon swipe-to-top"  data-toggle="tooltip" data-placement="bottom" title="@lang('website.Compare')"><i class="fas fa-align-right" data-fa-transform="rotate-90"></i></a>
        </div>
        @if($products->products_type==0)
          @if(!in_array($products->products_id,$result['cartArray']))
            @if($products->products_min_order>1)
              <a class="btn btn-block  btn-secondary swipe-to-top" href="{{ URL::to('/product-detail/'.$products->products_slug)}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.View Detail')">@lang('website.View Detail')</a>
            @else
              <button type="button" class="btn btn-block  btn-secondary cart swipe-to-top" products_id="{{$products->products_id}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Add to Cart')">@lang('website.Add to Cart')</button>
            @endif
          @else
            <button type="button" class="btn btn-block  btn-secondary active swipe-to-top" data-toggle="tooltip" data-placement="bottom" title="@lang('website.Added')">@lang('website.Added')</button>
          @endif
        @elseif($products->products_type==1)
          <a class="btn btn-block  btn-secondary swipe-to-top" href="{{ URL::to('/product-detail/'.$products->products_slug)}}" data-toggle="tooltip" data-placement="bottom" title="@lang('website.View Detail')">@lang('website.View Detail')</a>
        @elseif($products->products_type==2)
          <a href="{{$products->products_url}} swipe-to-top" target="_blank" class="btn btn-block  btn-secondary" data-toggle="tooltip" data-placement="bottom" title="@lang('website.External Link')">@lang('website.External Link')</a>
        @endif


      </div>
      <div class="mobile-icons d-lg-none d-xl-none">
        <div class="icons">
          <div class="icon-liked">

            <a class="icon active swipe-to-top is_liked" products_id="<?=$products->products_id?>">
              <i class="fas fa-heart"></i>
            </a>

          </div>

          <div class="icon modal_show " products_id ="{{$products->products_id}}">
            <i class="fas fa-eye"></i>
          </div>
          <a onclick="myFunction3({{$products->products_id}})" class="icon">
            <i class="fas fa-align-right" data-fa-transform="rotate-90"></i>
          </a>
        </div>
      </div>
      <img class="img-fluid" src="{{asset('').$products->image_path}}" alt="{{$products->products_name}}">
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
      <h5 class="title text-center"><a href="{{ URL::to('/product-detail/'.$products->products_slug)}}">{{$products->products_name}}</a></h5>
      <div class="expand-detail">
        <?=stripslashes($products->products_description)?>
      </div>
      <div class="price">
        @foreach($originalPrices as $orignal_price)
          @if ($loop->index == $loop->parent->index)
            @if(!empty($products->discount_price))
              &nbsp;{{$discount_price+0}}&nbsp;
              <span>{{$orignal_price}}</span>
            @else
              &nbsp;{{ $orignal_price }}&nbsp;
            @endif
          @endif
        @endforeach
      </div>
    </div>


    <div class="mobile-buttons d-lg-none d-xl-none">
      @if($products->products_type==0)
        @if(!in_array($products->products_id,$result['cartArray']))
          @if($products->defaultStock==0)

            <button type="button" class="btn  btn-danger" products_id="{{$products->products_id}}">@lang('website.Out of Stock')</button>
          @elseif($products->products_min_order>1)
            <a class="btn  btn-secondary" href="{{ URL::to('/product-detail/'.$products->products_slug)}}">@lang('website.View Detail')</a>
          @else
            <button type="button" class="btn  btn-secondary cart" products_id="{{$products->products_id}}">@lang('website.Add to Cart')</button>
          @endif
        @else
          <button type="button" class="btn btn-secondary active">@lang('website.Added')</button>
        @endif
      @elseif($products->products_type==1)
        <a class="btn  btn-secondary" href="{{ URL::to('/product-detail/'.$products->products_slug)}}">@lang('website.View Detail')</a>
      @elseif($products->products_type==2)
        <a href="{{$products->products_url}}" target="_blank" class="btn  btn-secondary">@lang('website.External Link')</a>
      @endif
    </div>
  </article>
</div>