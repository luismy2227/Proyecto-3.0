<?php

	class class-Vehiculo{

		private $idVehiculo;
		private $color;
		private $placa;
		private $anio;
		private $generacion;
		private $serie_vin;
		private $tipoMotor;
		private $idMarca;
		private $idTransmision;
		private $idTipoGasolina;
		private $idGarage;
		private $idCilindraje;
		private $idModelo;
		private $idVersion;

		public function __construct($idVehiculo,
					$color,
					$placa,
					$anio,
					$generacion,
					$serie_vin,
					$tipoMotor,
					$idMarca,
					$idTransmision,
					$idTipoGasolina,
					$idGarage,
					$idCilindraje,
					$idModelo,
					$idVersion){
			$this->idVehiculo = $idVehiculo;
			$this->color = $color;
			$this->placa = $placa;
			$this->anio = $anio;
			$this->generacion = $generacion;
			$this->serie_vin = $serie_vin;
			$this->tipoMotor = $tipoMotor;
			$this->idMarca = $idMarca;
			$this->idTransmision = $idTransmision;
			$this->idTipoGasolina = $idTipoGasolina;
			$this->idGarage = $idGarage;
			$this->idCilindraje = $idCilindraje;
			$this->idModelo = $idModelo;
			$this->idVersion = $idVersion;
		}
		public function getIdVehiculo(){
			return $this->idVehiculo;
		}
		public function setIdVehiculo($idVehiculo){
			$this->idVehiculo = $idVehiculo;
		}
		public function getColor(){
			return $this->color;
		}
		public function setColor($color){
			$this->color = $color;
		}
		public function getPlaca(){
			return $this->placa;
		}
		public function setPlaca($placa){
			$this->placa = $placa;
		}
		public function getAnio(){
			return $this->anio;
		}
		public function setAnio($anio){
			$this->anio = $anio;
		}
		public function getGeneracion(){
			return $this->generacion;
		}
		public function setGeneracion($generacion){
			$this->generacion = $generacion;
		}
		public function getSerie_vin(){
			return $this->serie_vin;
		}
		public function setSerie_vin($serie_vin){
			$this->serie_vin = $serie_vin;
		}
		public function getTipoMotor(){
			return $this->tipoMotor;
		}
		public function setTipoMotor($tipoMotor){
			$this->tipoMotor = $tipoMotor;
		}
		public function getIdMarca(){
			return $this->idMarca;
		}
		public function setIdMarca($idMarca){
			$this->idMarca = $idMarca;
		}
		public function getIdTransmision(){
			return $this->idTransmision;
		}
		public function setIdTransmision($idTransmision){
			$this->idTransmision = $idTransmision;
		}
		public function getIdTipoGasolina(){
			return $this->idTipoGasolina;
		}
		public function setIdTipoGasolina($idTipoGasolina){
			$this->idTipoGasolina = $idTipoGasolina;
		}
		public function getIdGarage(){
			return $this->idGarage;
		}
		public function setIdGarage($idGarage){
			$this->idGarage = $idGarage;
		}
		public function getIdCilindraje(){
			return $this->idCilindraje;
		}
		public function setIdCilindraje($idCilindraje){
			$this->idCilindraje = $idCilindraje;
		}
		public function getIdModelo(){
			return $this->idModelo;
		}
		public function setIdModelo($idModelo){
			$this->idModelo = $idModelo;
		}
		public function getIdVersion(){
			return $this->idVersion;
		}
		public function setIdVersion($idVersion){
			$this->idVersion = $idVersion;
		}
		public function __toString(){
			return "IdVehiculo: " . $this->idVehiculo .
				" Color: " . $this->color .
				" Placa: " . $this->placa .
				" Anio: " . $this->anio .
				" Generacion: " . $this->generacion .
				" Serie_vin: " . $this->serie_vin .
				" TipoMotor: " . $this->tipoMotor .
				" IdMarca: " . $this->idMarca .
				" IdTransmision: " . $this->idTransmision .
				" IdTipoGasolina: " . $this->idTipoGasolina .
				" IdGarage: " . $this->idGarage .
				" IdCilindraje: " . $this->idCilindraje .
				" IdModelo: " . $this->idModelo .
				" IdVersion: " . $this->idVersion;
		}
	}
?>
