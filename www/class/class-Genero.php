<?php

	class class-Genero{

		private $idGenero;
		private $descripcion;

		public function __construct($idGenero,
					$descripcion){
			$this->idGenero = $idGenero;
			$this->descripcion = $descripcion;
		}
		public function getIdGenero(){
			return $this->idGenero;
		}
		public function setIdGenero($idGenero){
			$this->idGenero = $idGenero;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdGenero: " . $this->idGenero .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
