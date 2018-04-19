<?php

	class class-Garage{

		private $idGarage;
		private $descripcion;
		private $idSucursal;

		public function __construct($idGarage,
					$descripcion,
					$idSucursal){
			$this->idGarage = $idGarage;
			$this->descripcion = $descripcion;
			$this->idSucursal = $idSucursal;
		}
		public function getIdGarage(){
			return $this->idGarage;
		}
		public function setIdGarage($idGarage){
			$this->idGarage = $idGarage;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getIdSucursal(){
			return $this->idSucursal;
		}
		public function setIdSucursal($idSucursal){
			$this->idSucursal = $idSucursal;
		}
		public function __toString(){
			return "IdGarage: " . $this->idGarage .
				" Descripcion: " . $this->descripcion .
				" IdSucursal: " . $this->idSucursal;
		}
	}
?>
