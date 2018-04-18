<?php

	class class-FacturaPorMantenimiento{

		private $idMantenimiento;
		private $idFactura;

		public function __construct($idMantenimiento,
					$idFactura){
			$this->idMantenimiento = $idMantenimiento;
			$this->idFactura = $idFactura;
		}
		public function getIdMantenimiento(){
			return $this->idMantenimiento;
		}
		public function setIdMantenimiento($idMantenimiento){
			$this->idMantenimiento = $idMantenimiento;
		}
		public function getIdFactura(){
			return $this->idFactura;
		}
		public function setIdFactura($idFactura){
			$this->idFactura = $idFactura;
		}
		public function __toString(){
			return "IdMantenimiento: " . $this->idMantenimiento .
				" IdFactura: " . $this->idFactura;
		}
	}
?>
