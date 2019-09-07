<?php  

	class data_Especialidad
	
	{
		private $id_especialidad;
		private $Nombre;
		private $Piso;
		private $id_persona;
		

		/**
		 * Get the value of id_especialidad
		 */ 
		public function getId_especialidad()
		{
				return $this->id_especialidad;
		}

		/**
		 * Set the value of id_especialidad
		 *
		 * @return  self
		 */ 
		public function setId_especialidad($id_especialidad)
		{
				$this->id_especialidad = $id_especialidad;

				return $this;
		}

		/**
		 * Get the value of Nombre
		 */ 
		public function getNombre()
		{
				return $this->Nombre;
		}

		/**
		 * Set the value of Nombre
		 *
		 * @return  self
		 */ 
		public function setNombre($Nombre)
		{
				$this->Nombre = $Nombre;

				return $this;
		}

		/**
		 * Get the value of Piso
		 */ 
		public function getPiso()
		{
				return $this->Piso;
		}

		/**
		 * Set the value of Piso
		 *
		 * @return  self
		 */ 
		public function setPiso($Piso)
		{
				$this->Piso = $Piso;

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
	}

?>