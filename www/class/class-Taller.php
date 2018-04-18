<?php

	class class-Taller{

		private $idTaller;
		private $estado;
		private $idSucursal;

		public function __construct($idTaller,
					$estado,
					$idSucursal){
			$this->idTaller = $idTaller;
			$this->estado = $estado;
			$this->idSucursal = $idSucursal;
		}
		public function getIdTaller(){
			return $this->idTaller;
		}
		public function setIdTaller($idTaller){
			$this->idTaller = $idTaller;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setEstado($estado){
			$this->estado = $estado;
		}
		public function getIdSucursal(){
			return $this->idSucursal;
		}
		public function setIdSucursal($idSucursal){
			$this->idSucursal = $idSucursal;
		}
		public function __toString(){
			return "IdTaller: " . $this->idTaller . 
				" Estado: " . $this->estado . 
				" IdSucursal: " . $this->idSucursal;
		}
	}
?>