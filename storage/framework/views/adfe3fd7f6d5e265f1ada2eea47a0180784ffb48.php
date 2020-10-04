<div class="modal-dialog " role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                    aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="bankinfoModalLabel"><?php echo e(trans('labels.Bank Info')); ?></h4>
        </div>
        <?php echo Form::open(array('url' =>'admin/deliveryboys/withdraw/pay', 'name'=>'payform', 'id'=>'payform', 'method'=>'post',
        'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

        <?php echo Form::hidden('payment_withdraw_id', $data['withdraw']->payment_withdraw_id, array('class'=>'form-control', 'id'=>'payments_id')); ?>

        <div class="modal-body">
            <div class="table-responsive ">
                <table class="table">
                    <tbody>
                        
                        <tr>
                            <th class="text-right" width="50%"><?php echo e(trans('labels.Account Title')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_name); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.Account Number')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_account_number); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.Routing Number')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_routing_number); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.IBAN')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_iban); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.Swift')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_swift); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.Amount')); ?></th>
                            <td class="text-left"><?php echo e($data['setting'][19]->value); ?><?php echo e($data['withdraw']->amount); ?></td>
                        </tr>
                        <tr>
                            <th class="text-right"><?php echo e(trans('labels.Bank Address')); ?></th>
                            <td class="text-left"><?php echo e($data['deliveryboys']->bank_address); ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
            <button type="submit" class="btn btn-success"><?php echo e(trans('labels.Pay')); ?></button>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div><?php /**PATH /var/www/html/rumahsayurkita/resources/views/admin/deliveryboys/withdraw/popupdetail.blade.php ENDPATH**/ ?>