<?php

	class class-Impuesto{

		private $idImpuesto;
		private $porcentaje;

		public function __construct($idImpuesto,
					$porcentaje){
			$this->idImpuesto = $idImpuesto;
			$this->porcentaje = $porcentaje;
		}
		public function getIdImpuesto(){
			return $this->idImpuesto;
		}
		public function setIdImpuesto($idImpuesto){
			$this->idImpuesto = $idImpuesto;
		}
		public function getPorcentaje(){
			return $this->porcentaje;
		}
		public function setPorcentaje($porcentaje){
			$this->porcentaje = $porcentaje;
		}
		public function __toString(){
			return "IdImpuesto: " . $this->idImpuesto .
				" Porcentaje: " . $this->porcentaje;
		}
	}
?>
