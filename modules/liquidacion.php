<?php 

  
	include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Liquidacion.php');
	//require 'PHPExcel.php';
    
    


    



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
					fnc_listarEspecilidad();
				break;
			case 'xZ6rQTOHxk':
					fnc_listarLiquidacion();
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
		$menu_activo = "liquidacion";
		
		//$business_Evento = new business_Liquidacion();
        



		include('../views/includes/header.php');
		include('../views/mod_liquidacion/index.php');
		include('../views/includes/footer.php');
	}



	//===========================================================================
	//	FUNCIONES
	//===========================================================================


	function fnc_listarEspecilidad(){
		//@session_start();
        //$menu_activo = "horarioEspecialidad";
		$business_Liquidacion = new business_Liquidacion();
		$dtListarLiquidacion = $business_Liquidacion -> fncBusinessListarEspecialidades();
		// $json_data = array(
	
		// 	"data" => $dtListarCampana  
		// );
		echo json_encode($dtListarLiquidacion);
	}
	function fnc_listarLiquidacion(){
		//@session_start();
		//$menu_activo = "horarioEspecialidad";
		$nombreEspecialidad = $_GET["l"];
		$business_Liquidacion = new business_Liquidacion();
		$dtListarLiquidacion = $business_Liquidacion -> fncBusinessListarLiquidacion($nombreEspecialidad);

		$listDifEspecialidad = $business_Liquidacion -> fncBusinessListarLiquidacionEspecialidad();
		$listDifCodigo = $business_Liquidacion -> fncBusinessListarLiquidacionCodigo();
		$listDifCodigoPaquete = $business_Liquidacion -> fncBusinessListarLiquidacionCodigoPaquete($nombreEspecialidad);



		//$listDifEspecialidad = array(["CARDIOLOGIA",60,"p"],["CIRUGIA DE TÓRAX Y CARDIOVASCULAR",50,"s"]);
		//$listDifCodigo = array(["ANPA1016",60,"p"],["ANPA1037",50,"P"]);
		// $json_data = array(
	
		// 	"data" => $dtListarCampana   
		// );

		$datos = array();

		$NUMEROES = 0;
		$NUMEROCOD = 0;

		$sumaCantidad=0;
		$subTotalFinal =0;
		$propietarioTotal =0;
		$socioTotal =0;
		$impuestoTotal =0;
		$totalNeto =0;


		//columnas
		
		

		foreach ($dtListarLiquidacion as $k => $valueLiquidacion) {

			foreach ($listDifCodigoPaquete as $h => $valueListDifCodigoPaquete) {
				if ($valueListDifCodigoPaquete["codigo"]== $dtListarLiquidacion[$k]["CODIGO"] ) {
					$dtListarLiquidacion[$k]["PRECIO"]=$valueListDifCodigoPaquete['precio'];
					$dtListarLiquidacion[$k]["TOTAL"]= floatval($valueListDifCodigoPaquete['precio'])* floatval($dtListarLiquidacion[$k]["CANTIDAD"]);
				}
			
			}


			$cantidad 		= $dtListarLiquidacion [$k]['CANTIDAD'];
			$precio 		= $dtListarLiquidacion [$k]['PRECIO'];
			$subTotal 		= $dtListarLiquidacion [$k]['TOTAL'];
			$AuxForm 		= 65;
			$auxCal			= 'p';
			$neto			= 0.0;
			$impuesto 		= 0.0;

			foreach ($listDifEspecialidad as $key => $valueEspecialidad) {
				if ($valueEspecialidad["nombre"]== $dtListarLiquidacion[$k]["ESPECIALIDAD"]) {
					$NUMEROES++;
					$AuxForm 		= $valueEspecialidad["form"];
					$auxCal			= $valueEspecialidad["operacion"];
				}
			
			
			}

			foreach ($listDifCodigo as $h => $valueListDifCodigo) {
				if ($valueListDifCodigo["codigo"]== $dtListarLiquidacion[$k]["CODIGO"] ) {
					# code...
					$NUMEROCOD++;
					
					$AuxForm 		= $valueListDifCodigo["form"];
					$auxCal			= $valueListDifCodigo["operacion"];
				}
			
			}

			//calculo de registros
			$propietario = 0.0;
			$socio = 0.0;
			$operacion = '';
			if ($auxCal=='p') {
				$propietario = floatval($subTotal)*((100-$AuxForm)/100);
				$socio 		 = floatval($subTotal)*(($AuxForm)/100);
				$neto 		 = $socio/1.18;
				$impuesto    = $socio -$neto;
				$operacion 	 = "%";
				

			}else{
				
				$socio 		 = $cantidad*$AuxForm;
				$propietario = $subTotal-$socio;
				$neto 		 = $socio/1.18;
				$impuesto    = $socio -$neto;
				$operacion = '';
			}

			$registro = array(
				'ESPECIALIDAD' 	=> $dtListarLiquidacion[$k]["ESPECIALIDAD"] ,
				'PRODUCTO' 	=> $dtListarLiquidacion[$k]["PRODUCTO"] ,
				'CODIGO'	=> $dtListarLiquidacion[$k]["CODIGO"],
				'CANTIDAD'	=> $dtListarLiquidacion[$k]["CANTIDAD"],
				'PRECIO'	=> $dtListarLiquidacion[$k]["PRECIO"],
				'SUBTOTAL'	=> $dtListarLiquidacion[$k]["TOTAL"],
				'FORM'		=> $AuxForm.$operacion,
				'PROPIETARIO'	=> $propietario,
				'SOCIO'			=> $socio,
				'IMPUESTO'		=> round($impuesto,2),
				'NETO'			=> round($neto,2)
			);

			array_push($datos,$registro);


			$sumaCantidad		+=$registro["CANTIDAD"];
			$subTotalFinal 		+=$registro["SUBTOTAL"];
			$propietarioTotal 	+=$registro["PROPIETARIO"];
			$socioTotal 		+=$registro["SOCIO"];
			$impuestoTotal 		+=$registro["IMPUESTO"];
			$totalNeto 			+=$registro["NETO"];


		}

		$totales = array(
			'sumaCantidad' 		=> $sumaCantidad, 
			'subTotalFinal' 	=> number_format( $subTotalFinal,2), 
			'propietarioTotal' 	=> number_format($propietarioTotal,2), 
			'socioTotal' 		=> number_format($socioTotal,2), 
			'impuestoTotal' 	=> number_format($impuestoTotal,2), 
			'totalNeto' 		=> number_format($totalNeto,2)

		);
		$RESPUESTA = array(
			$datos,
			$totales
			//$NUMEROES  , 
			//$NUMEROCOD,
			//$listDifCodigo
		);

	

		echo json_encode($RESPUESTA);
	}

	function fnc_listarAreas(){
		//@session_start();
        //$menu_activo = "horarioEspecialidad";
		$business_Area = new business_Area();
		$dtListarArea = $business_Area -> fncBusinessListarArea();
		$json_data = array(
	
			"area" => $dtListarArea   // total data array
		);
		echo json_encode($json_data);
	}
	
	



?>