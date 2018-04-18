<?php

	class class-CategoriaRepuesto{

		private $idCategoriaRepuesto;
		private $descripcion;

		public function __construct($idCategoriaRepuesto,
					$descripcion){
			$this->idCategoriaRepuesto = $idCategoriaRepuesto;
			$this->descripcion = $descripcion;
		}
		public function getIdCategoriaRepuesto(){
			return $this->idCategoriaRepuesto;
		}
		public function setIdCategoriaRepuesto($idCategoriaRepuesto){
			$this->idCategoriaRepuesto = $idCategoriaRepuesto;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdCategoriaRepuesto: " . $this->idCategoriaRepuesto . 
				" Descripcion: " . $this->descripcion;
		}
	}
?>