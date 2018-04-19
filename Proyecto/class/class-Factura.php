<?php

	class class-Factura{

		private $idFactura;
		private $fecha;
		private $observaciones;
		private $idImpuesto;
		private $idCliente;
		private $idEMpleado;

		public function __construct($idFactura,
					$fecha,
					$observaciones,
					$idImpuesto,
					$idCliente,
					$idEMpleado){
			$this->idFactura = $idFactura;
			$this->fecha = $fecha;
			$this->observaciones = $observaciones;
			$this->idImpuesto = $idImpuesto;
			$this->idCliente = $idCliente;
			$this->idEMpleado = $idEMpleado;
		}
		public function getIdFactura(){
			return $this->idFactura;
		}
		public function setIdFactura($idFactura){
			$this->idFactura = $idFactura;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function setFecha($fecha){
			$this->fecha = $fecha;
		}
		public function getObservaciones(){
			return $this->observaciones;
		}
		public function setObservaciones($observaciones){
			$this->observaciones = $observaciones;
		}
		public function getIdImpuesto(){
			return $this->idImpuesto;
		}
		public function setIdImpuesto($idImpuesto){
			$this->idImpuesto = $idImpuesto;
		}
		public function getIdCliente(){
			return $this->idCliente;
		}
		public function setIdCliente($idCliente){
			$this->idCliente = $idCliente;
		}
		public function getIdEMpleado(){
			return $this->idEMpleado;
		}
		public function setIdEMpleado($idEMpleado){
			$this->idEMpleado = $idEMpleado;
		}
		public function __toString(){
			return "IdFactura: " . $this->idFactura .
				" Fecha: " . $this->fecha .
				" Observaciones: " . $this->observaciones .
				" IdImpuesto: " . $this->idImpuesto .
				" IdCliente: " . $this->idCliente .
				" IdEMpleado: " . $this->idEMpleado;
		}
	}
?>
