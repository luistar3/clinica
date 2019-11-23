<?php 

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/connection.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Campana.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/funciones.php');
//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/navegador.php');

class business_Campana
{

  public function fncBusinessListarCampanas(){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
				$sql = "usp_clinica_CAMPANA_listarCampanasActivas";
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
	public function fncBusinessListarAllCampanas(){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_clinica_CAMPANA_listarCampanasGestion";
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
	public function fnc_businessInsertarCampana($data){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{

			$sql = "usp_Clinica_CAMPANA_insertarNuevaCampana";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
			// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;

			$url			=$data -> getUrlImg();
			$inicioFecha	=$data -> getInicioFecha();
			$finFecha		=$data -> getFinFecha();
			$idUsuario		=$data -> getIdUsuario();
			$idArea			=$data -> getId_area();
			$descripcion	=$data -> getDescripcion();
			$nombreCampana	=$data -> getNombreCampana();

			$proc = mssql_init($sql, $connectionstatus); 
			mssql_bind($proc, '@urlImg', $url, SQLVARCHAR, false, false, 10);
			mssql_bind($proc, '@inicioFecha', $inicioFecha, SQLVARCHAR, false, false, 10);

			mssql_bind($proc, '@finFecha', $finFecha, SQLVARCHAR, false, false, 10); 
			mssql_bind($proc, '@idUsuario', $idUsuario, SQLINT4, false, false, 10); 
			mssql_bind($proc, '@idArea', $idArea, SQLINT4, false, false, 10); 
			mssql_bind($proc, '@nombreCampana', $nombreCampana, SQLVARCHAR, false, false, 10); 
     	    mssql_bind($proc, '@descripcion', $descripcion, SQLVARCHAR, false, false, 10); 

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

public function fnc_businessModificarCampana($data){

	@session_start();
	$connection = new connection();
	$connectionstatus = $connection -> openConnection();
	if ($connectionstatus) 
	{

		$sql = "usp_Clinica_CAMPANA_modificarImagenCampana";
				//$USRId = $_SESSION['usuario']["ses_USRId"] ;
		// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;

		$url			=$data -> getUrlImg();
		$idCampana		=$data -> getIdCampana();

		$proc = mssql_init($sql, $connectionstatus); 
		mssql_bind($proc, '@urlImg', $url, SQLVARCHAR, false, false, 10);
		

		
		mssql_bind($proc, '@idCampana', $idCampana, SQLINT4, false, false, 10); 


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

public function fnc_businessModificarInfoCampana($data){

	@session_start();
	$connection = new connection();
	$connectionstatus = $connection -> openConnection();
	if ($connectionstatus) 
	{

		$sql = "usp_Clinica_CAMPANA_modificarInfoCampana";
				//$USRId = $_SESSION['usuario']["ses_USRId"] ;
		// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;


		$inicioFecha	=$data -> getInicioFecha();
		$finFecha		=$data -> getFinFecha();
		
		$idArea			=$data -> getId_area();
		$descripcion	=$data -> getDescripcion();
		$nombreCampana	=$data -> getNombreCampana();
		$idCampana		=$data -> getIdCampana();

		$proc = mssql_init($sql, $connectionstatus); 
		mssql_bind($proc, '@idCampana', $idCampana, SQLINT4, false, false, 10);
		mssql_bind($proc, '@inicioFecha', $inicioFecha, SQLVARCHAR, false, false, 10);

		mssql_bind($proc, '@finFecha', $finFecha, SQLVARCHAR, false, false, 10); 
		
		mssql_bind($proc, '@idArea', $idArea, SQLINT4, false, false, 10); 
		mssql_bind($proc, '@nombreCampana', $nombreCampana, SQLVARCHAR, false, false, 10); 
		 mssql_bind($proc, '@descripcion', $descripcion, SQLVARCHAR, false, false, 10); 

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


 

}

?>