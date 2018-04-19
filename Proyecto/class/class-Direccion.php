<?php

	class class-Direccion{

		private $idDireccion;
		private $departamento;
		private $municipio;
		private $colonia;
		private $sector;
		private $numeroCasa;

		public function __construct($idDireccion,
					$departamento,
					$municipio,
					$colonia,
					$sector,
					$numeroCasa){
			$this->idDireccion = $idDireccion;
			$this->departamento = $departamento;
			$this->municipio = $municipio;
			$this->colonia = $colonia;
			$this->sector = $sector;
			$this->numeroCasa = $numeroCasa;
		}
		public function getIdDireccion(){
			return $this->idDireccion;
		}
		public function setIdDireccion($idDireccion){
			$this->idDireccion = $idDireccion;
		}
		public function getDepartamento(){
			return $this->departamento;
		}
		public function setDepartamento($departamento){
			$this->departamento = $departamento;
		}
		public function getMunicipio(){
			return $this->municipio;
		}
		public function setMunicipio($municipio){
			$this->municipio = $municipio;
		}
		public function getColonia(){
			return $this->colonia;
		}
		public function setColonia($colonia){
			$this->colonia = $colonia;
		}
		public function getSector(){
			return $this->sector;
		}
		public function setSector($sector){
			$this->sector = $sector;
		}
		public function getNumeroCasa(){
			return $this->numeroCasa;
		}
		public function setNumeroCasa($numeroCasa){
			$this->numeroCasa = $numeroCasa;
		}
		public function __toString(){
			return "IdDireccion: " . $this->idDireccion .
				" Departamento: " . $this->departamento .
				" Municipio: " . $this->municipio .
				" Colonia: " . $this->colonia .
				" Sector: " . $this->sector .
				" NumeroCasa: " . $this->numeroCasa;
		}
	}
?>
