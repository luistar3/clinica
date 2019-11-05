<?php 

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/connection.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Persona.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/funciones.php');
//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/navegador.php');

class business_Persona
{

	public function fncBusinessListarPersonaParaBuscar(){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_listarTodasLasPersonas";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			//mssql_bind($proc, '@id_area', $id_area, SQLINT4, false, false, 10);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}


	public function fncBusinesslistarPersonasTipoEnfermera(){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_listarEnfermeras";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			//mssql_bind($proc, '@id_area', $id_area, SQLINT4, false, false, 10);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}


	public function fncBusinesslistarReporteEnfermera($idUsuario,$DateInicioFecha,$DateFinFecha){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Log_listarReporteTurno";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			//mssql_bind($proc, '@id_area', $id_area, SQLINT4, false, false, 10);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						 mssql_bind($proc, '@fechaFin', $DateFinFecha, SQLVARCHAR, false, false, 10); 
						 mssql_bind($proc, '@fechaInicio', $DateInicioFecha, SQLVARCHAR, false, false, 10); 
						 mssql_bind($proc, '@idUsuario', $idUsuario, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}


	public function fncBusinesslistarReporteEnfermeraConsolidado($DateInicioFecha,$DateFinFecha){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_listarReporteTurnoConsolidado";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			//mssql_bind($proc, '@id_area', $id_area, SQLINT4, false, false, 10);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						 mssql_bind($proc, '@finFecha', $DateFinFecha, SQLVARCHAR, false, false, 10); 
						 mssql_bind($proc, '@inicioFecha', $DateInicioFecha, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@idUsuario', $idUsuario, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}



  public function fncBusinessListarPersonaPorArea($id_area){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
				$sql = "usp_Clinica_Persona_ListarPersonaParaHorario";
						//$USRId = $_SESSION['usuario']["ses_USRId"] ;
				// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
				$proc = mssql_init($sql, $connectionstatus); 
				mssql_bind($proc, '@id_area', $id_area, SQLINT4, false, false, 10);
				// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

							// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
							// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
							// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
							// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
							// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

				$result = mssql_execute($proc);
				$devolver = sqlsrv_getdata($result);
				$connection -> closeConnection($connectionstatus);
				unset($connectionstatus);
				unset($connection);
				return $devolver;
			} 
			else 
			{
				unset($connectionstatus);
				unset($connection);
				echo 'Tenemos un problema: ' . mssql_get_last_message();
			}
	}
	public function fnc_listarPersonaPorIdArea($id_area){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_listarPersonaPorIdArea";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			 mssql_bind($proc, '@id_are', $id_area, SQLINT4, false, false, 10);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
}

public function fnc_reporteCantidadDeDineroPorOperador(){

	@session_start();
	$connection = new connection();
	$connectionstatus = $connection -> openConnection();
	if ($connectionstatus) 
	{
		$sql = "usp_Gps_Chip_CantidadDineroPorOperador";
				//$USRId = $_SESSION['usuario']["ses_USRId"] ;
		// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
		$proc = mssql_init($sql, $connectionstatus); 
					// mssql_bind($proc, '@USRId', $USRId, SQLINT4, false, false, 10);
		// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

					// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
					// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
					// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
					// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
					// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

		$result = mssql_execute($proc);
		$devolver = sqlsrv_getdata($result);
		$connection -> closeConnection($connectionstatus);
		unset($connectionstatus);
		unset($connection);
		return $devolver;
	} 
	else 
	{
		unset($connectionstatus);
		unset($connection);
		echo 'Tenemos un problema: ' . mssql_get_last_message();
	}
}

	public function fnc_buscarPersonaPorDni($numero){
		//@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_buscarPersonaPorDni";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			mssql_bind($proc, '@dni', $numero, SQLVARCHAR, false, false, 18);
			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
		
	}
	public function fnc_bussinesInsertarNuevaPersona($data_Persona){
		//@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_insertarNuevaPersona";

			$Dni				= $data_Persona -> getDni();
			$Nombre 			= $data_Persona -> getNombre();
			$ApePat 			= $data_Persona -> getApePat();
			$ApeMat 			= $data_Persona -> getApeMat();
			$Area 				= $data_Persona -> getArea();
			$Sexo 				= $data_Persona -> getSexo();
			$Especializacion 	= $data_Persona -> getId_especializacion();
			$TipoPersona 		= $data_Persona -> getId_tipoPersona();
			$Estado		 		= $data_Persona -> getEstado();
			$Telefono			= $data_Persona -> getTelefono();
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			//mssql_bind($proc, '@id_persona',		 $Dni, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_txtDniPersona',	 		$Dni, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@telefono',	 				$Telefono, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_txtNombrePersona',		$Nombre, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_txtApePatPersona',	 	$ApePat, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_txtApeMatPersona',		$ApeMat, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_selectArea',		 		$Area, SQLINT4, false, false, 50);
			mssql_bind($proc, '@id_selectSexo',		 		$Sexo, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_selectEspecializacion',	$Especializacion, SQLINT4, false, false, 50);
			mssql_bind($proc, '@id_selectTipoPersona',		$TipoPersona, SQLINT4, false, false, 50);
			mssql_bind($proc, '@estado',		 			$Estado, SQLINT4, false, false, 50);

			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

		 $result = mssql_execute($proc);

		if ($result) {
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return true;
		}else{
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return false;
		}
			
	}
}


public function fnc_BusinessModificarPersona($data_Persona){ 
  	//@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_Persona_modificarPersona";
			$id					= $data_Persona -> getId_persona();
			$Dni				= $data_Persona -> getDni();
			$Nombre 			= $data_Persona -> getNombre();
			$ApePat 			= $data_Persona -> getApePat();
			$ApeMat 			= $data_Persona -> getApeMat();
			$Area 				= $data_Persona -> getArea();
			$Sexo 				= $data_Persona -> getSexo();
			$Especializacion 	= $data_Persona -> getId_especializacion();
			$TipoPersona 		= $data_Persona -> getId_tipoPersona();
			$Estado		 		= $data_Persona -> getEstado();
			$Telefono		 	= $data_Persona -> getTelefono();
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			mssql_bind($proc, '@id_persona',		 		$id, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_txtDniPersona',	 		$Dni, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@telefono',	 				$Telefono, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_txtNombrePersona',		$Nombre, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_txtApePatPersona',	 	$ApePat, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_txtApeMatPersona',		$ApeMat, SQLVARCHAR, false, false, 100);
			mssql_bind($proc, '@id_selectArea',		 		$Area, SQLINT4, false, false, 50);
			mssql_bind($proc, '@id_selectSexo',		 		$Sexo, SQLVARCHAR, false, false, 50);
			mssql_bind($proc, '@id_selectEspecializacion',	$Especializacion, SQLINT4, false, false, 50);
			mssql_bind($proc, '@id_selectTipoPersona',		$TipoPersona, SQLINT4, false, false, 50);
			mssql_bind($proc, '@estado',		 			$Estado, SQLINT4, false, false, 50);

			// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

						// mssql_bind($proc, '@NombreApellido', $NombreApellido, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@varDni', $varDni, SQLVARCHAR, false, false, 10); 
						// mssql_bind($proc, '@intEdad', $intEdad, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdGradoAcademico', $IdGradoAcademico, SQLINT4, false, false, 10); 
						// mssql_bind($proc, '@IdSectorAcademico', $IdSectorAcademico, SQLINT4, false, false, 10); 

		 $result = mssql_execute($proc);

		if ($result) {
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return true;
		}else{
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return false;
		}
			
	}
  }
	public function fnc_BusinessEliminarPersona($id){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{

				$sql = "usp_Clinica_Persona_eliminarPersona";
				// echo $sql." ".$idPermiso;

				$proc = mssql_init($sql, $connectionstatus); 
				mssql_bind($proc, '@id_persona',		 		$id, SQLINT4, false, false, 10);

				
							
				$result = mssql_execute($proc);
				if ($result) {
					$connection -> closeConnection($connectionstatus);
					unset($connectionstatus);
					unset($connection);
					return true;
				}else{
					$connection -> closeConnection($connectionstatus);
					unset($connectionstatus);
					unset($connection);
					return false;
				}
			} 
			
					
		}
	public function fncBusinessListarEventosMes(){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
			
				$sql = "usp_Eve_S_ListarEventoMes";
						
				if ($_SESSION['usuario']["ses_Titulo"]=='Administrador') {
								
					$proc = mssql_init($sql, $connectionstatus); 
					$idPermiso = $_SESSION['usuario']["ses_Permiso"];
					mssql_bind($proc, '@USRId', $idPermiso, SQLVARCHAR, false, false, 30);



				}
				else{
											
					$proc = mssql_init($sql, $connectionstatus); 
					$idPermiso = $_SESSION['usuario']["ses_Permiso"];
					mssql_bind($proc, '@USRId', $idPermiso, SQLVARCHAR, false, false, 30);

				}
			
							
				$result = mssql_execute($proc);
				$devolver = sqlsrv_getdata($result);
				$connection -> closeConnection($connectionstatus);
				unset($connectionstatus);
				unset($connection);
				return $devolver;
			} 
			else 
			{
				unset($connectionstatus);
				unset($connection);
				echo 'Tenemos un problema: ' . mssql_get_last_message();
			}
					
		}
	public function fncBusinessListarEventosPublicos(){

		//	@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
				$sql = "usp_Eve_S_ListarEventosPublicosPrivados";
				$proc = mssql_init($sql, $connectionstatus); 
			
				$result = mssql_execute($proc);
				$devolver = sqlsrv_getdata($result);
				$connection -> closeConnection($connectionstatus);
				unset($connectionstatus);
				unset($connection);
				return $devolver;
			} 
			else 
			{
				unset($connectionstatus);
				unset($connection);
				echo 'Tenemos un problema: ' . mssql_get_last_message();
			}
			
		}


	public function fncBusinessConsultarPorId($IdEvento)
	{
		
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Eve_S_ConsultarPorIdEvento";

			// echo "usp_Sed_S_Egresado_ConsultarPorId ".$IdEgresado.", ".$USRId;
			$proc = mssql_init($sql, $connectionstatus); 
			mssql_bind($proc, '@IdEvento', $IdEvento, SQLVARCHAR, false, false, 10);
			

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}
	public function fncBusinessListarDependenciaPermiso()
	{
		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Eve_S_ListarPermisosEvento";
			$proc = mssql_init($sql, $connectionstatus); 

			if ($_SESSION['usuario']["ses_Titulo"]=='Administrador'){
				$idPermiso = $_SESSION['usuario']["ses_Permiso"];
				mssql_bind($proc, '@permiso', $idPermiso, SQLVARCHAR, false, false, 30);
			}else{
				$idPermiso = $_SESSION['usuario']["ses_Permiso"];
				mssql_bind($proc, '@permiso', $idPermiso, SQLVARCHAR, false, false, 30);

			}

			$result = mssql_execute($proc);
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		} 
		else 
		{
			unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
		}
	}

	public function fncBusinessAgregar($DtEvento) 
	{ 
  	$connection = new connection();
    $connectionstatus = $connection -> openConnection();
    if ($connectionstatus) 
    {

			$VarNombre 								= $DtEvento->getVarNombre();
			$VarDescripcion 					= $DtEvento->getVarDescripcion();
    	$VarLugar 								= $DtEvento->getVarlugar();
			$VarTipo 									= $DtEvento->getVarTipo();
			$VarEstado 								= $DtEvento->getVarEstado();    	
    	$DateInicioFecha 					= $DtEvento->getDateInicioFecha();
    	$DateFinFecha 						= $DtEvento->getDateFinFecha();
    	$StimeInicioHora 					= $DtEvento->getStimeInicioHora();
    	$StimeFinHora 						= $DtEvento->getStimeFinHora();
    	$IntAforo 								= $DtEvento->getIntAforo();
    	$VarBanner 								= $DtEvento->getVarBanner();
    	$VarUbicacionLatitud 			= $DtEvento->getVarUbicacionLatitud();
			$VarUbicacionLongitud 		= $DtEvento->getVarUbicacionLongitud();
			$IdTipoEvento							= $DtEvento->getIdTipoEvento();
			$Dependencia					  	= $DtEvento->getDependencia();
			$IdPtaDependenciaFijo			= $DtEvento->getIdPtaDependenciaFijo();
			$IdDepe										= $DtEvento->getIdDepe();
			$VarUsuarioCreador				= $DtEvento->getvarUsuarioCreador();
    

      $sql = "usp_Eve_I_InsertaEvento";
 			// echo $sql.' '.$CodUniv.', '.$ItemEst.', '.$IdSem.', '.$DatNacimiento.', '.$varDNI.', '.$varDomicilioReal.', '.$varDomicilioProcesal.', '.$intEdad.', '.$varTelefonoCelular.', '.$varTelefonoFijo.', '.$varEmail.', '.$datIngresoUniversidad.', '.$datEgresoUniversidad.', '.$IdGradoAcademico.', '.$datGradoAcademico.', '.$IdTituloAcademico.', '.$datTitulacion.', '.$varDireccionIP;
      $proc = mssql_init($sql, $connectionstatus);
      mssql_bind($proc, '@VarNombre', $VarNombre, SQLVARCHAR , false, false, 10); 
      mssql_bind($proc, '@VarDescripcion', $VarDescripcion, SQLVARCHAR , false, false, 10); 
			mssql_bind($proc, '@VarLugar', $VarLugar, SQLVARCHAR , false, false, 10);
			mssql_bind($proc, '@VarEstado', $VarEstado, SQLVARCHAR , false, false, 10);        
     	mssql_bind($proc, '@VarTipo', $VarTipo, SQLVARCHAR , false, false, 10); 
      mssql_bind($proc, '@DateInicioFecha', $DateInicioFecha, SQLVARCHAR  , false, false, 19); 
      mssql_bind($proc, '@DateFinFecha', $DateFinFecha, SQLVARCHAR , false, false, 19); 
      mssql_bind($proc, '@StimeInicioHora', $StimeInicioHora, SQLVARCHAR , false, false, 19); 
      mssql_bind($proc, '@StimeFinHora', $StimeFinHora, SQLVARCHAR , false, false, 19); 
      mssql_bind($proc, '@IntAforo', $IntAforo, SQLVARCHAR , false, false, 10); 
      mssql_bind($proc, '@VarBanner', $VarBanner, SQLVARCHAR , false, false, 10); 
      mssql_bind($proc, '@VarUbicacionLatitud', $VarUbicacionLatitud, SQLVARCHAR , false, false, 10); 
			mssql_bind($proc, '@VarUbicacionLongitud', $VarUbicacionLongitud, SQLVARCHAR , false, false, 10); 
			mssql_bind($proc, '@IdTipoEvento', $IdTipoEvento, SQLVARCHAR , false, false, 10); 
			mssql_bind($proc, '@IdDependencia', $Dependencia, SQLVARCHAR , false, false, 10); 
			mssql_bind($proc, '@IdPtaDependenciaFijo', $IdPtaDependenciaFijo, SQLVARCHAR , false, false, 9); 
			mssql_bind($proc, '@IdDepe', $IdDepe, SQLVARCHAR , false, false, 9); 
			mssql_bind($proc, '@VarUsuarioCreador', $VarUsuarioCreador, SQLVARCHAR , false, false, 9); 
      	
			$result = mssql_execute($proc);
			
		
			$devolver = sqlsrv_getdata($result);
			$connection -> closeConnection($connectionstatus);
			unset($connectionstatus);
			unset($connection);
			return $devolver;
		
    } 
    else 
    {
      unset($connectionstatus);
			unset($connection);
			echo 'Tenemos un problema: ' . mssql_get_last_message();
    }
  }

  public function fncBusinessModificar($DtEvento) 
	{ 
  	$connection = new connection();
    $connectionstatus = $connection -> openConnection();
    if ($connectionstatus) 
    {
			$IdEvento									= $DtEvento->getIdEvento();
    	$VarNombre 								= $DtEvento->getVarNombre();
			$VarDescripcion 					= $DtEvento->getVarDescripcion();
    	$VarLugar 								= $DtEvento->getVarlugar();
			$VarTipo 									= $DtEvento->getVarTipo();
			$VarEstado 								= $DtEvento->getVarEstado();    	
    	$DateInicioFecha 					= $DtEvento->getDateInicioFecha();
    	$DateFinFecha 						= $DtEvento->getDateFinFecha();
    	$StimeInicioHora 					= $DtEvento->getStimeInicioHora();
    	$StimeFinHora 						= $DtEvento->getStimeFinHora();
    	$IntAforo 								= $DtEvento->getIntAforo();
    	$VarBanner 								= $DtEvento->getVarBanner();
    	$VarUbicacionLatitud 			= $DtEvento->getVarUbicacionLatitud();
			$VarUbicacionLongitud 		= $DtEvento->getVarUbicacionLongitud();
			$IdTipoEvento							= $DtEvento->getIdTipoEvento();
			$IdPtaDependenciaFijo			= $DtEvento->getIdPtaDependenciaFijo();
			$IdDepe										= $DtEvento->getIdDepe();

      $sql = "usp_Eve_U_ActualizarEvento";
 			// echo $sql.' '.$CodUniv.', '.$ItemEst.', '.$IdSem.', '.$DatNacimiento.', '.$varDNI.', '.$varDomicilioReal.', '.$varDomicilioProcesal.', '.$intEdad.', '.$varTelefonoCelular.', '.$varTelefonoFijo.', '.$varEmail.', '.$datIngresoUniversidad.', '.$datEgresoUniversidad.', '.$IdGradoAcademico.', '.$datGradoAcademico.', '.$IdTituloAcademico.', '.$datTitulacion.', '.$varDireccionIP;
			 $proc = mssql_init($sql, $connectionstatus);
			 mssql_bind($proc, '@IdEvento', $IdEvento, SQLVARCHAR , false, false, 10);
			 mssql_bind($proc, '@VarNombre', $VarNombre, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@VarDescripcion', $VarDescripcion, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@VarLugar', $VarLugar, SQLVARCHAR , false, false, 10);
			 mssql_bind($proc, '@VarEstado', $VarEstado, SQLVARCHAR , false, false, 10);        
			 mssql_bind($proc, '@VarTipo', $VarTipo, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@DateInicioFecha', $DateInicioFecha, SQLVARCHAR  , false, false, 19); 
			 mssql_bind($proc, '@DateFinFecha', $DateFinFecha, SQLVARCHAR , false, false, 19); 
			 mssql_bind($proc, '@StimeInicioHora', $StimeInicioHora, SQLVARCHAR , false, false, 19); 
			 mssql_bind($proc, '@StimeFinHora', $StimeFinHora, SQLVARCHAR , false, false, 19); 
			 mssql_bind($proc, '@IntAforo', $IntAforo, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@VarBanner', $VarBanner, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@VarUbicacionLatitud', $VarUbicacionLatitud, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@VarUbicacionLongitud', $VarUbicacionLongitud, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@IdTipoEvento', $IdTipoEvento, SQLVARCHAR , false, false, 10); 
			 mssql_bind($proc, '@IdPtaDependenciaFijo', $IdPtaDependenciaFijo, SQLVARCHAR , false, false, 9); 
			 mssql_bind($proc, '@IdDepe', $IdDepe, SQLVARCHAR , false, false, 9); 
			 
			 
      $result = mssql_execute($proc);

      if ($result) {
        $connection -> closeConnection($connectionstatus);
        unset($connectionstatus);
        unset($connection);
        return true;
      }else{
        $connection -> closeConnection($connectionstatus);
        unset($connectionstatus);
        unset($connection);
        return false;
      }
    } 
    else 
    {
      unset($connectionstatus);
      unset($connection);
      echo 'Tenemos un problema: ' . mssql_get_last_message();
    }
  }

  

  public function fncBusinessCambiarEstado($Valor, $IdEvento) 
	{ 
  	$connection = new connection();
    $connectionstatus = $connection -> openConnection();
    if ($connectionstatus) 
    {
			$IdEvento									= $IdEvento;
    	$Estado 								= $Valor;

      $sql = "usp_Eve_U_CambiarEstadoEvento";
			 $proc = mssql_init($sql, $connectionstatus);
			 mssql_bind($proc, '@IdEvento', $IdEvento, SQLVARCHAR , false, false, 10);
			 mssql_bind($proc, '@Estado', $Estado, SQLVARCHAR , false, false, 10); 
			 
			 
      $result = mssql_execute($proc);

      if ($result) {
        $connection -> closeConnection($connectionstatus);
        unset($connectionstatus);
        unset($connection);
        return true;
      }else{
        $connection -> closeConnection($connectionstatus);
        unset($connectionstatus);
        unset($connection);
        return false;
      }
    } 
    else 
    {
      unset($connectionstatus);
      unset($connection);
      return false;
    }
  }

}

?>