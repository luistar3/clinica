<?php 

    include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Campana.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Campana.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Area.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Area.php');
    
    


    



    // VERIFICAR PERMISO DEL MODULO
	//  @session_start();

	//  if (!isset($_SESSION['usuario'])) {
	// 	header('Location: ../views/website/login.php');
	// 	exit();
	//  }
	

	// $url_parametros['sesion'] = $sex;
	// $business_Usuario = new business_Usuario();
	// $dtConsultarPermisoModulo = $business_Usuario -> fncBusinessConsultarPermisoModulo($_SESSION['usuario']["ses_USRId"], 'btnEmpresas');
	// if ( count($dtConsultarPermisoModulo) == 0 ){
	// 	$_SESSION['mensaje']["ses_MensajeEstado"] = 1;	
	// 	$_SESSION['mensaje']["ses_MensajeTipo"] 	= "error";	
	// 	$_SESSION['mensaje']["ses_MensajeDescripcion"] 	= "El Usuario no tiene permiso a este módulo.";
	// 	header('Location: ../index.php?' . http_build_query($url_parametros)); 
	// 	exit();
	// }

	// VISTAS
	// ===================================================
	if( isset($_GET["v"]) and $_GET["v"] !== "" ){
		$get_opcion = $_GET["v"];
			
		switch ($get_opcion) {
			
			case 'reporte':
					view_reporte();
				break;
			case 'index':
					view_Index();
				break;
			case 'agregar':
					view_AgregarEditar();
				break;
			case 'editar':
					view_AgregarEditar();
				break;
			case 'listarfuturo':
					view_ListarEventoDetalle();
				break;
			default:
				header('Location: ../errors/404.php?sesion='.$sex);  
				break;

		}

	// FUNCIONES
	// ===================================================
	}elseif( isset($_GET["p"]) and $_GET["p"] !== "" ){
		$get_opcion = $_GET["p"];
			
		switch ($get_opcion) {

			case 'J9Y0B7rh86':
					fnc_listarChips();
				break;
			case 'xZ6rQTOHxk':
					fnc_Agregar();
				break;
			case 'uctftGr4Jm':
					fnc_Modificar();
				break;
			case 'UkUELwv6kL':
					fnc_VerificarAforo($sex);
				break;
			case 'Q6SwcynHWV':
					fnc_reporteCantidadDineroPorOperador();
				break;
			case 'Rd5f84FT7D':
					fnc_reporteCantidadChipsPorOperador();
				break;
			default:
				header('Location: ../errors/404.php?sesion='.$sex);  
				break;
		}

	}else{
		header('Location: ../errors/404.php?sesion='.$sex);   
	}

	//===========================================================================
	//	VISTAS
	//===========================================================================

	function utf8_converter($array){
		array_walk_recursive($array, function(&$item, $key){
		if(!mb_detect_encoding($item, 'utf-8', true)){
		$item = utf8_encode($item);
		}
		});

		return $array;
	}

	function view_Index()
	{
		@session_start();
		$menu_activo = "listarChip";
		

        



		include('../views/includes/header.php');
		include('../views/mod_campana/gestion.php');
		include('../views/includes/footer.php');
	}
	function view_reporte()
	{
		@session_start();
		$menu_activo = "reporteChip";
		
		include('../views/includes/header.php');
		include('../views/mod_chip/reporte.php');
		include('../views/includes/footer.php');
	}


	function view_mostrarPaginaEventos()
	{
		@session_start();
        $menu_activo = "dashboard";
		$business_Evento = new business_Evento();
		$dtListarEventos = $business_Evento -> fncBusinessListarEventosPublicos();

		$dtListarEventos = utf8_converter($dtListarEventos);

		include('../views/includes/header.php');
		include('../views/mod_evento/eventosPage.php');
		include('../views/includes/footer.php');
	}

	function view_AgregarEditar()
	{
        @session_start();
        //$url_parametros['sesion'] = $sex;
        $menu_activo = 'mantenimiento_agregar_evento_index';
		//unset($_SESSION['empresa']);
		
		$business_TipoEvento = new business_TipoEvento();
		$dtListarTipoEventos = $business_TipoEvento -> fncBusinessListarTipoEventos();
		$business_Evento = new business_Evento();
		$dtListarPermisosEvento = $business_Evento -> fncBusinessListarDependenciaPermiso();
		$dtListarPermisosEvento =utf8_converter($dtListarPermisosEvento);


		 $operacion = $_GET["v"];
		if( $operacion == "editar" ){
			$get_id = base64_decode($_GET["id"]);

			$business_Evento = new business_Evento();
			$dtConsultarEvento = $business_Evento -> fncBusinessConsultarPorId($get_id);
 			$dtConsultarEvento =utf8_converter($dtConsultarEvento);
		
        }
     

		include('../views/includes/header.php');
		include('../views/mod_evento/add_edit.php');
		include('../views/includes/footer.php');
	}


	//===========================================================================
	//	FUNCIONES
	//===========================================================================

	
	function fnc_listarChips()
	{
		$preview = $config = $errors = [];
		$targetDir = '../uploads';
		if (!file_exists($targetDir)) {
			@mkdir($targetDir);
		}
		$fileBlob = 'imagen';                      // the parameter name that stores the file blob
		if (isset($_FILES[$fileBlob]) && isset($_POST['uploadToken'])) {
			$token = $_POST['uploadToken'];          // gets the upload token
			// if (!validateToken($token)) {            // your access validation routine (not included)
			// 	return [
			// 		'error' => 'Access not allowed'  // return access control error
			// 	];
			// }
			$file = $_FILES[$fileBlob]['tmp_name'];  // the path for the uploaded file chunk 
			//$fileName = $_POST['fileName'];          // you receive the file name as a separate post data
			//$fileSize = $_POST['fileSize'];          // you receive the file size as a separate post data
			//$fileId = $_POST['fileId'];              // you receive the file identifier as a separate post data
			//$index =  $_POST['chunkIndex'];          // the current file chunk index
			//$totalChunks = $_POST['chunkCount'];     // the total number of chunks for this file
				//var_dump($_FILES[$fileBlob]['tpm_name']);
			$fileName =  $_FILES[$fileBlob]['name'];          // you receive the file name as a separate post data
			$fileSize = "filesize";          // you receive the file size as a separate post data
			$fileId = "fileId";              // you receive the file identifier as a separate post data
			$index =  "1";          // the current file chunk index
			$totalChunks = "total";     // the total number of chunks for this file
			
			$targetFile = $targetDir.'/'.$fileName;  // your target file path
			//echo($targetFile);
			if ($totalChunks > 1) {                  // create chunk files only if chunks are greater than 1
				$targetFile .= '_' . str_pad($index, 4, '0', STR_PAD_LEFT); 
			} 
			$thumbnail = 'unknown.jpg';
			if(move_uploaded_file($_FILES['imagen']['tmp_name'], $targetFile)) {
				// get list of all chunks uploaded so far to server
				$chunks = glob("{$targetDir}/{$fileName}_*"); 
				// check uploaded chunks so far (do not combine files if only one chunk received)
				$allChunksUploaded = $totalChunks > 1 && count($chunks) == $totalChunks;
				if ($allChunksUploaded) {           // all chunks were uploaded
					$outFile = $targetDir.'/'.$fileName;
					// combines all file chunks to one file
					combineChunks($chunks, $outFile);
				} 
				// if you wish to generate a thumbnail image for the file
				//$targetUrl = getThumbnailUrl($path, $fileName);
				// separate link for the full blown image file
				//$zoomUrl = 'http://localhost/pjrclinica/' . $fileName;
				$data= [
					'chunkIndex' => $index,         // the chunk index processed
					//'initialPreview' => $targetUrl, // the thumbnail preview data (e.g. image)
					'initialPreviewConfig' => [
						[
							'type' => 'image',      // check previewTypes (set it to 'other' if you want no content preview)
							'caption' => $fileName, // caption
							'key' => $fileId,       // keys for deleting/reorganizing preview
							'fileId' => $fileId,    // file identifier
							'size' => $fileSize,    // file size
							//'zoomData' => $zoomUrl, // separate larger zoom data
						]
					],
					'append' => true
				];

				echo json_encode($data);
			} else {
				$data = [
					'error' => 'Error uploading chunk ' . $_POST['chunkIndex']
				];
				echo json_encode($data);
			}
		}
	
		//echo json_encode($data);
	}
	function fnc_reporteCantidadChipsPorOperador()
	{
		$business_Chip = new business_Chip();
		$dtListarReporteCantidadPorChip = $business_Chip -> fnc_reporteCantidadChipsPorOperador();
		// $json_data = array(
	
		// 	"data" => $dtListarReporteCantidadPorChip  // total data array
		// );
		$result = array();
		foreach ($dtListarReporteCantidadPorChip as $key => $value) {
			array_push($result,array(strtoupper($value['operador']) ,$value["cantidad"]));
		}
		echo json_encode($result, JSON_NUMERIC_CHECK);
	}

	function fnc_reporteCantidadDineroPorOperador()
	{
		$business_Chip = new business_Chip();
		$dtListarReporteCantidadDineroPorOperador = $business_Chip -> fnc_reporteCantidadDeDineroPorOperador();
		// $json_data = array(
	
		// 	"data" => $dtListarReporteCantidadPorChip  // total data array
		// );
		$result = array();
		//foreach ($dtListarReporteCantidadDineroPorOperador as $key => $value) {
		//	array_push($result,array(strtoupper($value['operador']) ,$value["monto"]));
		//}
		echo json_encode($dtListarReporteCantidadDineroPorOperador, JSON_NUMERIC_CHECK);
	}

	function fnc_VerificarSesionRuc($sex)
	{
		@session_start();
		$url_parametros['sesion'] = $sex;
		$validacion_post = true;
		$response = array();
		$response['mensaje'] = false;

		if( !isset($_SESSION['empresa']['rucvalidado']) || $_SESSION['empresa']['rucvalidado'] == "" ){ $validacion_post = false; }

		if ($validacion_post == true){
			if ( $_SESSION['empresa']['rucvalidado'] == true ){
				$response['mensaje'] = true;
			}else{
				$response['mensaje'] = false;
			}
			header('Content-Type: application/json; charset=utf-8');
			echo json_encode($response);	
		}else{
			header('Location: ../index.php?' . http_build_query($url_parametros)); 
		}	

	}

	function fnc_Agregar()
	{

		 $validacion_post = true;
		if( !isset($_GET["chipNumero"]) || $_GET["chipNumero"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["chipTarifa"]) || $_GET["chipTarifa"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["chipFechaContrato"]) || $_GET["chipFechaContrato"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["chipOperador"]) || $_GET["chipOperador"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["chipTipo"]) || $_GET["chipTipo"] == "" ){ $validacion_post = false; }
		 
		if ($validacion_post == true) {
			$chipId				=$_GET["chipId"];
			$chipNumero 		=$_GET["chipNumero"];
			$chipTarifa			=$_GET["chipTarifa"];
			$chipFechaContrato	=$_GET["chipFechaContrato"];
			$chipOperador		=$_GET["chipOperador"];
			$chipTipo			=$_GET["chipTipo"];
  
			$business_Chip = new business_Chip();
			$data_Chip = new data_Chip();
			$dataChip = $business_Chip -> fnc_buscarChipPorNumero(str_replace(' ','',$chipNumero)); 
				
						
				
					if (count($dataChip)>0 && $dataChip[0]['idchip']!=$chipId) {
					echo('3');
					} else {

						if ($chipId!=0) {
							$data_Chip -> setOperador(str_replace(' ','',$chipOperador));
							$data_Chip -> setTipo_contrato(str_replace(' ','',$chipTipo));
							$data_Chip -> setNumero(str_replace(' ','',$chipNumero));
							$data_Chip -> setFechacontrato($chipFechaContrato);
							$data_Chip -> setTarifa($chipTarifa);
							$data_Chip -> setIdchip($chipId);
							fnc_Modificar($data_Chip,$business_Chip);
						} else {
							$data_Chip -> setOperador(str_replace(' ','',$chipOperador));
							$data_Chip -> setTipo_contrato(str_replace(' ','',$chipTipo));
							$data_Chip -> setNumero(str_replace(' ','',$chipNumero));
							$data_Chip -> setFechacontrato($chipFechaContrato);
							$data_Chip -> setTarifa($chipTarifa);
							//print_r($data_Chip);

							//print_r($dataChip);
						
							$bolAgregarChip=  $business_Chip -> fnc_insertarChip($data_Chip);
							if ($bolAgregarChip) {
								echo('1');
							}else {
								echo('0');
							}
						
					}
				
				
			

			
		}
					

		
	}
}

	function fnc_Modificar($data_Chip,$business_Chip)
	{

		//$business_Chip = new business_Chip();
		$bolModificarChip =  $business_Chip -> fnc_BusinessModificarChip($data_Chip);
		//print_r($data_Chip);
		echo('4');
	}



	function fnc_CambiarEstadoEvento()
	{
		@session_start();
		$validacion_post = true;
		if( !isset($_GET["id"]) || $_GET["id"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["valor"]) || $_GET["valor"] == "" ){ $validacion_post = false; }


		if ($validacion_post == true){

			$business_Evento = new business_Evento(); 
			$bolModificarEvento = $business_Evento -> fncBusinessCambiarEstado($_GET["valor"], $_GET["id"]);

			if( $bolModificarEvento )
			{
				echo 1;
			}else{
				echo 0;
			}

			// if ( $_SESSION['empresa']['rucvalidado'] == true ){
			// 	$response['mensaje'] = true;
			// }else{
			// 	$response['mensaje'] = false;
			// }
			// header('Content-Type: application/json; charset=utf-8');
			// echo json_encode($response);	

		}else{
			echo 0; 
		}	

	}




	function combineChunks($chunks, $targetFile) {
		// open target file handle
		$handle = fopen($targetFile, 'a+');
		
		foreach ($chunks as $file) {
			fwrite($handle, file_get_contents($file));
		}
		
		// you may need to do some checks to see if file 
		// is matching the original (e.g. by comparing file size)
		
		// after all are done delete the chunks
		foreach ($chunks as $file) {
			@unlink($file);
		}
		
		// close the file handle
		fclose($handle);
	}
	 
	// generate and fetch thumbnail for the file
	function getThumbnailUrl($path, $fileName) {
		// assuming this is an image file or video file
		// generate a compressed smaller version of the file
		// here and return the status
		$sourceFile = $path . '/' . $fileName;
		$targetFile = $path . '/thumbs/' . $fileName;
		//
		// generateThumbnail: method to generate thumbnail (not included)
		// using $sourceFile and $targetFile
		//
		if (generateThumbnail($sourceFile, $targetFile) === true) { 
			return 'http://localhost/pjrclinica/thumbs/' . $fileName;
		} else {
			return 'http://localhost/pjrclinica/' . $fileName; // return the original file
		}
	}


?>