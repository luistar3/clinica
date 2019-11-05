$('document').ready(function(){

    if ( document.getElementById( "id_tablaEnfermeraReporte" )) {

        $('#idSelectEnfermera').select2({
            theme: 'bootstrap4'
          });

          document.getElementById("idBtnBuscar").addEventListener("click", function(){
            fncReporteDeTurnoEnfermera();
          });
          document.getElementById("idBtnBuscarConsolidado").addEventListener("click", function(){
            fncReporteDeTurnoEnfermeraConsolidado();
          });

        // $('#id_selectAreaBuscar').change(function () { 
        //   fnc_recargarTablaIdArea();
          
        // });

        //   fnc_listarOpciones();

        // $( "#id_nuevoRegistroPersona" ).click(function() {
        //   fnc_nuevoRegistroPersonaLimpiar();
        // });

        // $( "#id_btnGuardarModificarPersona" ).click(function() {
        //   fnc_guardarModificarPersona();
        // });
        cargarEnfermeras();
        document.getElementById('idFechaFin').valueAsDate = new Date();
        document.getElementById('idFechaInicio').valueAsDate = new Date();

        document.getElementById('idFechaFinConsolidado').valueAsDate = new Date();
        document.getElementById('idFechaInicioConsolidado').valueAsDate = new Date();
        
    }



});

function fncReporteDeTurnoEnfermera() {
    var idUsuario = document.getElementById("idSelectEnfermera").value;
    var idInicio = document.getElementById("idFechaInicio").value;
    var idFin = document.getElementById("idFechaFin").value;

    var parametros = {
        'p' : 'FGERT567',
        'idUsuario' : idUsuario,
        'idInicio' : idInicio,
        'idFin' : idFin
    }
    //console.log(parametros);
     
   
            fncRenderDatatables(parametros);
    
    
}

function fncReporteDeTurnoEnfermeraConsolidado() {
  
    var idInicio = document.getElementById("idFechaInicioConsolidado").value;
    var idFin = document.getElementById("idFechaFinConsolidado").value;

    var parametros = {
        'p' : 'FtGht567',
        
        'idInicio' : idInicio,
        'idFin' : idFin
    }
    //console.log(parametros);
     
   
            fncRenderDatatablesConsolidado(parametros);
    
    
}


function fncRenderDatatablesConsolidado(parametros) {

    var table = $('#id_tablaEnfermeraReporteConsolidado').DataTable();
    table.clear();
    table.destroy();

    
    
    var idioma = '';
    

   // dia = parseInt(dia) + 1;
    
    //$('#tablaListarChip').empty(); // empty in case the columns change

    //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
  
      var table = $('#id_tablaEnfermeraReporteConsolidado').DataTable({
        
      
        "lengthChange": false,
        "bInfo" : false,
        "bLengthChange": false,
        "info": false,
        "scrollX": true,
          "destroy":true,
         
          "ajax": {
              url: "../modules/turnoEnfermeria.php", // json datasource				
              type: 'GET',  // method  , by default get
              data :parametros

          },
        
          'columns': [
        
          { data: 'Usuario' },
          { data: 'Calculo' },
          
        
          
          
          
          ]

      });


  

}

function fncRenderDatatables(parametros) {

        var table = $('#id_tablaEnfermeraReporte').DataTable();
        table.clear();
        table.destroy();
  
        
        
        var idioma = '';
        
  
       // dia = parseInt(dia) + 1;
        
        //$('#tablaListarChip').empty(); // empty in case the columns change
  
        //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
      
          var table = $('#id_tablaEnfermeraReporte').DataTable({
            
          
            "lengthChange": false,
            "bInfo" : false,
            "bLengthChange": false,
            "info": false,
            "scrollX": true,
              "destroy":true,
             
              "ajax": {
                  url: "../modules/turnoEnfermeria.php", // json datasource				
                  type: 'GET',  // method  , by default get
                  data :parametros
  
              },
            
              'columns': [
            
              { data: 'Usuario' },
              { data: 'InicioTurno' },
              { data: 'FinTurno' },
              { data: 'dif' },
              { data: 'conteo' }
            
              
              
              
              ]
  
          });
  
  
      
  
}

function cargarEnfermeras() {
    var parametros = {
        'p': 'GFHTER56',

    }
    $.ajax({
        type: "GET",
        url: "../modules/turnoEnfermeria.php",
        data:parametros,
        
        success: function (response) {

            personaLista = JSON.parse(response);
            console.log(personaLista);
            var select = document.getElementById( 'idSelectEnfermera' );
            var option;
            for(var key in personaLista)
            {
              option = document.createElement( 'option' );
              option.value = personaLista[key]["id_usuario"];
              option.text =
            
              personaLista[key]["Nombre"]
              +' '+personaLista[key]["ApePat"]
              +' '+personaLista[key]["ApeMat"]
              +' ['+personaLista[key]["Usuario"]+']';
              select.add( option );
            }
        }
    });
}