<?php

	class class-Version{

		private $idVersion;
		private $descriopcion;
		private $idModelo;

		public function __construct($idVersion,
					$descriopcion,
					$idModelo){
			$this->idVersion = $idVersion;
			$this->descriopcion = $descriopcion;
			$this->idModelo = $idModelo;
		}
		public function getIdVersion(){
			return $this->idVersion;
		}
		public function setIdVersion($idVersion){
			$this->idVersion = $idVersion;
		}
		public function getDescriopcion(){
			return $this->descriopcion;
		}
		public function setDescriopcion($descriopcion){
			$this->descriopcion = $descriopcion;
		}
		public function getIdModelo(){
			return $this->idModelo;
		}
		public function setIdModelo($idModelo){
			$this->idModelo = $idModelo;
		}
		public function __toString(){
			return "IdVersion: " . $this->idVersion .
				" Descriopcion: " . $this->descriopcion .
				" IdModelo: " . $this->idModelo;
		}
	}
?>
