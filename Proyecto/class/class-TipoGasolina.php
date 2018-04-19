<?php

	class class-TipoGasolina{

		private $idTipoGasolina;
		private $descripcion;

		public function __construct($idTipoGasolina,
					$descripcion){
			$this->idTipoGasolina = $idTipoGasolina;
			$this->descripcion = $descripcion;
		}
		public function getIdTipoGasolina(){
			return $this->idTipoGasolina;
		}
		public function setIdTipoGasolina($idTipoGasolina){
			$this->idTipoGasolina = $idTipoGasolina;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdTipoGasolina: " . $this->idTipoGasolina .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
