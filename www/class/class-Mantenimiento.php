<?php

	class class-Mantenimiento{

		private $idMantenimiento;
		private $descripcion;
		private $fechaIngreso;
		private $fechaSalida;
		private $estado;
		private $idSolicitudMantenimiento;
		private $idEmpleado;
		private $idTipoMantenimiento;
		private $idTaller;

		public function __construct($idMantenimiento,
					$descripcion,
					$fechaIngreso,
					$fechaSalida,
					$estado,
					$idSolicitudMantenimiento,
					$idEmpleado,
					$idTipoMantenimiento,
					$idTaller){
			$this->idMantenimiento = $idMantenimiento;
			$this->descripcion = $descripcion;
			$this->fechaIngreso = $fechaIngreso;
			$this->fechaSalida = $fechaSalida;
			$this->estado = $estado;
			$this->idSolicitudMantenimiento = $idSolicitudMantenimiento;
			$this->idEmpleado = $idEmpleado;
			$this->idTipoMantenimiento = $idTipoMantenimiento;
			$this->idTaller = $idTaller;
		}
		public function getIdMantenimiento(){
			return $this->idMantenimiento;
		}
		public function setIdMantenimiento($idMantenimiento){
			$this->idMantenimiento = $idMantenimiento;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getFechaIngreso(){
			return $this->fechaIngreso;
		}
		public function setFechaIngreso($fechaIngreso){
			$this->fechaIngreso = $fechaIngreso;
		}
		public function getFechaSalida(){
			return $this->fechaSalida;
		}
		public function setFechaSalida($fechaSalida){
			$this->fechaSalida = $fechaSalida;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setEstado($estado){
			$this->estado = $estado;
		}
		public function getIdSolicitudMantenimiento(){
			return $this->idSolicitudMantenimiento;
		}
		public function setIdSolicitudMantenimiento($idSolicitudMantenimiento){
			$this->idSolicitudMantenimiento = $idSolicitudMantenimiento;
		}
		public function getIdEmpleado(){
			return $this->idEmpleado;
		}
		public function setIdEmpleado($idEmpleado){
			$this->idEmpleado = $idEmpleado;
		}
		public function getIdTipoMantenimiento(){
			return $this->idTipoMantenimiento;
		}
		public function setIdTipoMantenimiento($idTipoMantenimiento){
			$this->idTipoMantenimiento = $idTipoMantenimiento;
		}
		public function getIdTaller(){
			return $this->idTaller;
		}
		public function setIdTaller($idTaller){
			$this->idTaller = $idTaller;
		}
		public function __toString(){
			return "IdMantenimiento: " . $this->idMantenimiento . 
				" Descripcion: " . $this->descripcion . 
				" FechaIngreso: " . $this->fechaIngreso . 
				" FechaSalida: " . $this->fechaSalida . 
				" Estado: " . $this->estado . 
				" IdSolicitudMantenimiento: " . $this->idSolicitudMantenimiento . 
				" IdEmpleado: " . $this->idEmpleado . 
				" IdTipoMantenimiento: " . $this->idTipoMantenimiento . 
				" IdTaller: " . $this->idTaller;
		}
	}
?>