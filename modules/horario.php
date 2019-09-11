<?php 

    include_once($_SERVER["DOCUMENT_ROOT"] . '/gps/data/data_Horario.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/gps/business/businessClinica/business_Horario.php');
    include_once($_SERVER["DOCUMENT_ROOT"] . '/gps/data/data_Area.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/gps/business/businessClinica/business_Area.php');
    


    



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
					fnc_listarArea();
				break;
			case 'xZ6rQTOHxk':
					fnc_listarHorariosPorArea();
				break;
			case 'uctftGr4Jm':
					fnc_agregarHorario();
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
		//@session_start();
		$menu_activo = "horarioEspecialidad";
		$menu_open = "horarioEspecialidad";

		
		include('../views/includes/header.php');
		include('../views/mod_horario/index.php');
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
        $menu_activo = "horarioEspecialidad";
		$business_Especialidad = new business_Evento();
		$dtListarEspecialidad = $business_Especialidad -> fncBusinessListarEspecialidad();

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

	
	function fnc_listarArea()
	{
		//@session_start();
        //$menu_activo = "horarioEspecialidad";
		$business_Area = new business_Area();
		$dtListarArea = $business_Area -> fncBusinessListarArea();
		$json_data = array(
	
			"data" => $dtListarArea   // total data array
		);
		echo json_encode($json_data);
	}
	function fnc_listarHorariosPorArea()
	{
		//@session_start();
		//$menu_activo = "horarioEspecialidad";
		$id_area = $_GET["id_area"];
		$business_Horarios = new business_Horario();
		$dtListarHorarios = $business_Horarios -> fncBusinessListarHorariosArea($id_area);
		//$json_data = array(
	
		//	"data" => $dtListarHorarios   // total data array
		//);
	                                                         
	
		/*$dati =array();
		foreach ($dtListarHorarios as $key => $value) {
			
			$a=[
				"title" => $value["nombre"],
				"start"=>  date("Y-m-d h:m:s", strtotime($value["Fecha_inicio"])) 
			];

			array_push($dati, $a);
		} */
		//$newDate = date("m-d-Y", strtotime($origDate));
		echo json_encode($dtListarHorarios,JSON_UNESCAPED_UNICODE);
	}
	function fnc_agregarHorario()
	{

		
		$validacion_post = true;
		if( !isset($_GET["id_area"]) || $_GET["id_area"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_persona"]) || $_GET["id_persona"] == "" ){ $validacion_post = false; }
		//if( !isset($_GET["color"]) || $_GET["color"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["fecha_inicio"]) || $_GET["fecha_inicio"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["fecha_fin"]) || $_GET["fecha_fin"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["fecha_inicio_fin"]) || $_GET["fecha_inicio_fin"] == "" ){ $validacion_post = false; }

		if ($validacion_post) {


			$id_area 			=  $_GET["id_area"];
			$id_persona 		=  $_GET["id_persona"];
			$color 				=  $_GET["id_reten"];
			$fecha_inicio 		=  $_GET["fecha_inicio"];
			$fecha_fin 			=  $_GET["fecha_fin"];
			$fecha_inicio_fin 	=  $_GET["fecha_inicio_fin"];
			



			// $input = $fecha_inicio; 
			// $date = strtotime($input); 
			// echo date('h:i:s', $date);

			//$inicio = strtotime($fecha_fin."+ 1 days");
			$inicio = strtotime($fecha_inicio);
			$inicio_fin = strtotime($fecha_inicio_fin);
			$fin 	= strtotime($fecha_fin);
			$fecha_inicio=date("Y-M-d H:i",$inicio);
			$fecha_fin=date("Y-M-d H:i",$fin); 
			$fecha_inicio_fin = date("Y-M-d H:i",$inicio_fin);
			
			
		
			$business_Horarios = new business_Horario();
			$data_horario = new data_Horario();

			$data_horario -> setId_persona($id_persona);
			$data_horario -> setId_area($id_area);
			//$data_horario -> setColor($color);
			$data_horario -> setEstado(1);

		
			$anio_i = strtotime($fecha_inicio);
			$anio_f = strtotime($fecha_inicio_fin);
			$hora_i = date("H",$anio_i);
			$hora_f = date("H",$anio_f);

			
		
			//echo($f);

			while ($fecha_fin >= $fecha_inicio) {

				echo($fecha_fin." >= ".$fecha_inicio);
				echo("<br>");
			

			$data_horario -> setHora_inicio($fecha_inicio);
			$data_horario -> setHora_Fin($fecha_inicio_fin);

			//echo($fecha_inicio ."---".$fecha_inicio_fin);

			$anio_s = strtotime($fecha_inicio);
			$anio_f = strtotime($fecha_inicio_fin);
			$anio = date("Y",$anio_s);
			$mes = date("m",$anio_s);
			$dia = date("d",$anio_s);
			$hora = date("H",$anio_s);
			$hora_f = date("H",$anio_f);
			$minuto = date("i",$anio_s);
			$codigoColor ="";
			if ($hora>7 && $hora<12) {
				$codigoColor ="#28a745";
				//echo("<br>".$hora."-");
			}elseif($hora>11 && $hora<19){
				$codigoColor = "#f7c329";
				//echo("<br>".$hora."-");
			}else {
				$codigoColor = "#5d87b5";
				//echo("<br>".$hora."-");
			}

			if ($color==1) {
				$codigoColor ="#ea5160";
			}
			//echo($color."<br>");
			//echo($codigoColor."<br>");
			//echo($color."<br>");
			// mañana  8 -12
			// tarde 	3-7.30
			// noche 	7.30 7.30 
			// reten 	7.30 7.30 
			$data_horario -> setColor($codigoColor);
		

			
			$xinicio = strtotime($fecha_inicio."+ 1 days");			
			$fecha_inicio = date("Y-M-d H:i",$xinicio);

			$zinicio = strtotime($fecha_inicio_fin."+ 1 days");
			$fecha_inicio_fin = date("Y-M-d H:i",$zinicio);
			// comprovacion de existencia de horario

			//print_r($data_horario);

			$dt_horario = $business_Horarios -> fncBusinessComprovacionExistenciaHorario($anio,$mes,$dia,$id_persona,$id_area);
			if (count($dt_horario)>0) {
				echo(2);
			}
			else {
				//$bolres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
				//print_r($data_horario);
				echo(1);
			}
			// comprovacion de existencia de horario

			//$bollres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
			
			
			//print_r($data_horario);

				
				
			}
			
		} else {
			echo("0");
		}
		
		



		
		
		//H:i:s
		//$date = new DateTime('2000-12-31');
		//$date->modify('+1 day');
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


?>