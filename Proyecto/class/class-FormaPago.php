<?php

	class class-FormaPago{

		private $idFormaPago;
		private $descripcion;

		public function __construct($idFormaPago,
					$descripcion){
			$this->idFormaPago = $idFormaPago;
			$this->descripcion = $descripcion;
		}
		public function getIdFormaPago(){
			return $this->idFormaPago;
		}
		public function setIdFormaPago($idFormaPago){
			$this->idFormaPago = $idFormaPago;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function __toString(){
			return "IdFormaPago: " . $this->idFormaPago .
				" Descripcion: " . $this->descripcion;
		}
	}
?>
