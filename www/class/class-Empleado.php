<?php

	class class-Empleado{

		private $idEmpleado;
		private $fechaContratacion;
		private $idPersona;
		private $idCargo;
		private $idUsuario;
		private $idEmpleadoSuperior;
		private $fechaPromocion;

		public function __construct($idEmpleado,
					$fechaContratacion,
					$idPersona,
					$idCargo,
					$idUsuario,
					$idEmpleadoSuperior,
					$fechaPromocion){
			$this->idEmpleado = $idEmpleado;
			$this->fechaContratacion = $fechaContratacion;
			$this->idPersona = $idPersona;
			$this->idCargo = $idCargo;
			$this->idUsuario = $idUsuario;
			$this->idEmpleadoSuperior = $idEmpleadoSuperior;
			$this->fechaPromocion = $fechaPromocion;
		}
		public function getIdEmpleado(){
			return $this->idEmpleado;
		}
		public function setIdEmpleado($idEmpleado){
			$this->idEmpleado = $idEmpleado;
		}
		public function getFechaContratacion(){
			return $this->fechaContratacion;
		}
		public function setFechaContratacion($fechaContratacion){
			$this->fechaContratacion = $fechaContratacion;
		}
		public function getIdPersona(){
			return $this->idPersona;
		}
		public function setIdPersona($idPersona){
			$this->idPersona = $idPersona;
		}
		public function getIdCargo(){
			return $this->idCargo;
		}
		public function setIdCargo($idCargo){
			$this->idCargo = $idCargo;
		}
		public function getIdUsuario(){
			return $this->idUsuario;
		}
		public function setIdUsuario($idUsuario){
			$this->idUsuario = $idUsuario;
		}
		public function getIdEmpleadoSuperior(){
			return $this->idEmpleadoSuperior;
		}
		public function setIdEmpleadoSuperior($idEmpleadoSuperior){
			$this->idEmpleadoSuperior = $idEmpleadoSuperior;
		}
		public function getFechaPromocion(){
			return $this->fechaPromocion;
		}
		public function setFechaPromocion($fechaPromocion){
			$this->fechaPromocion = $fechaPromocion;
		}
		public function __toString(){
			return "IdEmpleado: " . $this->idEmpleado .
				" FechaContratacion: " . $this->fechaContratacion .
				" IdPersona: " . $this->idPersona .
				" IdCargo: " . $this->idCargo .
				" IdUsuario: " . $this->idUsuario .
				" IdEmpleadoSuperior: " . $this->idEmpleadoSuperior .
				" FechaPromocion: " . $this->fechaPromocion;
		}
	}
?>
