<?php

	class class-Seguro{

		private $idSeguro;
		private $estado;
		private $descripcion;
		private $montoAsegurado;
		private $fechaInicio;
		private $fechaFin;

		public function __construct($idSeguro,
					$estado,
					$descripcion,
					$montoAsegurado,
					$fechaInicio,
					$fechaFin){
			$this->idSeguro = $idSeguro;
			$this->estado = $estado;
			$this->descripcion = $descripcion;
			$this->montoAsegurado = $montoAsegurado;
			$this->fechaInicio = $fechaInicio;
			$this->fechaFin = $fechaFin;
		}
		public function getIdSeguro(){
			return $this->idSeguro;
		}
		public function setIdSeguro($idSeguro){
			$this->idSeguro = $idSeguro;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setEstado($estado){
			$this->estado = $estado;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getMontoAsegurado(){
			return $this->montoAsegurado;
		}
		public function setMontoAsegurado($montoAsegurado){
			$this->montoAsegurado = $montoAsegurado;
		}
		public function getFechaInicio(){
			return $this->fechaInicio;
		}
		public function setFechaInicio($fechaInicio){
			$this->fechaInicio = $fechaInicio;
		}
		public function getFechaFin(){
			return $this->fechaFin;
		}
		public function setFechaFin($fechaFin){
			$this->fechaFin = $fechaFin;
		}
		public function __toString(){
			return "IdSeguro: " . $this->idSeguro .
				" Estado: " . $this->estado .
				" Descripcion: " . $this->descripcion .
				" MontoAsegurado: " . $this->montoAsegurado .
				" FechaInicio: " . $this->fechaInicio .
				" FechaFin: " . $this->fechaFin;
		}
	}
?>
