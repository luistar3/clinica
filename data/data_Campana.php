<?php  

	class data_Campana
	
	{
		
	  private $IdCampana;
      private $UrlImg;
      private $InicioFecha;
      private $FinFecha;
      private $IdUsuario;
      private $FechaInsercio;
      private $FechaModificacion;
      private $Estado;
      private $id_area;
	  private $Descripcion;
	  private $NombreCampana;


	  /**
	   * Get the value of IdCampana
	   */ 
	  public function getIdCampana()
	  {
	  	  return $this->IdCampana;
	  }

	  /**
	   * Set the value of IdCampana
	   *
	   * @return  self
	   */ 
	  public function setIdCampana($IdCampana)
	  {
	  	  $this->IdCampana = $IdCampana;

	  	  return $this;
	  }

      /**
       * Get the value of UrlImg
       */ 
      public function getUrlImg()
      {
            return $this->UrlImg;
      }

      /**
       * Set the value of UrlImg
       *
       * @return  self
       */ 
      public function setUrlImg($UrlImg)
      {
            $this->UrlImg = $UrlImg;

            return $this;
      }

      /**
       * Get the value of InicioFecha
       */ 
      public function getInicioFecha()
      {
            return $this->InicioFecha;
      }

      /**
       * Set the value of InicioFecha
       *
       * @return  self
       */ 
      public function setInicioFecha($InicioFecha)
      {
            $this->InicioFecha = $InicioFecha;

            return $this;
      }

      /**
       * Get the value of FinFecha
       */ 
      public function getFinFecha()
      {
            return $this->FinFecha;
      }

      /**
       * Set the value of FinFecha
       *
       * @return  self
       */ 
      public function setFinFecha($FinFecha)
      {
            $this->FinFecha = $FinFecha;

            return $this;
      }

      /**
       * Get the value of IdUsuario
       */ 
      public function getIdUsuario()
      {
            return $this->IdUsuario;
      }

      /**
       * Set the value of IdUsuario
       *
       * @return  self
       */ 
      public function setIdUsuario($IdUsuario)
      {
            $this->IdUsuario = $IdUsuario;

            return $this;
      }

      /**
       * Get the value of FechaInsercio
       */ 
      public function getFechaInsercio()
      {
            return $this->FechaInsercio;
      }

      /**
       * Set the value of FechaInsercio
       *
       * @return  self
       */ 
      public function setFechaInsercio($FechaInsercio)
      {
            $this->FechaInsercio = $FechaInsercio;

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
       * Get the value of Descripcion
       */ 
      public function getDescripcion()
      {
            return $this->Descripcion;
      }

      /**
       * Set the value of Descripcion
       *
       * @return  self
       */ 
      public function setDescripcion($Descripcion)
      {
            $this->Descripcion = $Descripcion;

            return $this;
      }

	  /**
	   * Get the value of NombreCampana
	   */ 
	  public function getNombreCampana()
	  {
	  	  return $this->NombreCampana;
	  }

	  /**
	   * Set the value of NombreCampana
	   *
	   * @return  self
	   */ 
	  public function setNombreCampana($NombreCampana)
	  {
	  	  $this->NombreCampana = $NombreCampana;

	  	  return $this;
	  }
	}

?>