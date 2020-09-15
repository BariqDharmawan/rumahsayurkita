(function ($) {
  $("#ckbCheckAll").click(function () {
    $(".checkBoxClass").prop('checked', $(this).prop('checked'));
  });

  $('#delete_all').click(function () {

    var all_ids = $("input[name='all_ids[]']:checked").serialize();
    var action = $(this).data('action');
    // var d_url='/admin/request-quotes/deleteall';
    if (all_ids) {
      var res = confirm('Are you sure to delete  records');
      if (res) {
        $.ajax({
          method: 'post',
          url: './' + action + '/deleteall',
          data: {
            '_token': $('meta[name="csrf-token"]').attr('content'),
            all_ids: all_ids,
            action: action
          },
          success: function (data) {
            //alert(data.message);
            if (data.status == 'success') {
              window.location.reload();
              $('#main').html('<div class="alert alert-success col-ssm-12" >' + data.message + '</div>');
            }
            else {
              $('#main').html('<div class="alert alert-danger col-ssm-12" >' + data.message + '</div>');
            }
          },
          error: function (data) {
            alert('error');

          }
        });
      }
      else {
        return false;
      }
    }
    else {
      alert('Please select items');
      return false;
    }



  });


})(jQuery);