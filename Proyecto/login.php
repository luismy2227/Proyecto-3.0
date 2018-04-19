<!DOCTYPE html>
<html>
<html lang="en">
<head>
  <meta charset="utf-8">

  <title>RENTCAR</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- styles -->
  <!--link href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700" rel="stylesheet"-->
  <link href="assets/css/bootstrap.css" rel="stylesheet">
  <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
  <link href="assets/css/docs.css" rel="stylesheet">
  <link href="assets/css/prettyPhoto.css" rel="stylesheet">
  <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">
  <link href="assets/css/flexslider.css" rel="stylesheet">
  <link href="assets/css/sequence.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/color/default.css" rel="stylesheet">

  <!-- fav and touch icons -->
  <link rel="shortcut icon" href="assets/ico/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

  <title>Login</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  


</head>

  <body class="login-img3-body">
    <!-- Bloque para la barra de inicio -->
       <div class="container">
      <form class="login-form">
      	<h2 id="respuesta">RESP: </h2>
        <div class="login-wrap">
          <p class="login-img"><i class="icon_lock_alt"></i></p>
          <div class="input-group">
            <span class="input-group-addon"><i class="icon_profile"></i></span>
            <input type="text" id="text_usuario" class="form-control" placeholder="Usuario" autofocus>
          </div>
          <div class="input-group">
            <span class="input-group-addon"><i class="icon_key_alt"></i></span>
            <input type="password" id="text_contrasena" class="form-control" placeholder="Contraseña">
          </div>
          <label class="checkbox">
            <input type="checkbox" value="remember-me"> Recordarme
            <span class="pull-right"> <a href="#"> ¿Olvidaste la Contraseña?</a></span>
          </label>
          <button class="btn btn-primary btn-lg btn-block" id="btn_Entrar" type="submit" onclick="iniciarSesion();">Entrar</button>
        </div>
      </form>
      <div class="text-right">
      </div>
    </div>
    </div>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/metodos.js"></script>
    <!--script type="text/javascript" srs="metodos.js"></script-->
  </body>
</html>
