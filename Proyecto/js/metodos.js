



function iniciarSesion(){
      var usuario=$("#text_usuario").val();
      var contrasena=$("#text_contrasena").val();
      console.log(usuario, contrasena);
      alert("hola");
      $.ajax({

      url:"/ajax/class-login.php",
      dataType: 'JSON',
      method: "POST",
      data:{  
        "accion":"iniciarSesion",
        "inputUsuario":usuario,
        "inputContrasena":contrasena
      },
      
      success: function(respuesta){
        alert("hola2");
        if (!respuesta.pbOcurrioError){
          alert(respuesta.pcMensaje);
          window.location="../index.html";
        } 
        else{
          alert(respuesta.pcMensaje);
        }
      },
      error:function(e){
        alert("hola3")
        alert(e);
        console.log(e);
      }
    });
  }
