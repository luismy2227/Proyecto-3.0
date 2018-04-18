<?php

	class class-Marca{

		private $idMarca;
		private $descripcion;
		private $logoRuta;

		public function __construct($idMarca,
					$descripcion,
					$logoRuta){
			$this->idMarca = $idMarca;
			$this->descripcion = $descripcion;
			$this->logoRuta = $logoRuta;
		}
		public function getIdMarca(){
			return $this->idMarca;
		}
		public function setIdMarca($idMarca){
			$this->idMarca = $idMarca;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function getLogoRuta(){
			return $this->logoRuta;
		}
		public function setLogoRuta($logoRuta){
			$this->logoRuta = $logoRuta;
		}
		public function __toString(){
			return "IdMarca: " . $this->idMarca .
				" Descripcion: " . $this->descripcion .
				" LogoRuta: " . $this->logoRuta;
		}
	}
?>
