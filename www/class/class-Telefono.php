<?php

	class class-Telefono{

		private $idTelefono;
		private $telefono;
		private $idPersona;

		public function __construct($idTelefono,
					$telefono,
					$idPersona){
			$this->idTelefono = $idTelefono;
			$this->telefono = $telefono;
			$this->idPersona = $idPersona;
		}
		public function getIdTelefono(){
			return $this->idTelefono;
		}
		public function setIdTelefono($idTelefono){
			$this->idTelefono = $idTelefono;
		}
		public function getTelefono(){
			return $this->telefono;
		}
		public function setTelefono($telefono){
			$this->telefono = $telefono;
		}
		public function getIdPersona(){
			return $this->idPersona;
		}
		public function setIdPersona($idPersona){
			$this->idPersona = $idPersona;
		}
		public function __toString(){
			return "IdTelefono: " . $this->idTelefono .
				" Telefono: " . $this->telefono .
				" IdPersona: " . $this->idPersona;
		}
	}
?>
