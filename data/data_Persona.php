<?php  

	class data_Persona
	
	{
		private $id_persona ;	
		private $Dni ;
		private $Nombre ;
		private $ApePat ;
		private $ApeMat ;
		private $Sexo ;
		private $Area ;
		private $FechaInsercion ;
		private $FechaModificacion ;
		private $FechaEliminacion ;
		private $Estado ;
		private $id_tipoPersona;
		private $id_especializacion ;

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
		 * Get the value of Dni
		 */ 
		public function getDni()
		{
				return $this->Dni;
		}

		/**
		 * Set the value of Dni
		 *
		 * @return  self
		 */ 
		public function setDni($Dni)
		{
				$this->Dni = $Dni;

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
		 * Get the value of ApePat
		 */ 
		public function getApePat()
		{
				return $this->ApePat;
		}

		/**
		 * Set the value of ApePat
		 *
		 * @return  self
		 */ 
		public function setApePat($ApePat)
		{
				$this->ApePat = $ApePat;

				return $this;
		}

		/**
		 * Get the value of ApeMat
		 */ 
		public function getApeMat()
		{
				return $this->ApeMat;
		}

		/**
		 * Set the value of ApeMat
		 *
		 * @return  self
		 */ 
		public function setApeMat($ApeMat)
		{
				$this->ApeMat = $ApeMat;

				return $this;
		}

		/**
		 * Get the value of Sexo
		 */ 
		public function getSexo()
		{
				return $this->Sexo;
		}

		/**
		 * Set the value of Sexo
		 *
		 * @return  self
		 */ 
		public function setSexo($Sexo)
		{
				$this->Sexo = $Sexo;

				return $this;
		}

		

		/**
		 * Get the value of FechaInsercion
		 */ 
		public function getFechaInsercion()
		{
				return $this->FechaInsercion;
		}

		/**
		 * Set the value of FechaInsercion
		 *
		 * @return  self
		 */ 
		public function setFechaInsercion($FechaInsercion)
		{
				$this->FechaInsercion = $FechaInsercion;

				return $this;
		}

		/**
		 * Get the value of FechaModificacion
		 */ 
		public function getFechaModificacion()
		{
				return $this->FechaModificacion;
		}

		/**
		 * Set the value of FechaModificacion
		 *
		 * @return  self
		 */ 
		public function setFechaModificacion($FechaModificacion)
		{
				$this->FechaModificacion = $FechaModificacion;

				return $this;
		}

		/**
		 * Get the value of FechaEliminacion
		 */ 
		public function getFechaEliminacion()
		{
				return $this->FechaEliminacion;
		}

		/**
		 * Set the value of FechaEliminacion
		 *
		 * @return  self
		 */ 
		public function setFechaEliminacion($FechaEliminacion)
		{
				$this->FechaEliminacion = $FechaEliminacion;

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
		 * Get the value of Area
		 */ 
		public function getArea()
		{
				return $this->Area;
		}

		/**
		 * Set the value of Area
		 *
		 * @return  self
		 */ 
		public function setArea($Area)
		{
				$this->Area = $Area;

				return $this;
		}
	}

?>