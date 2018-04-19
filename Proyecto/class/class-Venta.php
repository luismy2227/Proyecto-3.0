<?php

	class class-Venta{

		private $idFactura;
		private $idVehiculoEmpresa;

		public function __construct($idFactura,
					$idVehiculoEmpresa){
			$this->idFactura = $idFactura;
			$this->idVehiculoEmpresa = $idVehiculoEmpresa;
		}
		public function getIdFactura(){
			return $this->idFactura;
		}
		public function setIdFactura($idFactura){
			$this->idFactura = $idFactura;
		}
		public function getIdVehiculoEmpresa(){
			return $this->idVehiculoEmpresa;
		}
		public function setIdVehiculoEmpresa($idVehiculoEmpresa){
			$this->idVehiculoEmpresa = $idVehiculoEmpresa;
		}
		public function __toString(){
			return "IdFactura: " . $this->idFactura .
				" IdVehiculoEmpresa: " . $this->idVehiculoEmpresa;
		}
	}
?>
