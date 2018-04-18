<?php

	class class-Cilindraje{

		private $idCilindraje;
		private $descripcion;

		public function __construct($idCilindraje,
					$descripcion){
			$this->idCilindraje = $idCilindraje;
			$this->descripcion = $descripcion;
		}
		public function getIdCilindraje(){
			return $this->idCilindraje;
		}
		public function setIdCilindraje($idCilindraje){
			$this->idCilindraje = $idCilindraje;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdCilindraje: " . $this->idCilindraje .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
