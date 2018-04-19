<?php

	class class-Foto{

		private $idFoto;
		private $rutaFoto;
		private $idVehiculo;

		public function __construct($idFoto,
					$rutaFoto,
					$idVehiculo){
			$this->idFoto = $idFoto;
			$this->rutaFoto = $rutaFoto;
			$this->idVehiculo = $idVehiculo;
		}
		public function getIdFoto(){
			return $this->idFoto;
		}
		public function setIdFoto($idFoto){
			$this->idFoto = $idFoto;
		}
		public function getRutaFoto(){
			return $this->rutaFoto;
		}
		public function setRutaFoto($rutaFoto){
			$this->rutaFoto = $rutaFoto;
		}
		public function getIdVehiculo(){
			return $this->idVehiculo;
		}
		public function setIdVehiculo($idVehiculo){
			$this->idVehiculo = $idVehiculo;
		}
		public function __toString(){
			return "IdFoto: " . $this->idFoto .
				" RutaFoto: " . $this->rutaFoto .
				" IdVehiculo: " . $this->idVehiculo;
		}
	}
?>
