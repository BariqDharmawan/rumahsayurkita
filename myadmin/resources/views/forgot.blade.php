<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Rumah Sayur Kita | Forgot Password</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/font-awesome/css/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{URL::asset('/public/assets/bower_components/Ionicons/css/ionicons.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{URL::asset('/public/assets/dist/css/AdminLTE.min.css')}}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{URL::asset('/public/assets/plugins/iCheck/square/blue.css')}}">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

    <body class="card-no-border">
        <section id="wrapper">
            <div class="login-register" style="background-image:url({{ asset('/images/background/login-register.jpg') }});padding: 20px;">
                <div class="login-box card">
                    <div class="card-body">
                        <div class="login-form">
                            <h4>Forgot Password</h4>
                            @include('layouts.message')
                            <form class="form-valide" method="post" action="{{route('forgotPost')}}">
                                {{csrf_field()}}
                                <div class="form-group row m-t-40">
                                    <input type="text" class="form-control" id="val-email" name="val-email" placeholder="Your Email *">
                                </div>
                                <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Send Mail</button>
                                <!-- <div class="register-link m-t-15 text-center">
                                    <p><a href="{{route('index')}}"> Return to Login</a></p>
                                </div> -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>


<!-- jQuery 3 -->
<script src="{{URL::asset('/public/assets/bower_components/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{URL::asset('/public/assets/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- iCheck -->
<script src="{{URL::asset('/public/assets/plugins/iCheck/icheck.min.js')}}"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
<script type="text/javascript">
        $('div.alert').delay(3000).slideUp(300);
</script>
</body>
</html>

