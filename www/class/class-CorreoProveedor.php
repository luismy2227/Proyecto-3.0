<?php

	class class-CorreoProveedor{

		private $idCorreoProveedor;
		private $correo;
		private $idProveedor;

		public function __construct($idCorreoProveedor,
					$correo,
					$idProveedor){
			$this->idCorreoProveedor = $idCorreoProveedor;
			$this->correo = $correo;
			$this->idProveedor = $idProveedor;
		}
		public function getIdCorreoProveedor(){
			return $this->idCorreoProveedor;
		}
		public function setIdCorreoProveedor($idCorreoProveedor){
			$this->idCorreoProveedor = $idCorreoProveedor;
		}
		public function getCorreo(){
			return $this->correo;
		}
		public function setCorreo($correo){
			$this->correo = $correo;
		}
		public function getIdProveedor(){
			return $this->idProveedor;
		}
		public function setIdProveedor($idProveedor){
			$this->idProveedor = $idProveedor;
		}
		public function __toString(){
			return "IdCorreoProveedor: " . $this->idCorreoProveedor . 
				" Correo: " . $this->correo . 
				" IdProveedor: " . $this->idProveedor;
		}
	}
?>