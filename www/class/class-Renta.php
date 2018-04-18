<?php

	class class-Renta{

		private $idFactura;
		private $idVehiculoEmpresa;
		private $anticipo;
		private $mora;
		private $totalHoras;
		private $idItinerario;

		public function __construct($idFactura,
					$idVehiculoEmpresa,
					$anticipo,
					$mora,
					$totalHoras,
					$idItinerario){
			$this->idFactura = $idFactura;
			$this->idVehiculoEmpresa = $idVehiculoEmpresa;
			$this->anticipo = $anticipo;
			$this->mora = $mora;
			$this->totalHoras = $totalHoras;
			$this->idItinerario = $idItinerario;
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
		public function getAnticipo(){
			return $this->anticipo;
		}
		public function setAnticipo($anticipo){
			$this->anticipo = $anticipo;
		}
		public function getMora(){
			return $this->mora;
		}
		public function setMora($mora){
			$this->mora = $mora;
		}
		public function getTotalHoras(){
			return $this->totalHoras;
		}
		public function setTotalHoras($totalHoras){
			$this->totalHoras = $totalHoras;
		}
		public function getIdItinerario(){
			return $this->idItinerario;
		}
		public function setIdItinerario($idItinerario){
			$this->idItinerario = $idItinerario;
		}
		public function __toString(){
			return "IdFactura: " . $this->idFactura .
				" IdVehiculoEmpresa: " . $this->idVehiculoEmpresa .
				" Anticipo: " . $this->anticipo .
				" Mora: " . $this->mora .
				" TotalHoras: " . $this->totalHoras .
				" IdItinerario: " . $this->idItinerario;
		}
	}
?>
