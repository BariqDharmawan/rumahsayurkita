<!-- //banner one -->
<div class="banner-one">
      <div class="container">
        <div class="group-banners" id="app">
          <?php  $data = json_encode($result); ?>
          <ad-banner3-component :data="<?php echo e($data); ?>"></ad-banner3-component>
        </div>
      </div>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/banners_views/ad_banner3.blade.php ENDPATH**/ ?>