<?php

	class class-FormaPagoPorFactura{

		private $idFactura;
		private $idFormaPago;
		private $monto;

		public function __construct($idFactura,
					$idFormaPago,
					$monto){
			$this->idFactura = $idFactura;
			$this->idFormaPago = $idFormaPago;
			$this->monto = $monto;
		}
		public function getIdFactura(){
			return $this->idFactura;
		}
		public function setIdFactura($idFactura){
			$this->idFactura = $idFactura;
		}
		public function getIdFormaPago(){
			return $this->idFormaPago;
		}
		public function setIdFormaPago($idFormaPago){
			$this->idFormaPago = $idFormaPago;
		}
		public function getMonto(){
			return $this->monto;
		}
		public function setMonto($monto){
			$this->monto = $monto;
		}
		public function __toString(){
			return "IdFactura: " . $this->idFactura .
				" IdFormaPago: " . $this->idFormaPago .
				" Monto: " . $this->monto;
		}
	}
?>
