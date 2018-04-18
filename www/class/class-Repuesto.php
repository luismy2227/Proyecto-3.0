<?php

	class class-Repuesto{

		private $idRepuesto;
		private $descripcion;
		private $existencia;
		private $precio;
		private $idMantenimiento;
		private $idCategoriaRepuesto;
		private $idMarcaRepuesto;

		public function __construct($idRepuesto,
					$descripcion,
					$existencia,
					$precio,
					$idMantenimiento,
					$idCategoriaRepuesto,
					$idMarcaRepuesto){
			$this->idRepuesto = $idRepuesto;
			$this->descripcion = $descripcion;
			$this->existencia = $existencia;
			$this->precio = $precio;
			$this->idMantenimiento = $idMantenimiento;
			$this->idCategoriaRepuesto = $idCategoriaRepuesto;
			$this->idMarcaRepuesto = $idMarcaRepuesto;
		}
		public function getIdRepuesto(){
			return $this->idRepuesto;
		}
		public function setIdRepuesto($idRepuesto){
			$this->idRepuesto = $idRepuesto;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getExistencia(){
			return $this->existencia;
		}
		public function setExistencia($existencia){
			$this->existencia = $existencia;
		}
		public function getPrecio(){
			return $this->precio;
		}
		public function setPrecio($precio){
			$this->precio = $precio;
		}
		public function getIdMantenimiento(){
			return $this->idMantenimiento;
		}
		public function setIdMantenimiento($idMantenimiento){
			$this->idMantenimiento = $idMantenimiento;
		}
		public function getIdCategoriaRepuesto(){
			return $this->idCategoriaRepuesto;
		}
		public function setIdCategoriaRepuesto($idCategoriaRepuesto){
			$this->idCategoriaRepuesto = $idCategoriaRepuesto;
		}
		public function getIdMarcaRepuesto(){
			return $this->idMarcaRepuesto;
		}
		public function setIdMarcaRepuesto($idMarcaRepuesto){
			$this->idMarcaRepuesto = $idMarcaRepuesto;
		}
		public function __toString(){
			return "IdRepuesto: " . $this->idRepuesto . 
				" Descripcion: " . $this->descripcion . 
				" Existencia: " . $this->existencia . 
				" Precio: " . $this->precio . 
				" IdMantenimiento: " . $this->idMantenimiento . 
				" IdCategoriaRepuesto: " . $this->idCategoriaRepuesto . 
				" IdMarcaRepuesto: " . $this->idMarcaRepuesto;
		}
	}
?>