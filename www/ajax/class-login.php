<?php
	include("../class/class-Conexion.php");
  include("../class/class-Usuario.php");

  $objConexion=new Conexion();
  $correo=$_POST["inputUsuario"];
  $password=$_POST["inpuContrasena"];

  $respuesta = Usuario::verificarUsuario($objConexion,$correo,$password);
	echo json_encode($respuesta);
?>
