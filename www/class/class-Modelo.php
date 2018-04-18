<?php

	class class-Modelo{

		private $idModelo;
		private $descripcion;
		private $idMarca;

		public function __construct($idModelo,
					$descripcion,
					$idMarca){
			$this->idModelo = $idModelo;
			$this->descripcion = $descripcion;
			$this->idMarca = $idMarca;
		}
		public function getIdModelo(){
			return $this->idModelo;
		}
		public function setIdModelo($idModelo){
			$this->idModelo = $idModelo;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getIdMarca(){
			return $this->idMarca;
		}
		public function setIdMarca($idMarca){
			$this->idMarca = $idMarca;
		}
		public function __toString(){
			return "IdModelo: " . $this->idModelo .
				" Descripcion: " . $this->descripcion .
				" IdMarca: " . $this->idMarca;
		}
	}
?>
