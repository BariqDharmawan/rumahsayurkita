<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />

<?php if(!empty($result['commonContent']['setting'][72]->value)): ?>
<title><?=stripslashes($result['commonContent']['setting'][72]->value)?></title>
<?php else: ?>
<title><?=stripslashes($result['commonContent']['setting'][18]->value)?></title>
<?php endif; ?>

<?php if(!empty($result['commonContent']['setting'][86]->value)): ?>
<link rel="icon" type="image/png" href="<?php echo e(asset('').$result['commonContent']['setting'][86]->value); ?>">
<?php endif; ?>
<meta name="DC.title"  content="<?=stripslashes($result['commonContent']['setting'][73]->value)?>"/>
<meta name="description" content="<?=stripslashes($result['commonContent']['setting'][75]->value)?>"/>
<meta name="keywords" content="<?=stripslashes($result['commonContent']['setting'][74]->value)?>"/>

<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- Core CSS Files -->
<link rel="stylesheet" type="text/css" href="<?php echo e(asset('web/css').'/'.$result['commonContent']['setting'][81]->value); ?>.css">
<script src="<?php echo asset('web/js/app.js'); ?>"></script>
<?php if(Request::path() == 'checkout'): ?>
	<!--------- stripe js ------>
	<script src="https://js.stripe.com/v3/"></script>

	<link rel="stylesheet" type="text/css" href="<?php echo e(asset('web/css/stripe.css')); ?>" data-rel-css="" />

	<!------- paypal ---------->
	<script src="https://www.paypalobjects.com/api/checkout.js"></script>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<?php endif; ?>
 
<!---- onesignal ------>
<script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
<script>
var OneSignal = window.OneSignal || [];
OneSignal.push(function() {
	OneSignal.init({
	appId: "<?php echo e($result['commonContent']['setting'][55]->value); ?>",
	notifyButton: {
		enable: true,
	},
	allowLocalhostAsSecureOrigin: true,
	});
});

</script>	

<?php if(!empty($result['commonContent']['settings']['before_head_tag'])): ?>
	<?=stripslashes($result['commonContent']['settings']['before_head_tag'])?>
<?php endif; ?>

<style>
.form-validate .form-row .has-error .form-control {
    color: red !important;
    border-color: red !important;
}
</style>
<?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/common/meta.blade.php ENDPATH**/ ?>