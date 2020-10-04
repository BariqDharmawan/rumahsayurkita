<!-- //banner one -->
<div class="banner-sixteen">
      <div class="container">
        <div class="group-banners" id="app">
          <?php  $data = json_encode($result); ?>
          <banner-sixteen-component :data="<?php echo e($data); ?>"></banner-sixteen-component>
        </div>
      </div>
</div>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/banners_views/banner16.blade.php ENDPATH**/ ?>