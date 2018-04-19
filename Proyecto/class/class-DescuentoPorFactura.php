<?php

	class class-DescuentoPorFactura{

		private $idFactura;
		private $idDescuento;

		public function __construct($idFactura,
					$idDescuento){
			$this->idFactura = $idFactura;
			$this->idDescuento = $idDescuento;
		}
		public function getIdFactura(){
			return $this->idFactura;
		}
		public function setIdFactura($idFactura){
			$this->idFactura = $idFactura;
		}
		public function getIdDescuento(){
			return $this->idDescuento;
		}
		public function setIdDescuento($idDescuento){
			$this->idDescuento = $idDescuento;
		}
		public function __toString(){
			return "IdFactura: " . $this->idFactura .
				" IdDescuento: " . $this->idDescuento;
		}
	}
?>
