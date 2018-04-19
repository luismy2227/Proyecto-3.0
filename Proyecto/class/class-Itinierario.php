<?php

	class class-Itinerario{

		private $idItinerario;
		private $fechaReserva;
		private $fechaEntrega;
		private $horaEntrega;
		private $fechaDevolucion;
		private $horaDevolucion;

		public function __construct($idItinerario,
					$fechaReserva,
					$fechaEntrega,
					$horaEntrega,
					$fechaDevolucion,
					$horaDevolucion){
			$this->idItinerario = $idItinerario;
			$this->fechaReserva = $fechaReserva;
			$this->fechaEntrega = $fechaEntrega;
			$this->horaEntrega = $horaEntrega;
			$this->fechaDevolucion = $fechaDevolucion;
			$this->horaDevolucion = $horaDevolucion;
		}
		public function getIdItinerario(){
			return $this->idItinerario;
		}
		public function setIdItinerario($idItinerario){
			$this->idItinerario = $idItinerario;
		}
		public function getFechaReserva(){
			return $this->fechaReserva;
		}
		public function setFechaReserva($fechaReserva){
			$this->fechaReserva = $fechaReserva;
		}
		public function getFechaEntrega(){
			return $this->fechaEntrega;
		}
		public function setFechaEntrega($fechaEntrega){
			$this->fechaEntrega = $fechaEntrega;
		}
		public function getHoraEntrega(){
			return $this->horaEntrega;
		}
		public function setHoraEntrega($horaEntrega){
			$this->horaEntrega = $horaEntrega;
		}
		public function getFechaDevolucion(){
			return $this->fechaDevolucion;
		}
		public function setFechaDevolucion($fechaDevolucion){
			$this->fechaDevolucion = $fechaDevolucion;
		}
		public function getHoraDevolucion(){
			return $this->horaDevolucion;
		}
		public function setHoraDevolucion($horaDevolucion){
			$this->horaDevolucion = $horaDevolucion;
		}
		public function __toString(){
			return "IdItinerario: " . $this->idItinerario .
				" FechaReserva: " . $this->fechaReserva .
				" FechaEntrega: " . $this->fechaEntrega .
				" HoraEntrega: " . $this->horaEntrega .
				" FechaDevolucion: " . $this->fechaDevolucion .
				" HoraDevolucion: " . $this->horaDevolucion;
		}
	}
?>
