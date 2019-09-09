<?php  

	class data_Horario
	
	{
		private $id_horario;
		private $Hora_inicio;
		private $Hora_Fin;
		private $Dia;
		private $Fecha;
		private $id_persona;
		private $id_area;
		private $Fecha_insercion;
		private $Fecha_modificacion;
		private $Estado;
		private $Fecha_eleminacion;
		private $Espacio;

		



		/**
		 * Get the value of id_horario
		 */ 
		public function getId_horario()
		{
				return $this->id_horario;
		}

		/**
		 * Set the value of id_horario
		 *
		 * @return  self
		 */ 
		public function setId_horario($id_horario)
		{
				$this->id_horario = $id_horario;

				return $this;
		}

		/**
		 * Get the value of Hora_inicio
		 */ 
		public function getHora_inicio()
		{
				return $this->Hora_inicio;
		}

		/**
		 * Set the value of Hora_inicio
		 *
		 * @return  self
		 */ 
		public function setHora_inicio($Hora_inicio)
		{
				$this->Hora_inicio = $Hora_inicio;

				return $this;
		}

		/**
		 * Get the value of Hora_Fin
		 */ 
		public function getHora_Fin()
		{
				return $this->Hora_Fin;
		}

		/**
		 * Set the value of Hora_Fin
		 *
		 * @return  self
		 */ 
		public function setHora_Fin($Hora_Fin)
		{
				$this->Hora_Fin = $Hora_Fin;

				return $this;
		}

		/**
		 * Get the value of Dia
		 */ 
		public function getDia()
		{
				return $this->Dia;
		}

		/**
		 * Set the value of Dia
		 *
		 * @return  self
		 */ 
		public function setDia($Dia)
		{
				$this->Dia = $Dia;

				return $this;
		}

		/**
		 * Get the value of Fecha
		 */ 
		public function getFecha()
		{
				return $this->Fecha;
		}

		/**
		 * Set the value of Fecha
		 *
		 * @return  self
		 */ 
		public function setFecha($Fecha)
		{
				$this->Fecha = $Fecha;

				return $this;
		}

		

		/**
		 * Get the value of id_persona
		 */ 
		public function getId_persona()
		{
				return $this->id_persona;
		}

		/**
		 * Set the value of id_persona
		 *
		 * @return  self
		 */ 
		public function setId_persona($id_persona)
		{
				$this->id_persona = $id_persona;

				return $this;
		}

		/**
		 * Get the value of id_area
		 */ 
		public function getId_area()
		{
				return $this->id_area;
		}

		/**
		 * Set the value of id_area
		 *
		 * @return  self
		 */ 
		public function setId_area($id_area)
		{
				$this->id_area = $id_area;

				return $this;
		}

		/**
		 * Get the value of Fecha_insercion
		 */ 
		public function getFecha_insercion()
		{
				return $this->Fecha_insercion;
		}

		/**
		 * Set the value of Fecha_insercion
		 *
		 * @return  self
		 */ 
		public function setFecha_insercion($Fecha_insercion)
		{
				$this->Fecha_insercion = $Fecha_insercion;

				return $this;
		}

		/**
		 * Get the value of Fecha_modificacion
		 */ 
		public function getFecha_modificacion()
		{
				return $this->Fecha_modificacion;
		}

		/**
		 * Set the value of Fecha_modificacion
		 *
		 * @return  self
		 */ 
		public function setFecha_modificacion($Fecha_modificacion)
		{
				$this->Fecha_modificacion = $Fecha_modificacion;

				return $this;
		}

		/**
		 * Get the value of Estado
		 */ 
		public function getEstado()
		{
				return $this->Estado;
		}

		/**
		 * Set the value of Estado
		 *
		 * @return  self
		 */ 
		public function setEstado($Estado)
		{
				$this->Estado = $Estado;

				return $this;
		}

		/**
		 * Get the value of Fecha_eleminacion
		 */ 
		public function getFecha_eleminacion()
		{
				return $this->Fecha_eleminacion;
		}

		/**
		 * Set the value of Fecha_eleminacion
		 *
		 * @return  self
		 */ 
		public function setFecha_eleminacion($Fecha_eleminacion)
		{
				$this->Fecha_eleminacion = $Fecha_eleminacion;

				return $this;
		}

		/**
		 * Get the value of Espacio
		 */ 
		public function getEspacio()
		{
				return $this->Espacio;
		}

		/**
		 * Set the value of Espacio
		 *
		 * @return  self
		 */ 
		public function setEspacio($Espacio)
		{
				$this->Espacio = $Espacio;

				return $this;
		}
	}

?>