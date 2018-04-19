<?php
	include("../class/class-Conexion.php");
  	include("../class/class-Usuario.php");

  	if(isset($_POST["accion"])){
  		switch ($_POST['accion']) {
			case "iniciarSesion":
  		$objConexion=new Conexion();
  		$correo=$_POST["inputUsuario"];
 		 $password=$_POST["inputContrasena"];
  $respuesta = Usuario::verificarUsuario($objConexion,$correo,$password);
  echo $respuesta;
  echo json_encode($respuesta);	
  break;

  default:
			echo json_encode("Petición inválida");
			break;
		}
		$conexion->cerrarConexion();
	}else{
		echo json_encode("No se especificó petición");
	}
  }
?>
