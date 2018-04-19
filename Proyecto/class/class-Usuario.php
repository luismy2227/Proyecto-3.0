<?php

	class class-Usuario{

		private $idUsuario;
		private $nombreUsuario;
		private $imagenRuta;

		public function __construct($idUsuario,
					$nombreUsuario,
					$imagenRuta){
			$this->idUsuario = $idUsuario;
			$this->nombreUsuario = $nombreUsuario;
			$this->imagenRuta = $imagenRuta;
		}
		public function getIdUsuario(){
			return $this->idUsuario;
		}
		public function setIdUsuario($idUsuario){
			$this->idUsuario = $idUsuario;
		}
		public function getNombreUsuario(){
			return $this->nombreUsuario;
		}
		public function setNombreUsuario($nombreUsuario){
			$this->nombreUsuario = $nombreUsuario;
		}
		public function getImagenRuta(){
			return $this->imagenRuta;
		}
		public function setImagenRuta($imagenRuta){
			$this->imagenRuta = $imagenRuta;
		}
		public function __toString(){
			return "IdUsuario: " . $this->idUsuario .
				" NombreUsuario: " . $this->nombreUsuario .
				" ImagenRuta: " . $this->imagenRuta;
		}
	}

	public static function verificarUsuario($conexion,$usuario,$contrasena){
			$sql=sprintf("
				SELECT  * FROM Funcion_Login('%s', '%s');
				",$usuario, $contrasena
			);
			$resultado=$conexion->ejecutarConsulta($sql);
			return $resultado;
		}
?>
