<?php if($result['order_url']=='live'): ?>
<script src="https://oppwa.com/v1/paymentWidgets.js?checkoutId=<?php echo e($result['token']); ?>"></script>
<?php else: ?>
<script src="https://test.oppwa.com/v1/paymentWidgets.js?checkoutId=<?php echo e($result['token']); ?>"></script>
<?php endif; ?>

<form action="<?php echo e($result['webURL']); ?>" class="paymentWidgets" data-brands="VISA MASTER AMEX"></form><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/hyperpay.blade.php ENDPATH**/ ?>