<?php

include_once($_SERVER["DOCUMENT_ROOT"] . '/pjrclinica/business/businessClinica/business_Liquidacion.php');

date_default_timezone_set('America/Lima');

require 'PHPExcel.php';

		$mesArray = array(

			"1" => 'ENERO',
			"2" => 'FEBRERO',
			"3" => 'MARZO',
			"4" => 'ABRIL',
			"5" => 'MAYO',
			"6" => 'JUNIO',
			"7" => 'JULIO',
			"8" => 'AGOSTO',
			"9" => 'SETIEMBRE',
			"10" => 'OCTUBRE',
			"11" => 'NOVIEMBRE',
			"12" => 'DICIEMBRE'
		);

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
		$mesLiquidacion =0;


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
			$mesLiquidacion = $dtListarLiquidacion [$k]['MES'];

			

			foreach ($listDifEspecialidad as $key => $valueEspecialidad) {
				if ($valueEspecialidad["nombre"]== $dtListarLiquidacion[$k]["ESPECIALIDAD"] ) {
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
			'subTotalFinal' 	=> $subTotalFinal, 
			'propietarioTotal' 	=> $propietarioTotal, 
			'socioTotal' 		=> $socioTotal, 
			'impuestoTotal' 	=> $impuestoTotal, 
			'totalNeto' 		=> $totalNeto

		);


        $objPHPExcel = new PHPExcel();

//configuraciones de pagina
$objPHPExcel->getProperties()->setCreator('Luis') -> setLastModifiedBy('Luis')->setTitle($nombreEspecialidad);
//activar la pagina hola  " 0 "
$objPHPExcel  -> setActiveSheetIndex(0);

$pagina = $objPHPExcel -> getActiveSheet();

$objPHPExcel  -> getActiveSheet()->setTitle("Productos");

//imagen
// $gdImage = imagecreatefrompng('https://clinicalaluz.pe/wp-content/uploads/2019/02/clinica_la_luz_logo.png');//Logotipo

//     $objDrawing = new PHPExcel_Worksheet_MemoryDrawing();
// 	$objDrawing->setName('Clinica La Luz');
// 	$objDrawing->setDescription('Logotipo');
// 	$objDrawing->setImageResource($gdImage);
// 	$objDrawing->setRenderingFunction(PHPExcel_Worksheet_MemoryDrawing::RENDERING_PNG);
// 	$objDrawing->setMimeType(PHPExcel_Worksheet_MemoryDrawing::MIMETYPE_DEFAULT);
// 	$objDrawing->setHeight(100);
// 	$objDrawing->setCoordinates('A1');
// 	$objDrawing->setWorksheet($objPHPExcel->getActiveSheet());

    $indexImpresion = 15;
    $ultimaFila = 0;

    //Colocando encabezados
    $pagina ->setCellValue('A14','ITEM');
    $pagina ->setCellValue('B14','NOMBRE');
    $pagina ->setCellValue('C14','CÓDIGO');
    $pagina ->setCellValue('D14','CANTIDAD');
    $pagina ->setCellValue('E14','PRECIO');
    $pagina ->setCellValue('F14','SUB TOTAL');
    $pagina ->setCellValue('G14','FORM');
    $pagina ->setCellValue('H14','PROPIETARIO');
    $pagina ->setCellValue('I14','SOCIO');
    $pagina ->setCellValue('J14','IMPUESTO');
    $pagina ->setCellValue('K14','NETO');


for ($i=0; $i < count($datos); $i++) { 
    $pagina ->setCellValue('A'.($i+$indexImpresion),$i+1);
    $pagina ->setCellValue('B'.($i+$indexImpresion),$datos[$i]["PRODUCTO"]);
    $pagina ->setCellValue('C'.($i+$indexImpresion),$datos[$i]["CODIGO"]);
    $pagina ->setCellValue('D'.($i+$indexImpresion),$datos[$i]["CANTIDAD"]);    
    $pagina ->setCellValue('E'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["PRECIO"],2) );
    $pagina ->setCellValue('F'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["SUBTOTAL"],2) );
    $pagina ->setCellValue('G'.($i+$indexImpresion),$datos[$i]["FORM"]);
    $pagina ->setCellValue('H'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["PROPIETARIO"],2) );
    $pagina ->setCellValue('I'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["SOCIO"],2) );
    $pagina ->setCellValue('J'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["IMPUESTO"],2) );
    $pagina ->setCellValue('K'.($i+$indexImpresion),'S/ '.number_format($datos[$i]["NETO"],2) );
    //$pagina ->setCellValue('L'.($i+$indexImpresion),$datos[$i]["NETO"]);
    
}
$ultimaFila=COUNT($datos)+15;

