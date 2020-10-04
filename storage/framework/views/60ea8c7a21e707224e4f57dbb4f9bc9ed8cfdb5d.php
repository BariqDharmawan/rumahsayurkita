<?php $__env->startSection('content'); ?>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<div id="main-content">
    <div class="container clear">
        <div class="panel-body" style="border: 1px solid #ddd;padding: 10px;background: #eee;width: 30%;">
            <form id="rzp-footer-form" action="<?php echo route('dopayment'); ?>" method="POST" style="width: 100%; text-align: center" >
                <?php echo csrf_field(); ?>

                <a href="https://amzn.to/2RlZQXk">
                    <img src="https://images-na.ssl-images-amazon.com/images/I/31tPpWGQWzL.jpg" />
                </a>
                <br/>
                <p><br/>Price: 2,475 INR </p>
                <input type="hidden" name="amount" id="amount" value="2475"/>
                <div class="pay">
                    <button class="razorpay-payment-button btn filled small" id="paybtn" type="button">Pay with Razorpay</button>
                </div>
            </form>
            <br/><br/>
            <div id="paymentDetail" style="display: none">
                <center>
                    <div>paymentID: <span id="paymentID"></span></div>
                    <div>paymentDate: <span id="paymentDate"></span></div>
                </center>
            </div>
        </div>

    </div>
</div>

<script>
    $('#rzp-footer-form').submit(function (e) {
        var button = $(this).find('button');
        var parent = $(this);
        button.attr('disabled', 'true').html('Please Wait...');
        $.ajax({
            method: 'get',
            url: this.action,
            data: $(this).serialize(),
            complete: function (r) {
                console.log('complete');
                console.log(r);
            }
        })
        return false;
    })
</script>

<script>
    function padStart(str) {
        return ('0' + str).slice(-2)
    }

    function demoSuccessHandler(transaction) {
        // You can write success code here. If you want to store some data in database.
        $("#paymentDetail").removeAttr('style');
        $('#paymentID').text(transaction.razorpay_payment_id);
        var paymentDate = new Date();
        $('#paymentDate').text(
                padStart(paymentDate.getDate()) + '.' + padStart(paymentDate.getMonth() + 1) + '.' + paymentDate.getFullYear() + ' ' + padStart(paymentDate.getHours()) + ':' + padStart(paymentDate.getMinutes())
                );

        $.ajax({
            method: 'post',
            url: "<?php echo route('dopayment'); ?>",
            data: {
                "_token": "<?php echo e(csrf_token()); ?>",
                "razorpay_payment_id": transaction.razorpay_payment_id
            },
            complete: function (r) {
                console.log('complete');
                console.log(r);
            }
        })
    }
</script>
<script>
    var options = {
        key: "<?php echo e(env('RAZORPAY_KEY')); ?>",
        amount: '247500',
        name: 'CodesCompanion',
        description: 'TVS Keyboard',
        image: 'https://i.imgur.com/n5tjHFD.png',
        handler: demoSuccessHandler
    }
</script>
<script>
    window.r = new Razorpay(options);
    document.getElementById('paybtn').onclick = function () {
        r.open()
    }
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/rumahsayurkita/resources/views/web/pay.blade.php ENDPATH**/ ?>