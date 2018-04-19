<?php

	class class-Sucursal{

		private $idSucursal;
		private $descripcion;
		private $idDireccion;

		public function __construct($idSucursal,
					$descripcion,
					$idDireccion){
			$this->idSucursal = $idSucursal;
			$this->descripcion = $descripcion;
			$this->idDireccion = $idDireccion;
		}
		public function getIdSucursal(){
			return $this->idSucursal;
		}
		public function setIdSucursal($idSucursal){
			$this->idSucursal = $idSucursal;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getIdDireccion(){
			return $this->idDireccion;
		}
		public function setIdDireccion($idDireccion){
			$this->idDireccion = $idDireccion;
		}
		public function __toString(){
			return "IdSucursal: " . $this->idSucursal .
				" Descripcion: " . $this->descripcion .
				" IdDireccion: " . $this->idDireccion;
		}
	}
?>
