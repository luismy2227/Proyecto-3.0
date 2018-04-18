<?php

	class class-CompraRepuestos{

		private $idCompraRepuesto;
		private $idProveedor;
		private $idRepuesto;
		private $cantidad ;
		private $fecha;
		private $total;
		private $idEmpleado;

		public function __construct($idCompraRepuesto,
					$idProveedor,
					$idRepuesto,
					$cantidad ,
					$fecha,
					$total,
					$idEmpleado){
			$this->idCompraRepuesto = $idCompraRepuesto;
			$this->idProveedor = $idProveedor;
			$this->idRepuesto = $idRepuesto;
			$this->cantidad  = $cantidad ;
			$this->fecha = $fecha;
			$this->total = $total;
			$this->idEmpleado = $idEmpleado;
		}
		public function getIdCompraRepuesto(){
			return $this->idCompraRepuesto;
		}
		public function setIdCompraRepuesto($idCompraRepuesto){
			$this->idCompraRepuesto = $idCompraRepuesto;
		}
		public function getIdProveedor(){
			return $this->idProveedor;
		}
		public function setIdProveedor($idProveedor){
			$this->idProveedor = $idProveedor;
		}
		public function getIdRepuesto(){
			return $this->idRepuesto;
		}
		public function setIdRepuesto($idRepuesto){
			$this->idRepuesto = $idRepuesto;
		}
		public function getCantidad (){
			return $this->cantidad ;
		}
		public function setCantidad ($cantidad ){
			$this->cantidad  = $cantidad ;
		}
		public function getFecha(){
			return $this->fecha;
		}
		public function setFecha($fecha){
			$this->fecha = $fecha;
		}
		public function getTotal(){
			return $this->total;
		}
		public function setTotal($total){
			$this->total = $total;
		}
		public function getIdEmpleado(){
			return $this->idEmpleado;
		}
		public function setIdEmpleado($idEmpleado){
			$this->idEmpleado = $idEmpleado;
		}
		public function __toString(){
			return "IdCompraRepuesto: " . $this->idCompraRepuesto . 
				" IdProveedor: " . $this->idProveedor . 
				" IdRepuesto: " . $this->idRepuesto . 
				" Cantidad : " . $this->cantidad  . 
				" Fecha: " . $this->fecha . 
				" Total: " . $this->total . 
				" IdEmpleado: " . $this->idEmpleado;
		}
	}
?>