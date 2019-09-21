<?php  
	
	class data_Usuario
	{
		private $Rol_idRol;
		private $Usuario;
		private $contrasena ;
		private	$IdRol;
		private $Nombre;
		private $ApePat;
		Private $ApeMat;
		private $Dni;
		private $Avatar;
		private $Estado;
		private $CambioContrasena;
		private $Ip;
		private $Mac;
		private $Navegador;


		

		/**
		 * Get the value of Rol_idRol
		 */ 
		public function getRol_idRol()
		{
				return $this->Rol_idRol;
		}

		/**
		 * Set the value of Rol_idRol
		 *
		 * @return  self
		 */ 
		public function setRol_idRol($Rol_idRol)
		{
				$this->Rol_idRol = $Rol_idRol;

				return $this;
		}

		/**
		 * Get the value of Usuario
		 */ 
		public function getUsuario()
		{
				return $this->Usuario;
		}

		/**
		 * Set the value of Usuario
		 *
		 * @return  self
		 */ 
		public function setUsuario($Usuario)
		{
				$this->Usuario = $Usuario;

				return $this;
		}

		/**
		 * Get the value of contrasena
		 */ 
		public function getContrasena()
		{
				return $this->contrasena;
		}

		/**
		 * Set the value of contrasena
		 *
		 * @return  self
		 */ 
		public function setContrasena($contrasena)
		{
				$this->contrasena = $contrasena;

				return $this;
		}

		/**
		 * Get the value of IdRol
		 */ 
		public function getIdRol()
		{
				return $this->IdRol;
		}

		/**
		 * Set the value of IdRol
		 *
		 * @return  self
		 */ 
		public function setIdRol($IdRol)
		{
				$this->IdRol = $IdRol;

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
		 * Get the value of Avatar
		 */ 
		public function getAvatar()
		{
				return $this->Avatar;
		}

		/**
		 * Set the value of Avatar
		 *
		 * @return  self
		 */ 
		public function setAvatar($Avatar)
		{
				$this->Avatar = $Avatar;

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
		 * Get the value of CambioContrasena
		 */ 
		public function getCambioContrasena()
		{
				return $this->CambioContrasena;
		}

		/**
		 * Set the value of CambioContrasena
		 *
		 * @return  self
		 */ 
		public function setCambioContrasena($CambioContrasena)
		{
				$this->CambioContrasena = $CambioContrasena;

				return $this;
		}

		/**
		 * Get the value of Ip
		 */ 
		public function getIp()
		{
				return $this->Ip;
		}

		/**
		 * Set the value of Ip
		 *
		 * @return  self
		 */ 
		public function setIp($Ip)
		{
				$this->Ip = $Ip;

				return $this;
		}

		/**
		 * Get the value of Mac
		 */ 
		public function getMac()
		{
				return $this->Mac;
		}

		/**
		 * Set the value of Mac
		 *
		 * @return  self
		 */ 
		public function setMac($Mac)
		{
				$this->Mac = $Mac;

				return $this;
		}

		/**
		 * Get the value of Navegador
		 */ 
		public function getNavegador()
		{
				return $this->Navegador;
		}

		/**
		 * Set the value of Navegador
		 *
		 * @return  self
		 */ 
		public function setNavegador($Navegador)
		{
				$this->Navegador = $Navegador;

				return $this;
		}
	}

?>