<?php

	class class-VehiculoCliente{

		private $idVehiculoCliente;
		private $fechaRegistro;
		private $idVehiculo;
		private $idClientePertenece;

		public function __construct($idVehiculoCliente,
					$fechaRegistro,
					$idVehiculo,
					$idClientePertenece){
			$this->idVehiculoCliente = $idVehiculoCliente;
			$this->fechaRegistro = $fechaRegistro;
			$this->idVehiculo = $idVehiculo;
			$this->idClientePertenece = $idClientePertenece;
		}
		public function getIdVehiculoCliente(){
			return $this->idVehiculoCliente;
		}
		public function setIdVehiculoCliente($idVehiculoCliente){
			$this->idVehiculoCliente = $idVehiculoCliente;
		}
		public function getFechaRegistro(){
			return $this->fechaRegistro;
		}
		public function setFechaRegistro($fechaRegistro){
			$this->fechaRegistro = $fechaRegistro;
		}
		public function getIdVehiculo(){
			return $this->idVehiculo;
		}
		public function setIdVehiculo($idVehiculo){
			$this->idVehiculo = $idVehiculo;
		}
		public function getIdClientePertenece(){
			return $this->idClientePertenece;
		}
		public function setIdClientePertenece($idClientePertenece){
			$this->idClientePertenece = $idClientePertenece;
		}
		public function __toString(){
			return "IdVehiculoCliente: " . $this->idVehiculoCliente .
				" FechaRegistro: " . $this->fechaRegistro .
				" IdVehiculo: " . $this->idVehiculo .
				" IdClientePertenece: " . $this->idClientePertenece;
		}
	}
?>
