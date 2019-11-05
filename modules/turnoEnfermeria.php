<?php
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Persona.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Persona.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Especializacion.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Especializacion.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Area.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Usuario.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Usuario.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Area.php');
	//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_TipoPersona.php');
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Turno.php');
	
	//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessclinica/business_Usuario.php');
	//include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/data/data_Usuario.php');



    // VERIFICAR PERMISO DEL MODULO
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
			
			case 'index':
					view_Index();
				break;
			case 'index2':
					view_Index2();
				break;
			case 'editar':
					view_AgregarEditar();
				break;
			case 'generar':
					view_Generar();
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

			case '6x8RlHMFSK': 
					fnc_iniciarTurnoEnfermera();
				break;
			case 'J9Y0B7rh86':
					fnc_VerificarTurnoPendiente();
				break;
			case 'xZ6rQTOHxk':
					fnc_modificarTurno();
				break;
			case 'uctftGr4Jm':
					fnc_agregarTurno();
				break;
			case 'eLXzIh5jMU':
					fnc_listarTurnosEnfermera();
				break;
			case 'xP6riiTOHxk':
					fnc_listarTurnosEnfermera2();
				break;
			case 'xFRiiTOHxk':
					fnc_listarTurnosEnfermeraReloj();
				break;
			case 'qRRTTOHxk':
					fnc_terminarTurnoEnfermera();
				break;
			case '4GTYy67':
					fnc_AgregarNuevoTurnoEnfermera();
				break;
			case 'GFHTER56':
					fnc_listarPersonasTipoEnfermera();
				break;
			case 'FGERT567':
					fnc_listarReporteEnfermera();
				break;
			case 'FtGht567':
					fnc_listarReporteEnfermeraConsolidado();
				break;
			default:
				header('Location: ../errors/404.php?sesion='.$sex);  
				break;
		}

	}else{
		header('Location: ../errors/404.php?sesion='.$sex);   
	}

	//===========================================================================
	//	VISTAS   fnc_AgregarPersonaRegistrarEvento
	//===========================================================================

	function view_Index()
	{
		@session_start();

		//echo(md5("123456"));
        $menu_activo = "Turno";
		$menu_open = "Enfermeria";
		include('../views/includes/header.php');
		include('../views/mod_turnoEnfermeria/index.php');
		include('../views/includes/footer.php');
	}

	function view_Index2()
	{
		@session_start();

		//echo(md5("123456"));
        $menu_activo = "Turnog";
		$menu_open = "Enfermeria";
		include('../views/includes/header.php');
		include('../views/mod_turnoEnfermeria/index2.php');
		include('../views/includes/footer.php');
	}


	function view_gestionarPersona(){
		@session_start();
		$menu_activo = "gestionPersonal";
		$menu_open = "gestionPersonal";
		include('../views/includes/header.php');
	    include('../views/mod_persona/gestion.php');
	    include('../views/includes/footer.php');
	}
	function view_Generar()
	{
		
	}

	function view_AgregarEditar()
	{
        
	}


	//===========================================================================
	//	FUNCIONES
	//===========================================================================

	

	function fnc_listarReporteEnfermera(){
		@session_start();
		//$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$idUsuario = $_GET["idUsuario"];
		$inicio = $_GET["idInicio"];
		$fin = $_GET["idFin"];

		// echo($idUsuario);
		// echo($inicio);
		// echo($fin);
		$business_Persona = new business_Persona();
		$dtListarReporteEnfermera =  $business_Persona -> fncBusinesslistarReporteEnfermera($idUsuario,$inicio,$fin);
		
		$json_data = array(
	
			"data" => $dtListarReporteEnfermera   // total data array
		);
		echo json_encode($json_data);
	}

	function fnc_listarReporteEnfermeraConsolidado(){
		@session_start();
		//$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		//$idUsuario = $_GET["idUsuario"];
		$inicio = $_GET["idInicio"];
		$fin = $_GET["idFin"];

		// echo($idUsuario);
		// echo($inicio);
		// echo($fin);
		$business_Persona = new business_Persona();
		$dtListarReporteEnfermera =  $business_Persona -> fncBusinesslistarReporteEnfermeraConsolidado($inicio,$fin);
		
		$json_data = array(
	
			"data" => $dtListarReporteEnfermera   // total data array
		);
		echo json_encode($json_data);
	}
	function fnc_listarPersonasTipoEnfermera(){
		
		$business_Persona = new business_Persona();
		$dtListarPersonas =  $business_Persona -> fncBusinesslistarPersonasTipoEnfermera();
		//echo json_encode($dtListarPersonas,JSON_UNESCAPED_UNICODE);
		echo json_encode($dtListarPersonas,JSON_UNESCAPED_UNICODE);
	}
	function fnc_AgregarNuevoTurnoEnfermera(){
		$usuario =  $_GET["usuario"];
		$password = md5( $_GET["password"]);
		$data_Usuario 					= new data_Usuario;
		$data_Usuario->setUsuario($usuario);
		$data_Usuario->setContrasena($password);
		$business_Usuario 				= new business_Usuario();
		$bussines_turno = new business_Turno();
		$dtAutenticarUsuario	 	= $business_Usuario -> fncBusinessAutenticarUsuario($data_Usuario);
		//print_r($dtAutenticarUsuario);
		

		if (count($dtAutenticarUsuario)) {
			# code...
			
			$dataTurnoPendiente =  $bussines_turno -> fnc_BusinessbuscarTurnoPendiente($dtAutenticarUsuario[0]["id_usuario"]);
			if ($dataTurnoPendiente[0]["Pendiente"]=="0") {
				
	
				$bolAgrear = $bussines_turno ->fnc_insertarNuevoTurno($dtAutenticarUsuario[0]["id_usuario"]);
				if ($bolAgrear) {
					echo("1");
				}else{
					echo("2"); // NO SE AGREGO .
				}
			}else{
				echo("3");  // TIENE TRUNBIO PENDIENTE
	
			}
		}
		else{
			echo("10");
		}
		
		
	}
	function fnc_terminarTurnoEnfermera(){
		$usuario = $_GET["usuario"];
		$password = $_GET["password"];
		$idLog =$_GET["idLog"];

		$business_Usuario 				= new business_Usuario();
		$data_Usuario 					= new data_Usuario;

		$data_Usuario->setUsuario($usuario);
		$data_Usuario->setContrasena(md5($password) );

		$dtAutenticarUsuario	 	= $business_Usuario -> fncBusinessAutenticarUsuario($data_Usuario);

		if (count($dtAutenticarUsuario)){

			$bussines_turno = new business_Turno();
			
			$dataregistro = $bussines_turno -> fnc_buscarRegistro($idLog,$dtAutenticarUsuario[0]['id_usuario']);

			if ( is_null( $dataregistro[0]['FinTurno'])) {
				$bolModifico = $bussines_turno ->fnc_ActualizarTurno2($idLog,$dtAutenticarUsuario[0]['id_usuario']);
				//echo($dtAutenticarUsuario[0]['id_usuario'].' '.$idLog);
				if ($bolModifico) {
					echo("1");
				//	print_r($dtAutenticarUsuario);
				}
				else{
					echo("2");
				}
			}else{
				echo("4");
			}
			
			// $bussines_turno = new business_Turno();
			// $bolModifico = $bussines_turno ->fnc_ActualizarTurno($idLog);
		}else{
			echo("0");
		}
		
	}
	function fnc_modificarTurno(){

		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$idLog = $_GET['idLog'];
		$accion = $_GET['T'];
		
		$bussines_turno = new business_Turno();

		$data_turnos = $bussines_turno -> fnc_BusinessbuscarTurnoPendiente($idUsuario);
		
		
			
			if ($data_turnos[0]['Pendiente']=='1' && $idLog==$data_turnos[0]['id_log'] ) {
				$idLog = $data_turnos[0]['id_log'];
				$bolModifico = $bussines_turno ->fnc_ActualizarTurno($idLog);
				if ($bolModifico) {
					echo('1');
				}else{
					echo('3');
				}
			} else{
				echo("0");
			}

	}
	function fnc_agregarTurno(){

		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$idLog = $_GET['idLog'];
		$accion = $_GET['T'];
		
		$bussines_turno = new business_Turno();

		$data_turnos = $bussines_turno -> fnc_BusinessbuscarTurnoPendiente($idUsuario);
		
		
			
			if ($data_turnos[0]['Pendiente']=='0') {
				$idLog = $data_turnos[0]['id_log'];
				$bolAgrear = $bussines_turno ->fnc_insertarNuevoTurno($idUsuario);
				if ($bolAgrear) {
					echo('1');
				}else{
					echo('3');
				}
			} else{
				echo("0");
			}

	}
	function fnc_VerificarTurnoPendiente()
	{
		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		
		$bussines_turno = new business_Turno();
		$data_turnos = $bussines_turno -> fnc_BusinessbuscarTurnoPendiente($idUsuario);
		$horaServidor = $bussines_turno -> fnc_horaServidor();



		if (count($data_turnos)==0) {
			$json_data = array(
	
				"tiempo" => '0',
				'reloj'	=> '0',
				'idLog' => '0'
				
			   // total data array
			);
			echo json_encode($json_data);
		}
		else{
			if ($data_turnos[0]['Pendiente']=='1') {
				
				$inicioFecha = strtotime($data_turnos[0]['InicioTurno']);
				$idLog = $data_turnos[0]['id_log'];
				$hoy = strtotime($horaServidor[0]['Fecha']);
				$restatiempo = $hoy -$inicioFecha;
				$json_data = array(
	
					'tiempo' => $restatiempo,
					'reloj'	=> '1',
					'idLog' => $idLog

				   // total data array
				);
				echo json_encode($json_data);

			} else {
				$json_data = array(
	
					"tiempo" => '0',
					'reloj'	=> '0',
					'idLog' => '0'
					
				   // total data array
				);
				echo json_encode($json_data);
			}
			
		}
		

		//print_r($data_turnos);

		//echo json_encode($data_turnos);
	}
	function fnc_listarTurnosEnfermera(){
		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$bussines_turno = new business_Turno();
		$data_turnos = $bussines_turno -> fncBusinessListarturno($idUsuario);
		
		$json_data = array(
	
			"data" => $data_turnos   // total data array
		);
		echo json_encode($json_data);
	}

	function fnc_listarTurnosEnfermera2(){
		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$bussines_turno = new business_Turno();
		$data_turnos = $bussines_turno -> fncBusinessListarturno2();
		
		$json_data = array(
	
			"data" => $data_turnos   // total data array
		);
		echo json_encode($json_data);
	}
	function fnc_listarTurnosEnfermeraReloj(){
		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];
		$bussines_turno = new business_Turno();
		$data_turnos = $bussines_turno -> fncBusinessListarturno2();
		
	
		echo json_encode($data_turnos);
	}

	function fnc_iniciarTurnoEnfermera(){
		@session_start();
		$idUsuario = $_SESSION['usuario']["ses_UsuarioId"];


	}

	function fnc_listarPersonasPorArea()
	{
		$id_area = $_GET["id_area"];
		$business_Persona = new business_Persona();
		$dtListarPersonas =  $business_Persona -> fncBusinessListarPersonaPorArea($id_area);
		echo json_encode($dtListarPersonas,JSON_UNESCAPED_UNICODE);

	}
	
	
	function fnc_camposAgregarPersona()
	{
		//$business_Persona  = new business_Persona();
		$business_Area = new business_Area();
		$business_Especializacion = new business_Especializacion();
		$business_TipoPersona = new business_TipoPersona();

		//$dt_Persona = $business_Persona - 
		$dt_Area = $business_Area -> fncBusinessListarArea();
		$dt_TipoPersona = $business_TipoPersona -> fncBusinessListarTipoPersona();
		$dt_Especializacion = $business_Especializacion -> fncBusinessListarEspecializacion();

		$json_data = array(
	
			"area" => $dt_Area,
			"tipoPersona" => $dt_TipoPersona,
			"especializacion" => $dt_Especializacion,    // total data array
		);
		echo json_encode($json_data);

		//fncBusinessListarEspecializacion
		//fncBusinessListarTipoPersona
		//fncBusinessListarTipoPersona
		//fncBusinessListarArea

	}
	function fnc_listarPersonaPorIdArea()
	{
		$id_area = $_GET["id_area"];
		$business_Persona = new business_Persona();
		$dtListarPersonas =  $business_Persona -> fnc_listarPersonaPorIdArea($id_area);

		$json_data = array(
	
			"data" => $dtListarPersonas   // total data array
		);
		echo json_encode($json_data);
	}
	function fnc_AutenticarUsuario()
	{
		// @session_start();
		// //$sex = $_GET['sesion'];
		// //$url_parametros['sesion'] = $sex;

		// $business_Usuario = new business_Usuario();
		// $dtAutenticarUsuario = $business_Usuario -> fncBusinessAutenticarUsuario($_SESSION['codper'], $_SESSION['codigo']);

		// if (count($dtAutenticarUsuario) > 0){

		// 	// if ( $dtAutenticarUsuario[0]['bitActivo'] == true){
		// 		$_SESSION['usuario']["ses_USRId"] 									= $dtAutenticarUsuario[0]['USRId'];
		// 		$_SESSION['usuario']["ses_SISid"] 									= $dtAutenticarUsuario[0]['SISid'];
		// 		$_SESSION['usuario']["ses_UsuarioNombre"] 					= $dtAutenticarUsuario[0]['varUsuarioNombre'];
		// 		// $_SESSION['usuario']["ses_UsuarioNombre"] 				= $dtAutenticarUsuario[0]['varNombres'].' '.$dtAutenticarUsuario[0]['varApellidos'];
		// 		// $_SESSION['usuario']["ses_IdPtaDependenciaFijo"] 	=	$dtAutenticarUsuario[0]['IdPtaDependenciaFijo'];
		// 		// $_SESSION['usuario']["ses_NombreDependencia"] 		=	$dtAutenticarUsuario[0]['NombreDependencia'];
		// 		$_SESSION['usuario']["ses_varNivel"] 								=	$dtAutenticarUsuario[0]['varNivel'];

		// 		// $_SESSION['usuario']["ses_ModEgresado"] 						=	$dtAutenticarUsuario[0]['ModEgresado'];
		// 		// $_SESSION['usuario']["ses_ModEmpresa"] 							=	$dtAutenticarUsuario[0]['ModEmpresa'];
		// 		// $_SESSION['usuario']["ses_ModSectorOcupacional"] 		=	$dtAutenticarUsuario[0]['ModSectorOcupacional'];

		// 		// $_SESSION['usuario']["ses_ModEgresado"] 						=	1;
		// 		// $_SESSION['usuario']["ses_ModEmpresa"] 							=	1;
		// 		// $_SESSION['usuario']["ses_ModSectorOcupacional"] 		=	0;

		// 		$_SESSION['usuario']["ses_UsuarioLogeado"] 				= true;

		// 		$_SESSION['mensaje']["ses_MensajeEstado"] 				= 0;
		// 		$_SESSION['mensaje']["ses_MensajeTipo"] 					= "";
		// 	}else{
		// 		$_SESSION['usuario']["ses_UsuarioLogeado"] = false;
		// 		$_SESSION['mensaje']["ses_MensajeEstado"] 	= 1;
		// 		$_SESSION['mensaje']["ses_MensajeTipo"] = "error";
		// 		$_SESSION['mensaje']["ses_MensajeDescripcion"] = "Usuario se encuentra inactivo";
		// 		// header('Location: ../index.php');
		// 	}

		// // }else{
		// // 	$_SESSION['usuario']["ses_UsuarioLogeado"] = false;				
		// // 	$_SESSION['mensaje']["ses_MensajeEstado"] = 1;
		// // 	$_SESSION['mensaje']["ses_MensajeTipo"] = "error";
		// // 	$_SESSION['mensaje']["ses_MensajeDescripcion"] = "Error en inicio de sesión";
		// // 	// header('Location: ../index.php');
		// // }
		// 	// echo $_SESSION['usuario']["ses_USRId"];
		// 	// exit();
		//header('Location: ../index.php?' . http_build_query($url_parametros)); 

		if( isset($_POST["usuario"]) and isset($_POST["contrasena"]) ){
			@session_start();

			$post_usuario 		= $_POST["usuario"];
			$post_contrasena 	= $_POST["contrasena"];

			$business_Persona = new business_Persona;
			//$dtBuscarUsuario = $data_Persona -> fncBusinessAutenticarUsuario();
			$data_Persona= new data_Persona();
			$data_Persona->setVarUsuario($post_usuario);
			$data_Persona->setVarClave(md5($post_contrasena));


			
			$dtAutenticarUsuario = $business_Persona -> fncBusinessAutenticarUsuario($data_Persona);
			if (count($dtAutenticarUsuario)){

				if ( $dtAutenticarUsuario[0]['Estado'] == 1){
					$_SESSION['usuario']["ses_UsuarioNombre"] 				=$dtAutenticarUsuario[0]['varNombres'].' '.$dtAutenticarUsuario[0]['varApellidos'];
					$_SESSION['usuario']["ses_TipoUsuario"] 				=$dtAutenticarUsuario[0]['TipoUsuario'];
					$_SESSION['usuario']["ses_Usuario"] 					=$dtAutenticarUsuario[0]['Usuario'];
					$_SESSION['usuario']["ses_IdUsuario"] 					=$dtAutenticarUsuario[0]['IdUsuario'];
					$_SESSION['usuario']["ses_UsuarioLogeado"] 				=true;

					$_SESSION['mensaje']["ses_MensajeEstado"] 	= 0;
					$_SESSION['mensaje']["ses_MensajeTipo"] = "";

					//echo($_SESSION['usuario']["ses_UsuarioNombre"]);

					header('Location: ../modules/index.php');
				}else{
					$_SESSION['usuario']["ses_UsuarioLogeado"] = false;
					$_SESSION['mensaje']["ses_MensajeEstado"] 	= 1;
					$_SESSION['mensaje']["ses_MensajeTipo"] = "error";
					$_SESSION['mensaje']["ses_MensajeDescripcion"] = "Usuario se encuentra inactivo";
					header('Location: ../views/website/login.php');
					//echo("no activo");
				}
					
			}else{
				$_SESSION['usuario']["ses_UsuarioLogeado"] = false;				
				$_SESSION['mensaje']["ses_MensajeEstado"] = 1;
				$_SESSION['mensaje']["ses_MensajeTipo"] = "error";
				$_SESSION['mensaje']["ses_MensajeDescripcion"] = "Error en inicio de sesión";
				header('Location: ../views/website/login.php');
			}
			//header('Location: ../index.php');
			//echo("no encontro");
		}else{
			//header('Location: ../index.php');
			//echo("no esta");
		}
	
	}
	function fnc_buscarPersonaporApellido()
	{
		@session_start();
		
		//$apellidoPaterno = $_GET['apellidoPaterno'];
		// $apellidoMaterno = $_GET['apellidoMaterno'];
		// $dni =$_GET['dni'];
		// $nombre = $_GET['nombre'];

		if ( isset($_GET['apellidoPaterno'])) {
			$apellidoPaterno = $_GET['apellidoPaterno'];
		}else {
			$apellidoPaterno = "";
		}

		if ( isset($_GET['apellidoMaterno'])) {
			$apellidoMaterno = $_GET['apellidoMaterno'];
		}else {
			$apellidoMaterno = "";
		}

		if ( isset($_GET['dni'])) {
			$dni = $_GET['dni'];
		}else {
			$dni = "";
		}

		if ( isset($_GET['nombre'])) {
			$nombre = $_GET['nombre'];
		}else {
			$nombre = "";
		}

		$businessPersona = new business_Persona();
		$dtPersona = $businessPersona -> fncBusinessConsultarPorApellido($apellidoPaterno,$apellidoMaterno,$dni,$nombre);
		$contador =0;
		$array = array();
		foreach ($dtPersona as $value) {
			$array[$contador]["Dni"] =  $value["Dni"];
			$array[$contador]["Nombre"] =  $value["Nombre"];
			$array[$contador]["ApePat"] = ($value["ApePat"]);
			$array[$contador]["ApeMat"] =  ($value["ApeMat"]);
			$array[$contador]["NombreTipo"] = ($value["NombreTipo"]);
			$array[$contador]["IdPersona"] = $value["IdPersona"];
			$array[$contador]["Estado"] = $value["Estado"];
			$array[$contador]["Celular"] = $value["Celular"];
			$array[$contador]["Correo"] = $value["Correo"];
			$contador++;

		}
		

		
		//echo json_encode($dtPersona, JSON_UNESCAPED_UNICODE);

	//	print_r($dtPersona);
		// $response = array();
        //  array_push($response, ($dtPersona));
		header('Content-Type: application/json; charset=utf-8');
		//print_r(utf8_converter($array)) ;
		 // var_dump($dtPersona);
		
		echo json_encode (utf8_converter($array));
		  //echo($nombre."*".$apellidoPaterno."*".$apellidoMaterno."*".$dni);

		//print_r($dtPersona);

	}
	function utf8_converter($array){
		array_walk_recursive($array, function(&$item, $key){
		if(!mb_detect_encoding($item, 'utf-8', true)){
		$item = utf8_encode($item);
		}
		});

		return $array;
	}
	function jsonRemoveUnicodeSequences( $struct )
	{
		return preg_replace( "/\\\\u([a-f0-9]{4})/e", "iconv('UCS-4LE','UTF-8',pack('V', hexdec('U$1')))", json_encode( $struct ) );
	}

	function fnc_AgregarPersonaRegistrarEvento()
	{
		@session_start();
		//$url_parametros['sesion'] = $sex;
		$validacion_post = true;

		if( !isset($_GET["dni"]) || $_GET["dni"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["nombre"]) || $_GET["nombre"] == "" ){ $validacion_post = false; }		
		if( !isset($_GET["ApePat"]) || $_GET["ApePat"] == "" ){ $validacion_post = false; }
		//if( !isset($_POST["tipoPersona"]) || $_POST["tipoPersona"] == "" ){ $validacion_post = false; }
		//if( !isset($_POST["correo"]) || $_POST["correo"] == "" ){ $validacion_post = false; }
		//if( !isset($_GET["celular"]) || $_GET["celular"] == "" ){ $validacion_post = false; }		
		//if(	!isset($_POST["password"]) || $_POST["password"]==""){ $validacion_post = false;}
		if(	!isset($_GET["estadoPersona"]) || $_GET["estadoPersona"]==""){ $validacion_post = false;}
		//if(	!isset($_POST["usuario"]) || $_POST["usuario"]==""){ $validacion_post = false;}
		//if(	!isset($_POST["avatar"]) || $_POST["avatar"]==""){ $validacion_post = false;}
		// if( !isset($_POST["direccion"]) ){ $validacion_post = false; }
		// if( !isset($_POST["telefono"]) ){ $validacion_post = false; }
		// if( !isset($_POST["activo"]) ){ $validacion_post = false; }
		
		$_SESSION['mensaje']["ses_MensajeEstado"] = 1;	
		$_SESSION['mensaje']["ses_MensajeTipo"] 	= "";				
		if ($validacion_post == true){

			$data_Persona = new data_Persona();
			$data_Persona->setVarDni( str_replace(" ","",$_GET["dni"]) );
			$data_Persona->setVarNombre( strtoupper($_GET["nombre"] ));
			$data_Persona->setVarApellido( strtoupper($_GET["ApePat"])." ".strtoupper($_GET["ApeMat"] ));


			$data_Persona->setIdTipoPersona( 2 );
			$data_Persona->setVarCorreo( strtoupper($_GET["correo"] ));
			$data_Persona->setIntCelular( $_GET["celular"] );
			//$data_Persona->setVarClave( md5($_POST["password"]) ); 
			$data_Persona->setVarClave(md5('123456')); 
			$data_Persona->setVarEstado( $_GET["estadoPersona"] );
			$data_Persona->setVarUsuario(str_replace(" ","",$_GET["dni"]));
			$data_Persona->setVarAvatar(date("Y-m-d H:i:s").'jpg');

			$data_Persona->setApeMat(strtoupper($_GET["ApeMat"]));
			$data_Persona->setApePat(strtoupper($_GET["ApePat"]));
			$data_Persona->setEstamento(strtoupper($_GET["estamento"]));
			$data_Persona->setFechaFinContrato($_GET["fechaFin"]);
			$data_Persona->setFechaInicioContrato($_GET["fechaInicio"]);
			$data_Persona->setDependencia(strtoupper($_GET["dependencia"]));
			$data_Persona->setUnidadOrganica(strtoupper($_GET["unidadOrganica"]));
			$data_Persona->setCargo(strtoupper($_GET["cargo"]));
			$data_Persona->setDependenciaCargo(strtoupper($_GET["dependenciaCargo"]));
			$data_Persona->setVarUsuarioCreador($_SESSION['usuario']["ses_IdUsuario"]);
			
			$data_Persona->setVarDireccionIP(fncObtenerIpAdress());
			$data_Persona->setVarDireccionMAC(fncObtenerMac());
			$data_Persona->setVarNavegadorWeb(fnc_ObtenerNavegador());

			$business_PersonaInterna = new business_Persona();

			$dtListaInterna = $business_PersonaInterna -> fncBusinessConsultarDniInterno($data_Persona->getVarDni());
			if (count($dtListaInterna)) {
	
				 	$data_Persona->	setIdTipoPersona( 1 );
			}
	
			
			$business_Persona = new business_Persona();
			$dtListaDni = $business_Persona -> fncBusinessConsultarPorDni($data_Persona->getVarDni());
			
			if (count($dtListaDni)>0 /*|| count($dtListaDniUsuario)>0*/) {
				
				// $_SESSION['mensaje']["ses_MensajeTipo"] 	= "incorrecto";	
				// $_SESSION['mensaje']["ses_MensajeDescripcion"] 	= "Dni o Usuario ya existe registrado";
				// $url_parametros['v'] = 'index';
			 	// header('Location: ../modules/persona.php?' . http_build_query($url_parametros)); 
				 $respuesta["respuesta"]["tipo"]=0;
				 $respuesta["respuesta"]["mensaje"]="DNI ya existe ";
				 header('Content-Type: application/json; charset=utf-8');
		    	 echo json_encode (utf8_converter($respuesta));
			}
			else{

			

				//print_r($data_Persona);
				$bolAgregarPersona = $business_Persona -> fncBusinessAgregar($data_Persona);

				
					

				if ($bolAgregarPersona) {

						$data_Usuario = new data_Usuario();
						$data_Usuario -> setUsuario(str_replace(" ","",$_GET["dni"]));
						$data_Usuario -> setClave(md5($_GET["dni"]));
						$data_Usuario -> setIdRol(3);
						$data_Usuario -> setVarNombres(strtoupper($_GET["nombre"] ));
						$data_Usuario -> setvarApellidos( strtoupper($_GET["ApePat"])." ".strtoupper($_GET["ApeMat"] ));
						$data_Usuario -> setEstado(1);
						$data_Usuario -> setCambioContrasena(1);
						$data_Usuario -> setUsuarioCreador($_SESSION['usuario']["ses_IdUsuario"]);
						$data_Usuario -> setDireccionIp(fncObtenerIpAdress());
						$data_Usuario -> setDireccionMac(fncObtenerMac());
						$business_Usuario	= new business_Usuario();
						$bolAgregarUsuario = $business_Usuario -> fncBusinessAgregarUsuario($data_Usuario);

						//echo("paso por ahi");
					

					$business_Persona = new business_Persona();
					$dtListaDni = $business_Persona -> fncBusinessConsultarPorDni($data_Persona->getVarDni());


					$data_Registro = new Registro();
					$business_Registro = new business_Registro();

					$data_Registro -> setIdEvento($_GET["IdEvento"]);
					$data_Registro -> setIdPersona($dtListaDni[0]["IdPersona"]);
					$data_Registro -> setVarEstado(1);
					if( !isset($_GET["estamento"]) || $_GET["estamento"] == "" ){
						$data_Registro -> setVarDependencia("EXTERNO");
					}else{
						$data_Registro -> setVarDependencia(strtoupper($_GET["estamento"]));
					}
					
					$bolAgregarRegistro = $business_Registro -> fncBusinessAgregar($data_Registro);
					
					if ($bolAgregarRegistro) {

						$respuesta["respuesta"]["tipo"]=1;
						$respuesta["respuesta"]["mensaje"]="Se Agregó y se registró al Evento ";
						header('Content-Type: application/json; charset=utf-8');
						echo json_encode (utf8_converter($respuesta));
					}else {
						$respuesta["respuesta"]["tipo"]=1;
						$respuesta["respuesta"]["mensaje"]="Se Agregó pero No se registró ";
						header('Content-Type: application/json; charset=utf-8');
						echo json_encode (utf8_converter($respuesta));
					}
					
				}else{
					$respuesta["respuesta"]["tipo"]=0;
					$respuesta["respuesta"]["mensaje"]="Ocurrió un Problema";
					header('Content-Type: application/json; charset=utf-8');
					echo json_encode (utf8_converter($respuesta));
				}
		
			}
			

		
		}else{

			$respuesta["respuesta"]["tipo"]=0;
			$respuesta["respuesta"]["mensaje"]="Campos requeridos no enviados";
			header('Content-Type: application/json; charset=utf-8');
		    echo json_encode (utf8_converter($respuesta));
		
		}	
	}

	function fnc_Agregar()
	{
		@session_start();
		//$url_parametros['sesion'] = $sex;
		$validacion_post = true;

		if( !isset($_GET["id_persona"]) || $_GET["id_persona"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_txtDniPersona"]) || $_GET["id_txtDniPersona"] == "" ){ $validacion_post = false; }		
		if( !isset($_GET["id_txtNombrePersona"]) || $_GET["id_txtNombrePersona"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_txtApePatPersona"]) || $_GET["id_txtApePatPersona"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_txtApeMatPersona"]) || $_GET["id_txtApeMatPersona"] == "" ){ $validacion_post = false; }
		if( !isset($_GET["id_selectArea"]) || $_GET["id_selectArea"] == "" ){ $validacion_post = false; }		
		if(	!isset($_GET["id_selectSexo"]) || $_GET["id_selectSexo"]==""){ $validacion_post = false;}
		if(	!isset($_GET["id_selectEspecializacion"]) || $_GET["id_selectEspecializacion"]==""){ $validacion_post = false;}
		if(	!isset($_GET["id_selectTipoPersona"]) || $_GET["id_selectTipoPersona"]==""){ $validacion_post = false;}
			
				
		if ($validacion_post == true){
			//echo ("1");

			$business_Persona= new business_Persona();
			$data_Persona = new data_Persona();
			$data_Persona -> setId_persona($_GET["id_persona"]);
			$data_Persona -> setDni($_GET["id_txtDniPersona"]);
			$data_Persona -> setNombre($_GET["id_txtNombrePersona"]);
			$data_Persona -> setApePat($_GET["id_txtApePatPersona"]);
			$data_Persona -> setApeMat($_GET["id_txtApeMatPersona"]);
			$data_Persona -> setArea($_GET["id_selectArea"]);
			$data_Persona -> setSexo($_GET["id_selectSexo"]);
			$data_Persona -> setId_especializacion($_GET["id_selectEspecializacion"]);
			$data_Persona -> setId_tipoPersona($_GET["id_selectTipoPersona"]);
			$data_Persona -> setEstado(1);

			$dataPersona = $business_Persona ->fnc_buscarPersonaPorDni($data_Persona -> getDni());

			if ($_GET["id_persona"]=="0") {
				//agregar

				if (count($dataPersona)>0) {
					echo("2");
				}else {
					$bolean=$business_Persona ->fnc_bussinesInsertarNuevaPersona($data_Persona);
					if ($bolean) {
						echo("1");
					}else {
						echo("0");
					}
				}

			} else {
			
				$dataPersona = $business_Persona ->fnc_buscarPersonaPorDni($data_Persona -> getDni());
				if (isset($dataPersona[0]["id_persona"])) {
					$vConsulta=$dataPersona[0]["id_persona"];
				} else {
					$vConsulta=0;
				}
			
				$vinsertada = $data_Persona -> getId_persona();

				// echo("<br>".$vConsulta."<br>");
				// echo($vinsertada."<br>");
				if ($vConsulta == $vinsertada ) {
					
					$bolean=$business_Persona ->fnc_BusinessModificarPersona($data_Persona);
					if ($bolean) {
						echo("1");
					} else {
						echo("0");
					}
					

				}else {
				
					if ($vConsulta==0) {
						$bolean=$business_Persona ->fnc_BusinessModificarPersona($data_Persona);
						if ($bolean) {
							echo("1");
						} else {
							echo("0");
						}
						
					} else {
						echo("3");
					}
					
					
				}

				
				
				
			}
			

		

		}else{
			echo("0");
		}

	}

	function fnc_eliminarUsuario()
	{
		@session_start();
		$IdPersona= str_replace(" ","",$_GET["id"]);
		$business_Persona= new business_Persona();
		$bolean=$business_Persona ->fnc_BusinessEliminarPersona($IdPersona);
		if ($bolean) {
			echo("1");
		}else {
			echo("0");
		}
	}

?>