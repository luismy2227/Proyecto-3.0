<?php

	class class-Estado{

		private $idEstado;
		private $descripcion;

		public function __construct($idEstado,
					$descripcion){
			$this->idEstado = $idEstado;
			$this->descripcion = $descripcion;
		}
		public function getIdEstado(){
			return $this->idEstado;
		}
		public function setIdEstado($idEstado){
			$this->idEstado = $idEstado;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdEstado: " . $this->idEstado .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
