<?php

	class class-MarcaRepuesto{

		private $idMarcaRepuesto;
		private $descripcion;

		public function __construct($idMarcaRepuesto,
					$descripcion){
			$this->idMarcaRepuesto = $idMarcaRepuesto;
			$this->descripcion = $descripcion;
		}
		public function getIdMarcaRepuesto(){
			return $this->idMarcaRepuesto;
		}
		public function setIdMarcaRepuesto($idMarcaRepuesto){
			$this->idMarcaRepuesto = $idMarcaRepuesto;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdMarcaRepuesto: " . $this->idMarcaRepuesto . 
				" Descripcion: " . $this->descripcion;
		}
	}
?>