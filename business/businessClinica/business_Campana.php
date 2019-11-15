<?php 

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/connection.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Campana.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/funciones.php');
//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/navegador.php');

class business_Campana
{

  public function fncBusinessListarArea(){

			@session_start();
			$connection = new connection();
			$connectionstatus = $connection -> openConnection();
			if ($connectionstatus) 
			{
				$sql = "usp_Clinica_Area_listarArea";
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
	public function fnc_reporteCantidadChipsPorOperador(){

		@session_start();
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Gps_Chip_CantidadPorOperador";
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