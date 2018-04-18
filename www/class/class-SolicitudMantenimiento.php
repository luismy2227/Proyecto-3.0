<?php

	class class-SolicitudMantenimiento{

		private $idSolicitudMantenimiento;
		private $fechaSolicitud;
		private $estado;
		private $observacion;
		private $idEmpleado;
		private $idVehiculoCliente;

		public function __construct($idSolicitudMantenimiento,
					$fechaSolicitud,
					$estado,
					$observacion,
					$idEmpleado,
					$idVehiculoCliente){
			$this->idSolicitudMantenimiento = $idSolicitudMantenimiento;
			$this->fechaSolicitud = $fechaSolicitud;
			$this->estado = $estado;
			$this->observacion = $observacion;
			$this->idEmpleado = $idEmpleado;
			$this->idVehiculoCliente = $idVehiculoCliente;
		}
		public function getIdSolicitudMantenimiento(){
			return $this->idSolicitudMantenimiento;
		}
		public function setIdSolicitudMantenimiento($idSolicitudMantenimiento){
			$this->idSolicitudMantenimiento = $idSolicitudMantenimiento;
		}
		public function getFechaSolicitud(){
			return $this->fechaSolicitud;
		}
		public function setFechaSolicitud($fechaSolicitud){
			$this->fechaSolicitud = $fechaSolicitud;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setEstado($estado){
			$this->estado = $estado;
		}
		public function getObservacion(){
			return $this->observacion;
		}
		public function setObservacion($observacion){
			$this->observacion = $observacion;
		}
		public function getIdEmpleado(){
			return $this->idEmpleado;
		}
		public function setIdEmpleado($idEmpleado){
			$this->idEmpleado = $idEmpleado;
		}
		public function getIdVehiculoCliente(){
			return $this->idVehiculoCliente;
		}
		public function setIdVehiculoCliente($idVehiculoCliente){
			$this->idVehiculoCliente = $idVehiculoCliente;
		}
		public function __toString(){
			return "IdSolicitudMantenimiento: " . $this->idSolicitudMantenimiento . 
				" FechaSolicitud: " . $this->fechaSolicitud . 
				" Estado: " . $this->estado . 
				" Observacion: " . $this->observacion . 
				" IdEmpleado: " . $this->idEmpleado . 
				" IdVehiculoCliente: " . $this->idVehiculoCliente;
		}
	}
?>