<!-- //banner one -->
<div class="banner-three">
      <div class="container">
        <div class="group-banners" id="app">
          <?php  $data = json_encode($result); ?>
          <banner-three-component :data="<?php echo e($data); ?>"></banner-three-component>
        </div>
      </div>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/banners_views/banner3.blade.php ENDPATH**/ ?>