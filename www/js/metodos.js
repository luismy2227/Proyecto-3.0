function iniciarSesion(){
      var usuario=$("#text_usuario").val();
      var contrasena=$("#text_contrasena").val();
      console.log(usuario, contrasena);
       $.ajax({

   url:"ajax/class-login.php",
    data:{  
      "accion":"iniciar-sesion",
      "inputUsuario":usuario,
      "inputContrasena":contrasena
    },
    dataType: 'JSON',
    method: "POST",
    success: function(respuesta){ 
      console.log(respuesta);
      window.location="index.html"; 
    },
    error:function(e){
        //console.log(e);
        console.log(respuesta);
        window.location="index.html";
    }
  });
}