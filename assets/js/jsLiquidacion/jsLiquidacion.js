$('document').ready(function(){
       
    if (document.getElementById("idTblLiquidacion" )) {

        $('.select2').select2({
            theme: 'bootstrap4'
          }) ;

    const G_Especialidades = [['HEMATOLOGIA',60],
    ['HEMATOLOGIA',50]];

    fnc_listarEspecialidadLiquidaciones();
    

    
    $("#idBtnGenerarLiquidacion").click(function (e) { 
      
        fnc_listarLiquidaciones();
    });

    $("#idBtnGenerarLiquidacionExcel").click(function (e) { 
        fncGenerarLiquidacionExcel();
        
    });

    var dataLiquidacion ;

    console.log(G_Especialidades);




    $("#exportButton").click(function(){
        html2canvas(document.querySelector("#chartsContainer")).then(canvas => {  
          var dataURL = canvas.toDataURL();
          var width = canvas.width;
          //var printWindow = window.open("");
          $(printWindow.document.body)
            .html("<img id='Image' src=" + dataURL + " style='" + width + "'></img>")
            .ready(function() {
            printWindow.focus();
            printWindow.print();
          });
        });
      });

      formatDate(new Date());
    } 


    
 

  });

  function fnc_listarEspecialidadLiquidaciones() {
    
    var parametros = {
        p:'J9Y0B7rh86'
    }

    $.ajax({
        type: "GET",
        url: "../modules/liquidacion.php",
        async: false,
        data : parametros,
        success: function (response) {
            data =JSON.parse(response);

        
            document.getElementById("idSelectEspecialidadLiquidacion").innerHTML="";
            var select = document.getElementById( 'idSelectEspecialidadLiquidacion' );
            var option;
            for(var key in data)
            {
              option = document.createElement( 'option' );
              option.value = data[key]["ESPECIALIDAD"];
              option.text = data[key]["ESPECIALIDAD"];
              //option.selected = true;
              select.add( option );
            }
        }
    });
    
  }

  function fnc_listarLiquidaciones() {
    var especialidad = document.getElementById("idSelectEspecialidadLiquidacion").value;
    var parametros = {
        l : especialidad, 
        p :'xZ6rQTOHxk'
    }

    $.ajax({
        type: "GET",
        url: "../modules/liquidacion.php",
        async: false,
        data : parametros,
        success: function (response) {
            var datosGen = JSON.parse(response);
            var datos = datosGen[0];
            var datosTotales = datosGen [1];
            var tabla = document.getElementById("idTblLiquidacionBody").innerHTML="";
            //var tr = document.createElement('tr');
            var apend = '';
            var count =0;
            for(var key in datos)
            {
               count++;
                    
                apend+= '<tr>'+
                      
                            '<td>'+(count)+'</td>'+
                            '<td>'+datos[key]["PRODUCTO"]+'</td>'+
                            '<td>'+datos[key]["CODIGO"]+'</td>'+
                            '<td>'+datos[key]["CANTIDAD"]+'</td>'+
                            '<td>S/.'+datos[key]["PRECIO"]+'</td>'+
                            '<td>S/.'+datos[key]["SUBTOTAL"]+'</td>'+
                            '<td>'+datos[key]["FORM"]+'</td>'+
                            '<td>S/.'+datos[key]["PROPIETARIO"]+'</td>'+
                            '<td>S/.'+datos[key]["SOCIO"]+'</td>'+
                            '<td>S/.'+datos[key]["IMPUESTO"]+'</td>'+
                            '<td>S/.'+datos[key]["NETO"]+'</td>'+
                      
                        '</tr>';
            }
            apend+= '<tr>'+
    
                      '<td>'+/*(count+1)+*/'</td>'+
                      '<td></td>'+
                      '<td></td>'+
                      '<td>'+datosTotales["sumaCantidad"]+'</td>'+
                      '<td></td>'+
                      '<td>S/.'+datosTotales["subTotalFinal"]+'</td>'+
                      '<td></td>'+
                      '<td>S/.'+datosTotales["propietarioTotal"]+'</td>'+
                      '<td>S/.'+datosTotales["socioTotal"]+'</td>'+
                      '<td>S/.'+datosTotales["impuestoTotal"]+'</td>'+
                      '<td>S/.'+datosTotales["totalNeto"]+'</td>'+
                      
                    '</tr>';


            var amount =        '<tr>'+
                        '<th style="width:50%">Catidad de Items:</th>'+
                        '<td>'+datosTotales["sumaCantidad"]+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<th>SubTotal:</th>'+
                        '<td>S/.'+datosTotales["subTotalFinal"]+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<th>Propietario:</th>'+
                        '<td>S/.'+datosTotales["propietarioTotal"]+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<th>Socio:</th>'+
                        '<td>S/.'+datosTotales["socioTotal"]+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<th>Impuesto Total:</th>'+
                        '<td>S/.'+datosTotales["impuestoTotal"]+'</td>'+
                    '</tr>'+
                    '<tr>'+
                        '<th>Total Neto:</th>'+
                        '<td>S/.'+datosTotales["totalNeto"]+'</td>'+
                    '</tr>';


            var tabla = document.getElementById("idTblLiquidacionBody").innerHTML=apend;
            var amountTable = document.getElementById("idTableAmount").innerHTML=amount;
            //data =JSON.parse(response);
            //dataLiquidacion = data;
        }
    });
    
    

  }

  function fncGenerarLiquidacion() {
    
   
       
  }

  
   
  

  function formatDate(date) {
    var monthNames = [
      "ENERO", "FEBRERO", "MARZO",
      "ABRIL", "MAYO", "JUNIO", "JULIO",
      "AGOSTO", "SEPTIEMBRE", "OCTUBRE",
      "NOVIEMBRE", "DICIEMBRE"
    ];
  
    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();
  
    var fecha =  day + ' ' + monthNames[monthIndex] + ' ' + year;
    document.getElementById("idSmallDateNow").innerHTML=fecha;
  }



  function fncGenerarLiquidacionExcel() {
    var especialidad = document.getElementById("idSelectEspecialidadLiquidacion").value;
    window.open('../modules/report_liquidacionExcel.php?l='+especialidad);
       
}