$estiloTituloReporte = array(
    'font' => array(
	'name'      => 'Arial',
	'bold'      => true,
	'italic'    => false,
	'strike'    => false,
	'size' =>13
    ),
    'fill' => array(
	'type'  => PHPExcel_Style_Fill::FILL_SOLID
	),
    'borders' => array(
	'allborders' => array(
	'style' => PHPExcel_Style_Border::BORDER_NONE
	)
    ),
    'alignment' => array(
	'horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
	'vertical' => PHPExcel_Style_Alignment::VERTICAL_CENTER
    )
	);

	$estiloTituloReporteTEMPLATE = array(
		'font' => array(
		'name'      => 'Arial',
		'bold'      => FALSE,
		'italic'    => false,
		'strike'    => false,
		'size' =>9
		),
		'fill' => array(
		'type'  => PHPExcel_Style_Fill::FILL_SOLID
		),
		'borders' => array(
		'allborders' => array(
		'style' => PHPExcel_Style_Border::BORDER_NONE
		)
		)
		);


	
	$estiloTituloColumnas = array(
    'font' => array(
	'name'  => 'Arial',
	'bold'  => true,
	'size' =>10/*,
	'color' => array(
	'rgb' => 'FFFFFF'
	)*/
    ),
    'fill' => array(
	'type' => PHPExcel_Style_Fill::FILL_SOLID/*,
	'color' => array('rgb' => 'BE2F10')*/
    ),
    'borders' => array(
	'allborders' => array(
	'style' => PHPExcel_Style_Border::BORDER_THIN
	)
    ),
    'alignment' =>  array(
	'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
	'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
    )
	);

	$estiloTituloColumnasTo = array(
		'font' => array(
		'name'  => 'Arial',
		'bold'  => true,
		'size' =>10/*,
		'color' => array(
		'rgb' => 'FFFFFF'
		)*/
		),
		'fill' => array(
		'type' => PHPExcel_Style_Fill::FILL_SOLID/*,
		'color' => array('rgb' => 'BE2F10')*/
		),
		'borders' => array(
		'allborders' => array(
		'style' => PHPExcel_Style_Border::BORDER_THIN
		)
		),
		'alignment' =>  array(
		'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_RIGHT,
		'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
		)
		);

	
	$estiloTituloColumnasSub = array(
		'font' => array(
		'name'  => 'Arial',
		'bold'  => true,
		'size' =>10,
		'color' => array(
		'rgb' => 'FFFFFF'
		)
		),
		'fill' => array(
		'type' => PHPExcel_Style_Fill::FILL_SOLID,
		'color' => array('rgb' => 'BE2F10')
		),
		'borders' => array(
		'allborders' => array(
		'style' => PHPExcel_Style_Border::BORDER_THIN
		)
		),
		'alignment' =>  array(/*
		'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,*/
		'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
		)
		);

	$estiloTituloColumnasTotales = array(
		'font' => array(
		'name'  => 'Arial',
		'bold'  => true,
		'size' =>8/*,
		'color' => array(
		'rgb' => 'FFFFFF'
		)*/
		),
		'fill' => array(
		'type' => PHPExcel_Style_Fill::FILL_SOLID/*,
		'color' => array('rgb' => 'BE2F10')*/
		),
		'borders' => array(
		'allborders' => array(
		'style' => PHPExcel_Style_Border::BORDER_THIN
		)
		),
		'alignment' =>  array(
		'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
		'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
		)
		);

		$estiloTituloColumnasCuerpos = array(
		
			
			'borders' => array(
			'allborders' => array(
			'style' => PHPExcel_Style_Border::BORDER_THIN
			)
			),
			'alignment' =>  array(/*
			'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,*/
			'horizontal'  => PHPExcel_Style_Alignment::HORIZONTAL_RIGHT
			)
			);

			
		$estiloTituloColumnasCuerpoNombreItems = array(
		
			
			'borders' => array(
			'allborders' => array(
			'style' => PHPExcel_Style_Border::BORDER_THIN
			)
			),
			'alignment' =>  array(/*
			'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,*/
			'horizontal'  => PHPExcel_Style_Alignment::HORIZONTAL_LEFT
			)
			);
	
	
	$estiloInformacion = new PHPExcel_Style();
	$estiloInformacion->applyFromArray( array(
    'font' => array(
	'name'  => 'Arial',
	'color' => array(
	'rgb' => '000000'
	)
    ),
    'fill' => array(
	'type'  => PHPExcel_Style_Fill::FILL_SOLID
	),
    'borders' => array(
	'allborders' => array(
	'style' => PHPExcel_Style_Border::BORDER_THIN
	)
    ),
	'alignment' =>  array(
	'horizontal'=> PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
	'vertical'  => PHPExcel_Style_Alignment::VERTICAL_CENTER
    )
	));
	foreach (RANGE('C','K')AS $column) {
        # code...
        $pagina -> getColumnDimension($column)-> setAutoSize(true);
    }


    //tatoles
    
    $pagina ->setCellValue('D'.$ultimaFila,$totales["sumaCantidad"]);
    $pagina ->setCellValue('F'.$ultimaFila,'S/ '.number_format($totales["subTotalFinal"],2) );
    $pagina ->setCellValue('H'.$ultimaFila,'S/ '.number_format($totales["propietarioTotal"],2));
    $pagina ->setCellValue('I'.$ultimaFila,'S/ '.number_format($totales["socioTotal"],2));
    $pagina ->setCellValue('J'.$ultimaFila,'S/ '.number_format($totales["impuestoTotal"],2));
    $pagina ->setCellValue('K'.$ultimaFila,'S/ '.number_format($totales["totalNeto"],2));


    $objPHPExcel->getActiveSheet()->mergeCells('A'.$ultimaFila.':C'.$ultimaFila.'');
    $objPHPExcel->getActiveSheet()->mergeCells('A1:K1');//TOTALES
    $pagina ->setCellValue('A1','LIQUIDACION MENSUAL DE SERVICIO');
    $pagina ->setCellValue('A'.$ultimaFila,'TOTAL');
    $pagina ->getStyle('A'.$ultimaFila)->getAlignment()->applyFromArray(array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,)
    );


    $objPHPExcel->getActiveSheet()->mergeCells('A13:K13');
    $pagina ->setCellValue('A13','POR CATÁLOGO');
    $pagina ->getStyle('A13')->getFont()->setBold(true);
    $pagina ->getStyle('A13')->getAlignment()->applyFromArray(array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_CENTER,)
    );

    $styleArray = array(
        'borders' => array(
            'outline' => array(
                'style' => PHPExcel_Style_Border::BORDER_THIN,
                'color' => array('rgb' => ''),
            ),
        ),
    );

	
   


    
	


    $pagina -> setCellValue('J9','Total Neto:');
    $pagina -> setCellValue('K9','S/ '. number_format($totales["totalNeto"],2) );
    $pagina -> setCellValue('J10','IGV(18%):');
    $pagina -> setCellValue('K10','S/ '.number_format($totales["impuestoTotal"],2) );
    $pagina -> setCellValue('J11','Total **:');
    $pagina -> setCellValue('K11','S/ '.number_format($totales["socioTotal"],2) );


    $pagina -> setCellValue('A11','Total:');
    $pagina -> setCellValue('B11','S/ '.number_format($totales["subTotalFinal"],2) );
    $pagina -> setCellValue('A10','Propietario:');
    $pagina -> setCellValue('B10','S/ '.number_format($totales["propietarioTotal"],2) );
    $pagina -> setCellValue('A9','Servicio Mes:');
	$pagina -> setCellValue('B9','S/ '.number_format($totales["socioTotal"],2) );
	


	$objPHPExcel->getActiveSheet()->getStyle('B11')->getAlignment()->applyFromArray(
		array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_RIGHT,)
	);
	$objPHPExcel->getActiveSheet()->getStyle('B10')->getAlignment()->applyFromArray(
		array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_RIGHT,)
	);

	$objPHPExcel->getActiveSheet()->getStyle('B9')->getAlignment()->applyFromArray(
		array('horizontal' => PHPExcel_Style_Alignment::HORIZONTAL_RIGHT,)
	);






    $objPHPExcel->getActiveSheet()->mergeCells('A8:B8');
    $objPHPExcel->getActiveSheet()->mergeCells('G8:K8');
    $pagina -> setCellValue('A8','LIQUIDACIÓN:');
    $pagina -> setCellValue('G8','UTILIDAD SERVICIO:');
    $objPHPExcel->getActiveSheet()->getStyle('A8')->applyFromArray($estiloTituloColumnasSub);
    $objPHPExcel->getActiveSheet()->getStyle('G8')->applyFromArray($estiloTituloColumnasSub);

    $objPHPExcel->getActiveSheet()->mergeCells('A5:B5');
    $objPHPExcel->getActiveSheet()->mergeCells('A4:B4');
    $objPHPExcel->getActiveSheet()->mergeCells('A6:B6');
    $objPHPExcel->getActiveSheet()->mergeCells('A3:B3');
    $pagina->setCellValue('A5','Servicio:'.$nombreEspecialidad);
    $pagina->setCellValue('A6','Razon Social:'.$listDifEspecialidad[0]["razonsocial"]);

    $objPHPExcel->getActiveSheet()->mergeCells('A4:B4');
    $now = new DateTime();
    $pagina->setCellValue('A4','Documento:'.date_format($now, 'Y-m-d'));

	$objPHPExcel->getActiveSheet()->mergeCells('A3:B3');
	$pagina -> setCellValue('A3','Código:');


	$objPHPExcel->getActiveSheet()->mergeCells('I3:K3');
	$pagina -> setCellValue('I3','Estado: Autorizado');

	$objPHPExcel->getActiveSheet()->mergeCells('I4:K4');
	$pagina -> setCellValue('I4','Periodo: '.$mesArray[$mesLiquidacion]);

	$objPHPExcel->getActiveSheet()->mergeCells('G12:K12');
	$pagina -> setCellValue('G12','(**)Nota.- No incluye Retención Tributaria que se calcula en Contabilidad');

	$pagina -> setCellValue('H9','Moneda: S/.');
	
	//

	
    $objPHPExcel->getActiveSheet()
    ->getStyle('B1:B100')
    ->getAlignment()
	->setWrapText(true);
	



	// $objPHPExcel->getActiveSheet()
    //             ->getStyle('A1:K11')
    //             ->getBorders()
    //             ->getBottom()
    //             ->setBorderStyle(PHPExcel_Style_Border::BORDER_DASHDOTDOT);

    // $objPHPExcel->getActiveSheet()
	// 			->getStyle('A1:K11')
    //             -> getBorders()
    //             ->getLeft()
    //             ->setBorderStyle(PHPExcel_Style_Border::BORDER_DASHDOTDOT);

    // $objPHPExcel->getActiveSheet()
	// 			->getStyle('A1:K11')
    //             ->getBorders()
    //             ->getRight()
    //             ->setBorderStyle(PHPExcel_Style_Border::BORDER_DASHDOTDOT);

    // $objPHPExcel->getActiveSheet()
	// 			->getStyle('A1:K11')
    //             ->getBorders()
    //             ->getBottom()
    //             ->setBorderStyle(PHPExcel_Style_Border::BORDER_DASHDOTDOT);




