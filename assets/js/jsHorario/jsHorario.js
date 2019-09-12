
$('document').ready(function(){
       

 
  if ( document.getElementById( "listaEspecialidad" )) {
  
      listarChip();  
      $('.select2').select2({
        theme: 'bootstrap4'
      }) ;
      
      $('#reservationtime').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
          
        "format": "YYYY/MM/DD hh:mm",
        "separator": " - ",
        "applyLabel": "Aplicar",
        "cancelLabel": "Cancelar",
        "fromLabel": "De",
        "toLabel": "Até",
        "customRangeLabel": "Custom",
        "daysOfWeek": [
            "Dom",
            "Lun",
            "Mar",
            "Mie",
            "Jue",
            "Vie",
            "Sáb"
        ],
        "monthNames": [
          "Enero",
          "Febrero",
          "Marzo",
          "Abril",
          "Mayo",
          "Junio",
          "Julio",
          "Agosto",
          "Septiembre",
          "Octubre",
          "Noviembre",
          "Diciembre"
      ]
        }
      });
     
      $("#fechaEliminar").change(function() {
        alert($(this).val());
      });

      $("#id_btn_agregarHorario" ).click(function() {
        fnc_agregarHorario();
      });

      $('#color').colorpicker();
      $('#color').on('colorpickerChange', function(event) {
        $('#color .fa-square').css('color', event.color.toString());
      });
      //fnc_listarPersonasDelArea();
      //fnc_reiniciarValidador();
  }



});





    $('document').ready(function(){
       

      
        if ( document.getElementById( "chart5" )) {
            fnc_reporteCantidadChipsPorOperador();
            fnc_cantidadDeDineroPorOperador();
        }
        if ( document.getElementById( "tablaListarChip" )) {
        
            listarChip();       
            fnc_reiniciarValidador();
        }
      
      

    });

    function fnc_reiniciarValidador() {
      $.validate({
        modules: 'security, toggleDisabled',
        onSuccess: function () {

          return true;
        }
      });
    }


    $('#chipBotonNuevo').click(function () {
      $('#bd-example-modal-lg form').get(0).reset();
      fnc_reiniciarValidador();
      fnc_chipLimpiarModal();
    });


    $('#chipGuardar').click(function(){
     
    
      var chipNumero = document.getElementById('chipNumero').value;
      var chipTarifa = document.getElementById('chipTarifa').value;
      var chipFechaContrato = document.getElementById('chipFechaContrato').value;
      var chipOperador = document.getElementById('chipOperador').value;
      var chipTipo = document.getElementById('chipTipo').value;
      var chipId = document.getElementById('chipId').value;

      var parametros={
        "p": "xZ6rQTOHxk",
        "chipNumero": chipNumero,
        "chipTarifa": chipTarifa,
        "chipFechaContrato": chipFechaContrato,
        "chipOperador": chipOperador,
        "chipTipo": chipTipo,
        "chipId": chipId
      };
      fnc_guardarChip(parametros);
    });

    function fnc_agregarHorario(){
      var hora = document.getElementById("reservationtime");
     
      var startDate = $('#reservationtime').data('daterangepicker').startDate.format('YYYY-MM-DD HH:mm');
      var endDate = $('#reservationtime').data('daterangepicker').endDate.format('YYYY-MM-DD HH:mm');

      var h_startDate =parseInt($('#reservationtime').data('daterangepicker').startDate.format('HH')) ;
      var h_endDate = parseInt($('#reservationtime').data('daterangepicker').endDate.format('HH')) ;
      
      console.log(startDate +"---"+ endDate);
      /*if (h_startDate>h_endDate) {
        toastr.error('Horas No Válidas', 'ERROR!', {timeOut: 5000})
      }else{*/

        console.log(h_startDate +"---"+ h_endDate);

        var id_area = document.getElementById("id_area").value;
        var idPersonalhorario =   document.getElementById("idPersonalhorario").value;
        //var id_color = document.getElementById("id_color").value;
  
        var array_hora_fin =  startDate;
        array_hora_fin = array_hora_fin.split(" ");
  
        var array_hora_inicio =  endDate;
        array_hora_inicio = array_hora_inicio.split(" ");
  
        var auxiliar_fechaFin = array_hora_fin[0] + " "+array_hora_inicio[1];
  
        var id_reten= document.getElementById("idReten").value;
  
  
        var parametros = {
          'p'         : 'uctftGr4Jm',
          'id_area'   :  id_area,
          'id_persona':  idPersonalhorario,
          
          'fecha_inicio': startDate,
          'fecha_fin'  : endDate,
          'fecha_inicio_fin':auxiliar_fechaFin,
          'id_reten' : id_reten
        }
  
        fnc_guardarHorario(parametros);
      
    /*  }*/
     

   
      
    }

