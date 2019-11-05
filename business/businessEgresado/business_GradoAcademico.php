<?php
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/connection.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_GradoAcademico.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/funciones.php');
include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/complements/navegador.php');


class business_GradoAcademico
{

	public function fncBusinessConsultarActivos()
	{
		
		$connection = new connection();
		$connectionstatus = $connection -> openConnection();
		if ($connectionstatus) 
		{
			$sql = "usp_Sed_S_GradoAcademico_ConsultarActivos";
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

}

?>