$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel,'Excel5');

$objPHPExcel->getActiveSheet()->getStyle('A2:P100')->applyFromArray($estiloTituloReporteTEMPLATE);



$objPHPExcel->getActiveSheet()->getStyle('A1')->applyFromArray($estiloTituloReporte);
	
	$objPHPExcel->getActiveSheet()->getStyle('A14:K14')->applyFromArray($estiloTituloColumnasTotales);
	$objPHPExcel->getActiveSheet()->getStyle('A15:K'.($ultimaFila-1))->applyFromArray($estiloTituloColumnasCuerpos);
	$objPHPExcel->getActiveSheet()->getStyle('B15:B'.($ultimaFila-1))->applyFromArray($estiloTituloColumnasCuerpoNombreItems);
	
    $objPHPExcel->getActiveSheet()->getStyle('A'.$ultimaFila.':K'.$ultimaFila)->applyFromArray($estiloTituloColumnas);

	$objPHPExcel->getActiveSheet()->getStyle('A13:K13')->applyFromArray($estiloTituloColumnas);
	$objPHPExcel->getActiveSheet()->getStyle("G12")->getFont()->setSize(7);

	$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setAutoSize(false);
	$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setAutoSize(false);
	
	$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(12);
	$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(50);
	$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(10);
	$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(10);
	$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(10);
	$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(10);
	$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(10);
	$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(15);
	$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(10);
	

	$objPHPExcel->getActiveSheet()->getStyle("A8")->getFont()->setBold(true);
	$objPHPExcel->getActiveSheet()->getStyle("G8")->getFont()->setBold(true);


	$objPHPExcel->getActiveSheet()->getStyle('D'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);
	$objPHPExcel->getActiveSheet()->getStyle('F'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);
	$objPHPExcel->getActiveSheet()->getStyle('H'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);
	$objPHPExcel->getActiveSheet()->getStyle('I'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);
	$objPHPExcel->getActiveSheet()->getStyle('J'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);
	$objPHPExcel->getActiveSheet()->getStyle('K'.$ultimaFila)->applyFromArray($estiloTituloColumnasTo);

$pagina->getStyle('A13:K13')->applyFromArray($styleArray);
header('Content-Type: application/vsd.ms-excel');
header('Content-Disposition: attachment; filename=reporte-'.date_format($now, 'Y-m').'-'.$nombreEspecialidad.'.xls');


$objWriter->save('php://output');

print_r($datos);