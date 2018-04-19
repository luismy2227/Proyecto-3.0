<?php

	class class-Descuento{

		private $idDescuento;
		private $descripcion;
		private $valor;
		private $estado;

		public function __construct($idDescuento,
					$descripcion,
					$valor,
					$estado){
			$this->idDescuento = $idDescuento;
			$this->descripcion = $descripcion;
			$this->valor = $valor;
			$this->estado = $estado;
		}
		public function getIdDescuento(){
			return $this->idDescuento;
		}
		public function setIdDescuento($idDescuento){
			$this->idDescuento = $idDescuento;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getValor(){
			return $this->valor;
		}
		public function setValor($valor){
			$this->valor = $valor;
		}
		public function getEstado(){
			return $this->estado;
		}
		public function setEstado($estado){
			$this->estado = $estado;
		}
		public function __toString(){
			return "IdDescuento: " . $this->idDescuento .
				" Descripcion: " . $this->descripcion .
				" Valor: " . $this->valor .
				" Estado: " . $this->estado;
		}
	}
?>
