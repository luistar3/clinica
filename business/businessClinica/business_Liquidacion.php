<?php 

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/connection.php');

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/funciones.php');
//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/navegador.php');

class business_Liquidacion
{

  public function fncBusinessListarEspecialidades(){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
				$sql = "usp_Clinica_HOJA1_listarEspecialidades";
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
	public function fncBusinessListarLiquidacion($nombreEspecialidad){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Clinica_HOJA1_listarLiquidacion";
					//$USRId = $_SESSION['usuario']["ses_USRId"] ;
					// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
			$proc = mssql_init($sql, $connectionstatus); 
			mssql_bind($proc, '@especialidad', $nombreEspecialidad, SQLVARCHAR, false, false, 10);
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


public function fncBusinessListarLiquidacionEspecialidad(){

	@session_start();
	$connection = new connection();
	$connectionstatus = $connection -> openConnection();
	if ($connectionstatus) 
	{
		$sql = "usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionEspecialidad";
				//$USRId = $_SESSION['usuario']["ses_USRId"] ;
				// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
		$proc = mssql_init($sql, $connectionstatus); 
					//mssql_bind($proc, '@especialidad', $nombreEspecialidad, SQLVARCHAR, false, false, 10);
					// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

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

public function fncBusinessListarLiquidacionCodigo(){

	@session_start();
	$connection = new connection();
	$connectionstatus = $connection -> openConnection();
	if ($connectionstatus) 
	{
		$sql = "usp_Clinica_sl_ESPECIALIDAD_listarLiquidacionCodigo";
				//$USRId = $_SESSION['usuario']["ses_USRId"] ;
				// echo "usp_Sed_S_Egresado_Consultar ".$USRId.', '.$idPtaDependenciaFijo.', '.$NombreApellido.', '.$varDni.', '.$intEdad.', '.$IdGradoAcademico.', '.$IdSectorAcademico;
		$proc = mssql_init($sql, $connectionstatus); 
					//mssql_bind($proc, '@especialidad', $nombreEspecialidad, SQLVARCHAR, false, false, 10);
					// mssql_bind($proc, '@IdPtaDependenciaFijo', $idPtaDependenciaFijo, SQLINT4, false, false, 10);

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