function fnc_prueba (parametros){
  console.log(parametros);
  $.ajax({
    type: "GET",
    url: "../modules/horario.php",
    data: parametros,
  
    
    success: function (response) {
      
      if (response=="0") {
        swal(
          'Campos faltantes',
          'You clicked the <b style="color:green;">Success</b> button!',
          'error'
        )
      }
      else{
       
        var id_area = document.getElementById("id_area").value;
        var parametros = {
          "p"               : "xZ6rQTOHxk",
          "id_area" : id_area
                         };
                        // console.log(response);
        var respuesta = JSON.parse(response);
        console.log(respuesta);
        if (respuesta[1]['noInsert']>0) {
          toastr.warning(' Horarios no Insertados'+respuesta[1]['noInsert'], 'Warning', {timeOut: 5000});
          toastr.success(' Horarios Insertados'+respuesta[0]['insert'], 'Warning', {timeOut: 5000});
        } else {
          toastr.success('Todos Los Horarios Fueron Insertados', 'Success Alert', {timeOut: 5000})
        }
        
          
          $.ajax({
            type: "GET",
            url: "../modules/horario.php",
            data: parametros,
          
            success: function(response) {
              // console.log(response);

              fnc_renderHorarios(response);
              
            }
          });

      }
      
      

    },
    failure: function(){
      swal(
				'Success',
				'You clicked the <b style="color:green;">Success</b> button!',
				'warnig'
			)
    }
  });
}

