<?php 

    include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Horario.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Horario.php');
    include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Area.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Area.php');
    


    



    //VERIFICAR PERMISO DEL MODULO
	 @session_start();

	 if (!isset($_SESSION['usuario'])) {
		header('Location: ../views/website/login.php');
		exit();
	 }
	

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
			case 'ver':
					view_ver();
				break;
			default:
				header('Location: ../errors/404.php?sesion=');  
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
					fnc_confirmarExistenciaDeFecha();
				break;
			case 'Q6SwcynHWV':
					fnc_eliminarHorarioExistente();
				break;
			case 'Rd5f84FT7D':
					fnc_listarhorarioHoy();
				break;
			case 'Ud5FR4FT7D':
					fnc_sacarFechaSumada();
				break;
			case 'ZXSDE34FR':
					fnc_buscarDniReniec();
			break;
				
			default:
				header('Location: ../errors/404.php?sesion=');  
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
	
	function view_ver()
	{
		//@session_start();
		$menu_activo = "verHorario";
		$menu_open = "verHorario";

		
		include('../views/includes/header.php');
		include('../views/mod_horario/ver.php');
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



	function fnc_buscarDniReniec()
	{
		$dni = $_GET['dni'] ;
		//echo($dni);
		$api_url = "http://clientes.reniec.gob.pe/padronElectoral2012/consulta.htm?hTipo=2&hDni=".$dni;
		$port = 80;
		$ch = curl_init( );
		curl_setopt ( $ch, CURLOPT_URL, $api_url );
		curl_setopt ( $ch, CURLOPT_PORT, $port );
		curl_setopt ( $ch, CURLOPT_POST, 1 );
		curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
		// Allowing cUrl funtions 20 second to execute
		curl_setopt ( $ch, CURLOPT_TIMEOUT, 5 );
		// Waiting 20 seconds while trying to connect
		curl_setopt ( $ch, CURLOPT_CONNECTTIMEOUT, 5 );                                 
		$response_string = curl_exec( $ch );
 
		$porciones = explode('<td><table width="100%"  border="0" cellspacing="0" cellpadding="8">', $response_string);
		if (count($porciones)==2) {
		 $arrayDni = explode('class="txtCuerpo">', $porciones[1]);
		 $segundoArrayDni = $arrayDni[2].$arrayDni[4].$arrayDni[8].$arrayDni[10].$arrayDni[12];
		 $vowels = array("</td>", "</tr>", "", "<td", "</td>", "</table></td>",'</table>',"<tr");
		 $tercerReplace =  str_replace($vowels, "",$segundoArrayDni);
		 $ultimArray = explode('>', $tercerReplace);
		 print_r($ultimArray);
		}else{
		  echo("No se encontro");  
		}
		
	}


	function fnc_sacarFechaSumada()
	{
		//@session_start();
        //$menu_activo = "horarioEspecialidad";
		$business_Horarios = new business_Horario();
		$dtListarHorarios = $business_Horarios -> fncBusinessSacarFechaSumadaServidor($_GET["d"]);
	
		echo json_encode($dtListarHorarios);
	}
	
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
	function fnc_listarhorarioHoy()
	{
	
			$numDia = $_GET["d"];
			$business_Area = new business_Area();
			$dtListarArea = $business_Area -> fncBusinessListarArea();
			$business_Horario = new business_Horario();
			$dtListarHorario = $business_Horario -> fncBusinessListarHorarioNum($numDia["d"]);
			//print_r($numDia["d"]);
		
		//@session_start();
		//$menu_activo = "horarioEspecialidad";
		// $business_Area = new business_Area();
		// $dtListarArea = $business_Area -> fncBusinessListarArea();
		// $business_Horario = new business_Horario();
		// $dtListarHorario = $business_Horario -> fncBusinessListarHorarioHoy();
		// $extra = "";

		//print_r($dtListarArea);
		$objeto = array();
		for ($i=0; $i < count($dtListarArea) ; $i++) { 
			$objeto[$i]["Nombre"]=$dtListarArea[$i]["Nombre"];
			$objeto[$i]["manana"]="";
			$objeto[$i]["tarde"]="";
			$objeto[$i]["noche"]="";
			$objeto[$i]["reten"]="";
			for ($e=0; $e < count($dtListarHorario) ; $e++) { 
				if ($dtListarArea[$i]["Nombre"]==$dtListarHorario[$e]["Nombre"]) {

					if ($dtListarHorario[$e]["manana"]!='') {
						$objeto[$i]["Nombre"]=$dtListarHorario[$e]["Nombre"];
						$objeto[$i]["manana"]=$dtListarHorario[$e]["manana"];
					}
					if ($dtListarHorario[$e]["tarde"]!='') {
						$objeto[$i]["Nombre"]=$dtListarHorario[$e]["Nombre"];
						$objeto[$i]["tarde"]=$dtListarHorario[$e]["tarde"];
					}
					if ($dtListarHorario[$e]["noche"]!='') {
						$objeto[$i]["Nombre"]=$dtListarHorario[$e]["Nombre"];
						$objeto[$i]["noche"]=$dtListarHorario[$e]["noche"];
					}
					if ($dtListarHorario[$e]["reten"]!='') {
						$objeto[$i]["Nombre"]=$dtListarHorario[$e]["Nombre"];
						$objeto[$i]["reten"]=$dtListarHorario[$e]["reten"];
					}
				}
			}
		}


		$json_data = array(
	
			"data" => $objeto   // total data array
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
			$fecha_inicio=date("Y-m-d H:i:s",$inicio);
			$fecha_fin=date("d-m-Y H:i:s",$fin); 
			$fecha_inicio_fin = date("Y-m-d H:i:s",$inicio_fin);
			
			$x_hora = strtotime($fecha_inicio);
			$c_hora = date('H',$x_hora);
		
			$business_Horarios = new business_Horario();
			$data_horario = new data_Horario();

			$data_horario -> setId_persona($id_persona);
			$data_horario -> setId_area($id_area);
			//$data_horario -> setColor($color);
			$data_horario -> setEstado(1);

			
			$ho_i = date("H",$inicio);
			$ho_f = date("H",$inicio_fin);

			if ($ho_i>$ho_f) {
				$zin = strtotime($fecha_fin."+ 1 days");
				$fecha_fin = date("d-m-Y H:i:s",$zin);
			}
			
		
			//echo($f);
			$cantDatosInsert=0;
			$cantDatosNoInsert=0;
			if ($fecha_fin >= $fecha_inicio) {
				//echo("verdad");
			}
			else {
				//echo("falso");
			}

			//echo("<br>".$fecha_fin." >= ".$fecha_inicio);
			while (true) {

				//echo("<br>".$fecha_fin." >= ".$fecha_inicio);
				//echo("<br>");
			
	
			 $auxiliar_h = strtotime($fecha_fin);
			 $auxiliar_f = strtotime($fecha_inicio);

			  if ($auxiliar_h  <=$auxiliar_f) {
			 	 break;
			 }

			//echo($fecha_inicio ."---".$fecha_inicio_fin."<br>");

			$anio_s = strtotime($fecha_inicio);
			$anio_f = strtotime($fecha_inicio_fin);
			$anio = date("Y",$anio_s);
			$mes = date("m",$anio_s);
			$dia = date("d",$anio_s);
			$hora = date("H",$anio_s);
			$hora_f = date("H",$anio_f);
			$minuto = date("i",$anio_s);
			$codigoColor ="";
			if ($hora>6 && $hora<=12) {
				$codigoColor ="#28a745";
				//echo("<br>".$hora."-");
			}elseif($hora>12 && $hora<20){
				$codigoColor = "#ffc107";
				//echo("<br>".$hora."-");
			}else {
				$codigoColor = "#007bff";
				//echo("<br>".$hora."-");
			}

			if ($color==1) {
				$codigoColor ="#dc3545";
			}

			if ($hora > $hora_f) {
				//echo("de und a para el otro");
			}
			//echo($color."<br>");
			//echo($codigoColor."<br>");
			//echo($color."<br>");
			// mañana  8 -12
			// tarde 	3-7.30
			// noche 	7.30 7.30 
			// reten 	7.30 7.30 
		
				
			$data_horario -> setHora_inicio(date_format(date_create($fecha_inicio), 'd-m-Y H:i:s') );
			$data_horario -> setHora_Fin(date_format(date_create($fecha_inicio_fin), 'd-m-Y H:i:s') );
			$data_horario -> setColor($codigoColor);
			if ($hora > $hora_f) {
				$fecha_fin_a = $data_horario -> getHora_Fin();
				$zinicio_r = strtotime($fecha_inicio_fin."+ 1 days");
				$fecha_inicio_fin_r = date("d-m-Y H:i:s",$zinicio_r);
				$data_horario -> setHora_Fin($fecha_inicio_fin_r);
			}

			
			
			$xinicio = strtotime($fecha_inicio."+ 1 days");			
			$fecha_inicio = date("d-m-Y H:i:s",$xinicio);

			$zinicio = strtotime($fecha_inicio_fin."+ 1 days");
			$fecha_inicio_fin = date("d-m-Y H:i:s",$zinicio);
			// comprovacion de existencia de horario

			//print_r($data_horario);

			//print_r($data_horario);
			//$part_hora=$data_horario -> getHora_inicio();

			$dt_horario = $business_Horarios -> fncBusinessComprovacionExistenciaHorario($anio,$mes,$dia,$id_persona,$id_area);
			//echo("-<br>".$anio."-".$mes."-".$dia."-<br>".$id_persona.$id_area);
			//echo(count($dt_horario)."<br>");
			//print_r($dt_horario);
			if (count($dt_horario)>=2){

				//if (($hora>=0 && $hora <=6) /*||  ($hora >= 19 && 23 >= $hora)*/ ) {
				//$bolres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
				//	$cantDatosInsert++;
					//echo("paso con 1");
				//}
				//else {
					$cantDatosNoInsert++;
				//}
				
			}else{
				$bolres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
				$cantDatosInsert++;
				//echo("paso con mas de 1");
			}
			//else {
				//$bolres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
			//	$cantDatosInsert++;
				//echo("paso con NINGUNIO");
				
				//print_r($data_horario);
				//echo(1);
			//}
			// comprovacion de existencia de horario

			//$bollres = $business_Horarios -> fncBusinessAgregarHorario($data_horario);
			
			
			//print_r($data_horario);
		
				
			}
			$arrayMensaje = array(
				array('insert' => $cantDatosInsert),
				array('noInsert' => $cantDatosNoInsert));
			echo json_encode($arrayMensaje);
			
		} else {
			echo("0");
		}
		
		



		
		
		//H:i:s
		//$date = new DateTime('2000-12-31');
		//$date->modify('+1 day');
	}

	function fnc_confirmarExistenciaDeFecha()
	{
		$validacion_post = true;
		if( !isset($_GET["idPersonalhorario"]) || $_GET["idPersonalhorario"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_area"]) || $_GET["id_area"] == "" ){ $validacion_post = false; }
		//if( !isset($_GET["color"]) || $_GET["color"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["fecha_eliminar"]) || $_GET["fecha_eliminar"] == "" ){ $validacion_post = false; }

		if ($validacion_post) {

			$fechaBuscar = strtotime($_GET["fecha_eliminar"]);
			$id_persona = $_GET["idPersonalhorario"];
			$id_area = $_GET["id_area"];
			//echo($fechaBuscar);

			 $anio = date("Y",$fechaBuscar);
			 $mes = date("m",$fechaBuscar);
			 $dia = date("d",$fechaBuscar);
			//  echo("<br>");
			//  echo($anio);
			//  echo("<br>");
			//  echo( $mes);
			//  echo("<br>");
			//  echo($dia);

			$business_Horarios = new business_Horario();
			$dtListarHorario = 
			$dt_Horarios = $business_Horarios -> fncBusinessComprovacionExistenciaHorario(
				$anio,
				$mes,
				$dia,
				$id_persona,
				$id_area
			);

			//print_r($dt_Horarios);
		
			echo json_encode($dt_Horarios, JSON_NUMERIC_CHECK);
			# code...
		}else {
			# code...
			echo("0");
		}
	


		
	}

	function fnc_eliminarHorarioExistente()
	{
		$validacion_post = true;
		if( !isset($_GET["id_horario"]) || $_GET["id_horario"] == "" ){ $validacion_post = false; }

		if ($validacion_post) {
			# code...
			$business_Horarios = new business_Horario();
			$bol_Horarios = $business_Horarios -> fncBusinessModificarEstadoHorario($_GET["id_horario"]);
			if ($bol_Horarios) {
				echo("1");
			}else {
				echo("0");
			}
			//fncBusinessModificarEstadoHorario
		} else {
			echo("0");
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