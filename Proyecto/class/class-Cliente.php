<?php

	class class-Cliente{

		private $idCliente;
		private $rtn;
		private $idPersona;
		private $idUsuario;

		public function __construct($idCliente,
					$rtn,
					$idPersona,
					$idUsuario){
			$this->idCliente = $idCliente;
			$this->rtn = $rtn;
			$this->idPersona = $idPersona;
			$this->idUsuario = $idUsuario;
		}
		public function getIdCliente(){
			return $this->idCliente;
		}
		public function setIdCliente($idCliente){
			$this->idCliente = $idCliente;
		}
		public function getRtn(){
			return $this->rtn;
		}
		public function setRtn($rtn){
			$this->rtn = $rtn;
		}
		public function getIdPersona(){
			return $this->idPersona;
		}
		public function setIdPersona($idPersona){
			$this->idPersona = $idPersona;
		}
		public function getIdUsuario(){
			return $this->idUsuario;
		}
		public function setIdUsuario($idUsuario){
			$this->idUsuario = $idUsuario;
		}
		public function __toString(){
			return "IdCliente: " . $this->idCliente .
				" Rtn: " . $this->rtn .
				" IdPersona: " . $this->idPersona .
				" IdUsuario: " . $this->idUsuario;
		}
	}
?>