function fnc_guardarHorario(parametros){
        swal({
            title: '¿Estás Seguro?',
            text: "Esta Seguro Insertar Estos Horarios",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy Seguro!',
            cancelButtonText: 'No!'
        }).then(function (result) {       

            if(result.value){
                
               //alert("holas");
               fnc_prueba(parametros);
               

            }
          
        });
    


  
    
    }
    
   
    var listarChip = function(){
      var table = $('#listaEspecialidad').DataTable();
      table.clear();
      table.destroy();
      
      
        var idioma = '';
      

      //$('#tablaListarChip').empty(); // empty in case the columns change

      //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
    
        var table = $('#listaEspecialidad').DataTable({
          
        
            "scrollX": true,
            "destroy":true,
           
            "ajax": {
                url: "../modules/horario.php", // json datasource				
                type: 'GET',  // method  , by default get
                data :{
                    "p":"J9Y0B7rh86"
                }

            },
          
            'columns': [
            { data: 'fila' },
            { data: 'Nombre' },
            { data: 'Piso'},
            { data: 'Encargado'},
          
            { "defaultContent": '<div class="dropdown"><a class="btn btn-outline-primary dropdown-toggle" href="#" role="button" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a><div class="dropdown-menu dropdown-menu-right"><a id="verHorario" class="dropdown-item" href="#"><i class="fa fa-eye"></i>Ver</a> <a id="editarChip" class="dropdown-item"  href="#"><i class="fa fa-pencil"></i> Editar</a><a class="dropdown-item"  id = "eliminarChip" href="#"><i class="fa fa-trash"></i> Eliminar</a>	</div>	</div>'}
            
            
            ],
            
            responsive: false,
            columnDefs: [{
                targets: "datatable-nosort",
                orderable: false,
                
            }
            ],
            
            "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
            "language": {
                "info": "_START_-_END_ de _TOTAL_ registros",
                searchPlaceholder: "Search"
            },
            dom: 'Blfrtip',
            buttons: [
            'copy', 'csv', 'pdf', 'print'
            ]
    

        });

        

      $('#listaEspecialidad tbody').off('click');
      $('#listaEspecialidad tbody').on( 'click', '#editarChip', function () {
       
        var data = table.row( $(this).parents('tr') ).data();
        
        console.log(data);
        $("#bd-example-modal-lg").modal('show');
        $('#bd-example-modal-lg form').get(0).reset();
        $('#chipGuardar').attr("disabled", false);
        $('#chipGuardar').removeClass('disabled');
        fnc_chipMostrarDatosEditar(data);
        
        
       
        //fnc_reiniciarValidador();

         
} );

      $('#listaEspecialidad tbody').on( 'click', '#verHorario', function () {
            
        var data = table.row( $(this).parents('tr') ).data();

        var id_especialidad = data["id_area"];
        document.getElementById("id_area").value=id_especialidad;
        document.getElementById("id_tituloGestion").innerHTML="Gestión de Horarios : " + data["Nombre"];
        document.getElementById("id_btn_agregarHorario").disabled=false;
        document.getElementById("id_btn_eliminarHorario").disabled=false;
        document.getElementById("id_btn_eliminarHorario").disabled=false;
        document.getElementById("fechaEliminar").disabled=false;
        
        var parametros = {
          "p"               : "xZ6rQTOHxk",
          "id_area" : id_especialidad
        };

       // console.log(parametros);
        
        $.ajax({
          type: "GET",
          url: "../modules/horario.php",
          data: parametros,
         
          success: function(response) {
            // console.log(response);

             fnc_renderHorarios(response);
          },
          failure: function (response) {
            
          }
      });
        
        //console.log(data);
        
              
        //fnc_reiniciarValidador();
        fnc_listarPersonasDelArea(id_especialidad)

        
      } );


    }

    function fnc_renderHorarios(data){

      var date = new Date()
      var d    = date.getDate(),
          m    = date.getMonth(),
          y    = date.getFullYear()
     //console.log(new Date(y, 1, 7));
/*
         
      var fechas = [
        {
          title          : 'All Day Event',
          start          : new Date(y, m, Math.floor(Math.random() * 11)),
          backgroundColor: '#f56954', //red
          borderColor    : '#f56954' //red
        },
        {
          title          : 'Long Event',
          start          : new Date(y, m, d - 5),
          end            : new Date(y, m, Math.floor(Math.random() * 11)),
          backgroundColor: '#f39c13', //yellow
          borderColor    : '#f39c12' //yellow
        },
        {
          title          : 'Meeting',
          start          : new Date(y, m, d, 10, 40),
          allDay         : false,
          backgroundColor: '#0073b7', //Blue
          borderColor    : '#0073b7' //Blue
        },
        {
          title          : 'Lunch',
          start          : new Date(y, m, d, 12, 0),
          end            : new Date(y, m, d, 14, 0),
          allDay         : false,
          backgroundColor: '#00c0ef', //Info (aqua)
          borderColor    : '#00c0ef' //Info (aqua)
        },
        {
          title          : 'Birthday Party',
          start          : new Date(y, m, d + 1, 19, 0),
          end            : new Date(y, m, d + 1, 22, 30),
          allDay         : false,
          backgroundColor: '#00a65a', //Success (green)
          borderColor    : '#00a65a' //Success (green)
        },
        {
          title          : 'Click for Google',
          start          : new Date(y, m, 28),
          end            : new Date(y, m, 29),
          url            : 'http://google.com/',
          backgroundColor: '#3c8dbc', //Primary (light-blue)
          borderColor    : '#3c8dbc' //Primary (light-blue)
        }
      ];
      console.log(fechas);
*/
      data =JSON.parse(data);

      var fechas = new Array();
      for(var key in data)
      {
       

        fechas.push({
          'title': data[key]["Nombre"],
          'start': new Date(
            data[key]["Anio_inicio"],
            data[key]["Mes_inicio"]-1,
            data[key]["Dia_inicio"],
            data[key]["Hora_inicio"],
            data[key]["Minuto_inicio"]
            ),
          'end': new Date(
            data[key]["Anio_fin"],
            data[key]["Mes_fin"]-1,
            data[key]["Dia_fin"],
            data[key]["Hora_fin"],
            data[key]["Minuto_fin"]
            ),
          'backgroundColor' :data[key]["Color"],
          'borderColor': data[key]["Color"]

        });
      }
     // console.log(data);
     // console.log(fechas);
      var date = new Date()
      var d    = date.getDate(),
          m    = date.getMonth(),
          y    = date.getFullYear()
  var Calendar = FullCalendar.Calendar;
  var calendarEl = document.getElementById('calendar');

  
  
  var calendar = new Calendar(calendarEl, {
        plugins: [ 'bootstrap', 'interaction', 'dayGrid', 'timeGrid' ],
        selectable:true,
        'locale': 'es',
        header    : {
          left  : 'prev,next today',
          center: 'title',
          right : 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        dateClick: function(info) {
          alert('clicked ' + info.dateStr);
        },
        select: function(info) {
          alert('selected ' + info.startStr + ' to ' + info.endStr);
        },
        //Random default events
        events    : fechas,
        editable  : true,
        droppable : true, // this allows things to be dropped onto the calendar !!!
        drop      : function(info) {
          // is the "remove after drop" checkbox checked?
          if (checkbox.checked) {
            // if so, remove the element from the "Draggable Events" list
            info.draggedEl.parentNode.removeChild(info.draggedEl);
           
          }
        }   
        
        
      });
      document.getElementById("calendar").innerHTML="";
      calendar.render();



    }



    function fnc_listarPersonasDelArea(id_area){

      parametros ={
        'p': 'J9Y0B7rh86',
        'id_area' : id_area
      }
      var personaLista="";
      $.ajax({
        type: "get",
        url: "../modules/persona.php",
        data: parametros,
       
        success: function (datos) {
         document.getElementById("idPersonalhorario").innerHTML="";
         personaLista = JSON.parse(datos);
         console.log(personaLista);
         var select = document.getElementById( 'idPersonalhorario' );
          var option;
          for(var key in personaLista)
          {
            option = document.createElement( 'option' );
            option.value = personaLista[key]["id_persona"];
            option.text = personaLista[key]["Nombre"];
            select.add( option );
          }
        }
      });
      

    }

    var chart5,options;
    function fnc_reporteCantidadChipsPorOperador(){
        var proceso ='Rd5f84FT7D';
    
    $.ajax({
        type: 'GET',
        data:{
          'p': proceso
        },   
        url: '../modules/chip.php',
        success: function(datos){
            datosChart(datos);
        }
      });
      
    }

    function fnc_cantidadDeDineroPorOperador(){
        var proceso ='Q6SwcynHWV';
    
        $.ajax({
            type: 'GET',
            data:{
              'p': proceso
            },   
            url: '../modules/chip.php',
            success: function(datos){
                fnc_datosChartCantidadDeDineroPorOperador(datos);
            }
          });
          
    }

    function fnc_chipLimpiarModal() {
      document.getElementById("chipId").value ="0";
      document.getElementById("chipNumero").value = "";
      document.getElementById("chipTarifa").value = "";
      document.getElementById("chipFechaContrato").value = "";
      document.getElementById("chipOperador").value = "";
      document.getElementById("chipTipo").value = "";
    }

    function fnc_chipMostrarDatosEditar(data) {
      document.getElementById("chipId").value= data.idchip;
      document.getElementById("chipNumero").value = parseInt(data.numero) ;
      document.getElementById("chipTarifa").value = data.tarifa;
      document.getElementById("chipFechaContrato").value = data.fechacontrato;
      document.getElementById("chipOperador").value = data.operador;
      document.getElementById("chipTipo").value = data.tipo_contrato;
      
    }

  
function datosChart(datos){

 
 var data = JSON.parse(datos);

    Highcharts.chart('chart5', {
        title: {
            text: 'Pie point CSS'
        },
     
        series: [{
            type: 'pie',
            allowPointSelect: true,
            
            data: data,
            showInLegend: true
        }]
    });

  
   
}

function fnc_datosChartCantidadDeDineroPorOperador(datos){

    var formato = [
        {
          name: "Chrome",
          y: 62.74,
          drilldown: "Chrome"
        },
        {
          name: "Firefox",
          y: 10.57,
          drilldown: "Firefox"
        },
        {
          name: "Internet Explorer",
          y: 7.23,
          drilldown: "Internet Explorer"
        },
        {
          name: "Safari",
          y: 5.58,
          drilldown: "Safari"
        },
        {
          name: "Edge",
          y: 4.02,
          drilldown: "Edge"
        },
        {
          name: "Opera",
          y: 1.92,
          drilldown: "Opera"
        },
        {
          name: "Other",
          y: 7.62,
          drilldown: null
        }
      ];

    
      console.log(formato);


      datosParse=JSON.parse(datos);


    Highcharts.chart('chartPrecio', {
        chart: {
          type: 'column'
        },
        title: {
          text: 'Reporte del total de dinero a pagar por operador'
        },
        subtitle: {
          text: ''
        },
        xAxis: {
          type: 'category'
        },
        yAxis: {
          title: {
            text: 'Total de dinero a pagar por operador'
          }
      
        },
        legend: {
          enabled: false
        },
        plotOptions: {
          series: {
            borderWidth: 0,
            dataLabels: {
              enabled: true,
              format: 'S/.{point.y:.1f}'
            }
          }
        },
      
        tooltip: {
          headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
          pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>S/.{point.y:.2f}</b> de pago<br/>'
        },
      
        series: [
          {
            name: "Operador Telefonico",
            colorByPoint: true,
            data: datosParse
          }
        ]
      });
}
