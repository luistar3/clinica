<?php  
   @session_start();

  // include_once('../complements/funciones.php');

  //if( isset($_SESSION['usuario']["ses_UsuarioLogeado"]) and $_SESSION['usuario']["ses_UsuarioLogeado"] == true ){
    //header('Location: ../../modules');

    //echo($_SESSION['usuario']["ses_UsuarioLogeado"]);
  //}

  $parametro_login = "6x8RlHMFSK";

  // if (isset($_SESSION['mensaje'])) {
     # code...
    // echo("<script> alert(".$_SESSION['mensaje'].");</script>");
   //}
  
?>
<?php  
   @session_start();

  // include_once('../complements/funciones.php');

  //if( isset($_SESSION['usuario']["ses_UsuarioLogeado"]) and $_SESSION['usuario']["ses_UsuarioLogeado"] == true ){
    //header('Location: ../../modules');

    //echo($_SESSION['usuario']["ses_UsuarioLogeado"]);
  //}

  $parametro_login = "6x8RlHMFSK";

  // if (isset($_SESSION['mensaje'])) {
     # code...
    // echo("<script> alert(".$_SESSION['mensaje'].");</script>");
   //}
  
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Clinica La Luz Tacna</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- Tell the browser to be responsive to screen width -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="../../assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../../assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../assets/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../../assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../assets/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../../assets/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">

<style>
#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
  filter: blur(3px);
}

/* Add some content at the bottom of the video/page */
.content {
  position: fixed;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}

#transparente{
  background: #b0131e;
  
}
/* Style the button used to pause/play the video */
#myBtn {
  width: 200px;
  font-size: 18px;
  padding: 10px;
  border: none;
  background: #000;
  color: #fff;
  cursor: pointer;
}

#myBtn:hover {
  background: #ddd;
  color: black;
}
</style>
<video autoplay muted loop id="myVideo">
  <source src="../../images/bg.mp4" type="video/mp4">
</video>
<div class="login-box">
  <div id="transparente" class="card login-logo">
    <h3 style="color: #fffafa;" href="../../index2.html"><b>Clínica La Luz</b> TACNA</h3>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Iniciar Sesión</p>

      <form action="">
        <div class="input-group mb-3">
          <input type="text" id="vuser" class="form-control" placeholder="Usuario">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" id="vpass" class="form-control" placeholder="Password" onkeypress="pulsar(event)" >
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div> -->
          <!-- /.col -->
          <div class="col-12">
            <button type="button" id="btn_Login_iniciarSession" class="btn btn-danger btn-block btn-flat">Ingresar</button>
          </div>
          <!-- /.col -->
        </div>
      
        </form>
      <!-- <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div> -->
      <!-- /.social-auth-links -->

      <!-- <p class="mb-1">
        <a href="#">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p> -->
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../../assets/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE App -->
<script src="../../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../assets/dist/js/demo.js"></script>

</body>
</html>

<script>
// Get the video
var video = document.getElementById("myVideo");

// Get the button
var btn = document.getElementById("myBtn");

// Pause and play the video, and change the button text
function myFunction() {
  if (video.paused) {
    video.play();
    btn.innerHTML = "Pause";
  } else {
    video.pause();
    btn.innerHTML = "Play";
  }
}
</script>
<script>

$('document').ready(function(){

    // $('.select2').select2({
    //     theme: 'bootstrap4'
    //   });

    // $('#id_selectAreaBuscar').change(function () { 
    //   fnc_recargarTablaIdArea();
      
    // });

    //   fnc_listarOpciones();

    $( "#btn_Login_iniciarSession" ).click(function() {
      fnc_verificarUsuario();
    });
   

    // $( "#id_btnGuardarModificarPersona" ).click(function() {
    //   fnc_guardarModificarPersona();
    // });


});

function pulsar(e) {
    if (e.keyCode === 13 && !e.shiftKey) {
      fnc_verificarUsuario();
    }
}

function fnc_verificarUsuario(){

  var vuser = document.getElementById("vuser").value;
  var vpass = document.getElementById("vpass").value;

  $parametros={
    "usuario" : vuser,
    "contrasena" : vpass
  }
  $.ajax({
    type: "POST",
    url: "../../modules/usuario.php?p=6x8RlHMFSK",
    data: $parametros,
    
    success: function (re) {
     
      if( re=="1" ){
        location.href ="../../modules/index.php";
      }
      
    }
  })
}


</script>

