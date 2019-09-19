<?php  

	class data_TipoPersona
	
	{
		private $id_tipoPersona;
		private $Nombre;

		/**
		 * Get the value of id_tipoPersona
		 */ 
		public function getId_tipoPersona()
		{
				return $this->id_tipoPersona;
		}

		/**
		 * Set the value of id_tipoPersona
		 *
		 * @return  self
		 */ 
		public function setId_tipoPersona($id_tipoPersona)
		{
				$this->id_tipoPersona = $id_tipoPersona;

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
	}

?>