<?php

	class class-Proveedor{

		private $idProveedor;
		private $nombre;

		public function __construct($idProveedor,
					$nombre){
			$this->idProveedor = $idProveedor;
			$this->nombre = $nombre;
		}
		public function getIdProveedor(){
			return $this->idProveedor;
		}
		public function setIdProveedor($idProveedor){
			$this->idProveedor = $idProveedor;
		}
		public function getNombre(){
			return $this->nombre;
		}
		public function setNombre($nombre){
			$this->nombre = $nombre;
		}
		public function __toString(){
			return "IdProveedor: " . $this->idProveedor . 
				" Nombre: " . $this->nombre;
		}
	}
?>