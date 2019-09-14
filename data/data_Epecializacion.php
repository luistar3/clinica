<?php  

	class data_Especializacion
	
	{
		private	$id_especializacion;
		private $Nombre;
		private $Estado;

		/**
		 * Get the value of id_especializacion
		 */ 
		public function getId_especializacion()
		{
				return $this->id_especializacion;
		}

		/**
		 * Set the value of id_especializacion
		 *
		 * @return  self
		 */ 
		public function setId_especializacion($id_especializacion)
		{
				$this->id_especializacion = $id_especializacion;

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
	}

?>