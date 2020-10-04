<!-- //banner one -->
<div class="banner-one">
      <div class="container">
        <div class="group-banners" id="app">
          <?php  $data = json_encode($result); ?>
          <carousel1-slider-component :data="<?php echo e($data); ?>"></carousel1-slider-component>
        </div>
      </div>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/sliders_view/carousal1.blade.php ENDPATH**/ ?>