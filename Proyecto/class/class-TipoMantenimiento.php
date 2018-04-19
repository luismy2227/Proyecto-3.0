<?php

	class class-TipoMantenimiento{

		private $idTipoMantenimiento;
		private $descripcion;
		private $costo;

		public function __construct($idTipoMantenimiento,
					$descripcion,
					$costo){
			$this->idTipoMantenimiento = $idTipoMantenimiento;
			$this->descripcion = $descripcion;
			$this->costo = $costo;
		}
		public function getIdTipoMantenimiento(){
			return $this->idTipoMantenimiento;
		}
		public function setIdTipoMantenimiento($idTipoMantenimiento){
			$this->idTipoMantenimiento = $idTipoMantenimiento;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getCosto(){
			return $this->costo;
		}
		public function setCosto($costo){
			$this->costo = $costo;
		}
		public function __toString(){
			return "IdTipoMantenimiento: " . $this->idTipoMantenimiento . 
				" Descripcion: " . $this->descripcion . 
				" Costo: " . $this->costo;
		}
	}
?>