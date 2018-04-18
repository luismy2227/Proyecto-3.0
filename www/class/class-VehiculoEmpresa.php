<?php

	class class-VehiculoEmpresa{

		private $idVehiculoEmpresa;
		private $fechaAdquisicion;
		private $idVehiculo;
		private $idSeguro;
		private $idEstado;
		private $precioVenta;
		private $precioRentaHora;
		private $seVente;
		private $seRenta;
		private $estadoMatricula;
		private $montoMatricula;

		public function __construct($idVehiculoEmpresa,
					$fechaAdquisicion,
					$idVehiculo,
					$idSeguro,
					$idEstado,
					$precioVenta,
					$precioRentaHora,
					$seVente,
					$seRenta,
					$estadoMatricula,
					$montoMatricula){
			$this->idVehiculoEmpresa = $idVehiculoEmpresa;
			$this->fechaAdquisicion = $fechaAdquisicion;
			$this->idVehiculo = $idVehiculo;
			$this->idSeguro = $idSeguro;
			$this->idEstado = $idEstado;
			$this->precioVenta = $precioVenta;
			$this->precioRentaHora = $precioRentaHora;
			$this->seVente = $seVente;
			$this->seRenta = $seRenta;
			$this->estadoMatricula = $estadoMatricula;
			$this->montoMatricula = $montoMatricula;
		}
		public function getIdVehiculoEmpresa(){
			return $this->idVehiculoEmpresa;
		}
		public function setIdVehiculoEmpresa($idVehiculoEmpresa){
			$this->idVehiculoEmpresa = $idVehiculoEmpresa;
		}
		public function getFechaAdquisicion(){
			return $this->fechaAdquisicion;
		}
		public function setFechaAdquisicion($fechaAdquisicion){
			$this->fechaAdquisicion = $fechaAdquisicion;
		}
		public function getIdVehiculo(){
			return $this->idVehiculo;
		}
		public function setIdVehiculo($idVehiculo){
			$this->idVehiculo = $idVehiculo;
		}
		public function getIdSeguro(){
			return $this->idSeguro;
		}
		public function setIdSeguro($idSeguro){
			$this->idSeguro = $idSeguro;
		}
		public function getIdEstado(){
			return $this->idEstado;
		}
		public function setIdEstado($idEstado){
			$this->idEstado = $idEstado;
		}
		public function getPrecioVenta(){
			return $this->precioVenta;
		}
		public function setPrecioVenta($precioVenta){
			$this->precioVenta = $precioVenta;
		}
		public function getPrecioRentaHora(){
			return $this->precioRentaHora;
		}
		public function setPrecioRentaHora($precioRentaHora){
			$this->precioRentaHora = $precioRentaHora;
		}
		public function getSeVente(){
			return $this->seVente;
		}
		public function setSeVente($seVente){
			$this->seVente = $seVente;
		}
		public function getSeRenta(){
			return $this->seRenta;
		}
		public function setSeRenta($seRenta){
			$this->seRenta = $seRenta;
		}
		public function getEstadoMatricula(){
			return $this->estadoMatricula;
		}
		public function setEstadoMatricula($estadoMatricula){
			$this->estadoMatricula = $estadoMatricula;
		}
		public function getMontoMatricula(){
			return $this->montoMatricula;
		}
		public function setMontoMatricula($montoMatricula){
			$this->montoMatricula = $montoMatricula;
		}
		public function __toString(){
			return "IdVehiculoEmpresa: " . $this->idVehiculoEmpresa .
				" FechaAdquisicion: " . $this->fechaAdquisicion .
				" IdVehiculo: " . $this->idVehiculo .
				" IdSeguro: " . $this->idSeguro .
				" IdEstado: " . $this->idEstado .
				" PrecioVenta: " . $this->precioVenta .
				" PrecioRentaHora: " . $this->precioRentaHora .
				" SeVente: " . $this->seVente .
				" SeRenta: " . $this->seRenta .
				" EstadoMatricula: " . $this->estadoMatricula .
				" MontoMatricula: " . $this->montoMatricula;
		}
	}
?>
