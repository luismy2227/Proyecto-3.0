<?php

	class class-TelefonoProveedor{

		private $idTelefonoProveedor;
		private $telefono;
		private $idProveedor;

		public function __construct($idTelefonoProveedor,
					$telefono,
					$idProveedor){
			$this->idTelefonoProveedor = $idTelefonoProveedor;
			$this->telefono = $telefono;
			$this->idProveedor = $idProveedor;
		}
		public function getIdTelefonoProveedor(){
			return $this->idTelefonoProveedor;
		}
		public function setIdTelefonoProveedor($idTelefonoProveedor){
			$this->idTelefonoProveedor = $idTelefonoProveedor;
		}
		public function getTelefono(){
			return $this->telefono;
		}
		public function setTelefono($telefono){
			$this->telefono = $telefono;
		}
		public function getIdProveedor(){
			return $this->idProveedor;
		}
		public function setIdProveedor($idProveedor){
			$this->idProveedor = $idProveedor;
		}
		public function __toString(){
			return "IdTelefonoProveedor: " . $this->idTelefonoProveedor . 
				" Telefono: " . $this->telefono . 
				" IdProveedor: " . $this->idProveedor;
		}
	}
?>