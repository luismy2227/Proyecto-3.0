<?php

	class class-Cargo{

		private $idCargo;
		private $descripcion;

		public function __construct($idCargo,
					$descripcion){
			$this->idCargo = $idCargo;
			$this->descripcion = $descripcion;
		}
		public function getIdCargo(){
			return $this->idCargo;
		}
		public function setIdCargo($idCargo){
			$this->idCargo = $idCargo;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdCargo: " . $this->idCargo .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
