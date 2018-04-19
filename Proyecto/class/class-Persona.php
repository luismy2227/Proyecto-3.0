<?php

	class class-Persona{

		private $idPesrsona;
		private $identidad;
		private $primerNombre;
		private $segundoNombre;
		private $primerApellido;
		private $segundoApellido;
		private $idDireccion;
		private $idGenero;

		public function __construct($idPesrsona,
					$identidad,
					$primerNombre,
					$segundoNombre,
					$primerApellido,
					$segundoApellido,
					$idDireccion,
					$idGenero){
			$this->idPesrsona = $idPesrsona;
			$this->identidad = $identidad;
			$this->primerNombre = $primerNombre;
			$this->segundoNombre = $segundoNombre;
			$this->primerApellido = $primerApellido;
			$this->segundoApellido = $segundoApellido;
			$this->idDireccion = $idDireccion;
			$this->idGenero = $idGenero;
		}
		public function getIdPesrsona(){
			return $this->idPesrsona;
		}
		public function setIdPesrsona($idPesrsona){
			$this->idPesrsona = $idPesrsona;
		}
		public function getIdentidad(){
			return $this->identidad;
		}
		public function setIdentidad($identidad){
			$this->identidad = $identidad;
		}
		public function getPrimerNombre(){
			return $this->primerNombre;
		}
		public function setPrimerNombre($primerNombre){
			$this->primerNombre = $primerNombre;
		}
		public function getSegundoNombre(){
			return $this->segundoNombre;
		}
		public function setSegundoNombre($segundoNombre){
			$this->segundoNombre = $segundoNombre;
		}
		public function getPrimerApellido(){
			return $this->primerApellido;
		}
		public function setPrimerApellido($primerApellido){
			$this->primerApellido = $primerApellido;
		}
		public function getSegundoApellido(){
			return $this->segundoApellido;
		}
		public function setSegundoApellido($segundoApellido){
			$this->segundoApellido = $segundoApellido;
		}
		public function getIdDireccion(){
			return $this->idDireccion;
		}
		public function setIdDireccion($idDireccion){
			$this->idDireccion = $idDireccion;
		}
		public function getIdGenero(){
			return $this->idGenero;
		}
		public function setIdGenero($idGenero){
			$this->idGenero = $idGenero;
		}
		public function __toString(){
			return "IdPesrsona: " . $this->idPesrsona .
				" Identidad: " . $this->identidad .
				" PrimerNombre: " . $this->primerNombre .
				" SegundoNombre: " . $this->segundoNombre .
				" PrimerApellido: " . $this->primerApellido .
				" SegundoApellido: " . $this->segundoApellido .
				" IdDireccion: " . $this->idDireccion .
				" IdGenero: " . $this->idGenero;
		}
	}
?>
