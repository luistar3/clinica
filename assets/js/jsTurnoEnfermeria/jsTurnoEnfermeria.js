	
    $('document').ready(function(){

      if (document.getElementById("iddd" )) {
        $("#idBtnIniciarTurnoEnfermera").click(function(e){

          fnc_insertarInicializacionDeTurno();
        });
         
        $('#idBtnFinalizarTurnoEnfermera').click(function(e) {

          fnc_insertarFinalizacionDeTurno();
        });

        listarTurnoEnfermera();
        fnc_cargarRelojContadoTurno();


      }
        
   
        
      $('.start').click(function(e) {

        clock.start();
      });

      $('.reset').click(function(e) {

        clock.reset();
      });


    });


    // function fnc_btnInertarNuevoTurnoEnfermera() {
      
    //   var parametros ={
    //     'p':'6x8RlHMFSK'
    //   }

    //   $.ajax({
    //     type: "GET",
    //     url: "../modules/turnoEnfermeria.php",
    //     data: parametros,
        
    //     success: function (response) {
          
    //     }
    //   });
    // }

    // function fnc_verificarTurnoPendiente() {
      
    //   var parametros ={
    //     'p':'J9Y0B7rh86'
    //   }

    //   $.ajax({
    //     type: "GET",
    //     url: "../modules/turnoEnfermeria.php",
    //     data: parametros,
        
    //     success: function (response) {
          
    //     }
    //   });
    // }

    function fnc_insertarFinalizacionDeTurno() {
      var idLog = document.getElementById("txt_idLog").value;
      console.log(idLog);
      if (idLog=='0') {
        
      } else {
        var parametros = {
          'p': 'xZ6rQTOHxk',
          'idLog' : idLog,
          'T' : 'fin'
        }
        $.ajax({
          type: "GET",
          url: "../modules/turnoEnfermeria.php",
          data: parametros,
        
          success: function (response) {
            if (response == '1') {
              toastr.success('Se Finalizo el Turno', 'Exito', {timeOut: 5000});
              document.getElementById("idBtnFinalizarTurnoEnfermera").disabled=true;
              fnc_cargarRelojContadoTurno();
              listarTurnoEnfermera();
            }
            if (response == '3') {
              toastr.error('No Fue Finalizado; pongase en contacto con el Administrador', 'Error', {timeOut: 5000});
            }
            if (response=='0') {
              toastr.error('El turno Ya fue Finalizado', 'Error', {timeOut: 5000});
            }
          }
        });
      }
     
    }


    function fnc_insertarInicializacionDeTurno() {
      var idLog = document.getElementById("txt_idLog").value;
      console.log(idLog);
    
        var parametros = {
          'p': 'uctftGr4Jm',
          'idLog' : idLog,
          'T' : 'ini'
        }
        $.ajax({
          type: "GET",
          url: "../modules/turnoEnfermeria.php",
          data: parametros,
        
          success: function (response) {
            if (response == '1') {
              toastr.success('Se inicio Un nuevo Turno', 'Exito', {timeOut: 5000});
              document.getElementById("idBtnIniciarTurnoEnfermera").disabled=true;
              fnc_cargarRelojContadoTurno();
              listarTurnoEnfermera();
            }
            if (response == '3') {
              toastr.error('No Fue Iniciado; pongase en contacto con el Administrador', 'Error', {timeOut: 5000});
            }
            if (response=='0') {
              toastr.error('Hay un Horario por terminar', 'Error', {timeOut: 5000});
            }
          }
        });
      
     
    }

    function fnc_cargarRelojContadoTurno(){
     var parametros = {
        'p': 'J9Y0B7rh86'
      }
      $.ajax({
        type: "GET",
        url: "../modules/turnoEnfermeria.php",
        data: parametros,
        
        success: function (response) {
          var datos = JSON.parse(response);
          console.log(datos);
        if (datos["reloj"]=='1') {

          document.getElementById("idBtnIniciarTurnoEnfermera").disabled = true;
          document.getElementById("idBtnFinalizarTurnoEnfermera").disabled = false;
          document.getElementById("txt_idLog").value= datos['idLog'];


            var clock = $('#iddd').FlipClock(datos["tiempo"], {
              clockFace: 'DailyCounter',
              countdown: false,
              autoStart: true,
              callbacks: {
              start: function() {
                  //$('.message').html('The clock has started!');
                }
          
              }
                
            });
        } else {
          
          document.getElementById("idBtnIniciarTurnoEnfermera").disabled = false;
          document.getElementById("idBtnFinalizarTurnoEnfermera").disabled = true;

          var clock = $('#iddd').FlipClock(0, {
            clockFace: 'DailyCounter',
            countdown: false,
            autoStart: false,
            callbacks: {
            start: function() {
                //$('.message').html('The clock has started!');
              }
        
            }
              
          });
          
        }

        }
      });


  

    

    }

    var listarTurnoEnfermera = function(){
      var table = $('#id_tablaGestionTurnosEnfermera').DataTable();
      table.clear();
      table.destroy();
      
      
        var idioma = '';
      
  
      //$('#tablaListarChip').empty(); // empty in case the columns change
  
      //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
    
      var parametros={
        "p":"eLXzIh5jMU"
      }

        var table = $('#id_tablaGestionTurnosEnfermera').DataTable({
          
        
            "scrollX": true,
            "destroy":true,
           
            "ajax": {
                url: "../modules/turnoEnfermeria.php", // json datasource				
                type: 'GET',  // method  , by default get
                data :parametros
  
            },
          
            'columns': [
    
            { data: 'InicioTurno' },
            { data: 'FinTurno'},
            {data: 'Pendiente',
            render: function ( data, type, row ) {
              if (data=='1') {
                return('<svg class="ldi-jck7p6" width="50%" height="50%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><!--?xml version="1.0" encoding="utf-8"?--><!--Generator: Adobe Illustrator 21.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)--><svg version="1.1" id="圖層_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" style="transform-origin: 50px 50px 0px;" xml:space="preserve"><g style="transform-origin: 50px 50px 0px;"><g style="transform-origin: 50px 50px 0px; transform: scale(0.6);"><g style="transform-origin: 50px 50px 0px;"><g><style type="text/css" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -1s; animation-direction: normal;">.st0{fill:#333333;} .st1{fill:#FFFFFF;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st2{fill:#F5E6C8;stroke:#333333;stroke-width:3.5;stroke-linejoin:round;stroke-miterlimit:10;} .st3{fill:#E0E0E0;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st4{fill:#F5E169;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st5{opacity:0.2;stroke:#000000;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st6{fill:#F5E6C8;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st7{fill:#F5E6C8;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st8{fill:#F8B26A;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st9{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st10{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st11{fill:#E15B64;stroke:#333333;stroke-width:3.1815;stroke-miterlimit:10;} .st12{fill:#F47E60;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st13{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st14{fill:none;stroke:#849B87;stroke-width:3.5;stroke-miterlimit:10;} .st15{fill:none;stroke:#E15B64;stroke-width:3.5;stroke-miterlimit:10;} .st16{fill:none;stroke:#E15B64;stroke-width:3.726;stroke-miterlimit:10;} .st17{fill:#849B87;} .st18{fill:#666666;} .st19{fill:#F47E60;} .st20{fill:#C33737;} .st21{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st22{fill:#F5E6C8;stroke:#333333;stroke-width:3.1815;stroke-miterlimit:10;} .st23{fill:#E15B64;stroke:#333333;stroke-width:3.1644;stroke-miterlimit:10;} .st24{fill:#77A4BD;} .st25{fill:#FFFFFF;} .st26{fill:#F5E6C8;stroke:#333333;stroke-width:3.3063;stroke-miterlimit:10;} .st27{fill:none;} .st28{fill:none;stroke:#333333;stroke-width:3.0621;stroke-linecap:round;stroke-linejoin:round;} .st29{fill:none;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st30{fill:#F8B26A;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st31{fill:#F47E60;stroke:#333333;stroke-width:3.5;stroke-linejoin:round;stroke-miterlimit:10;} .st32{fill:#E15B64;} .st33{opacity:0.2;} .st34{fill:#F5E6C8;stroke:#333333;stroke-width:3.1644;stroke-miterlimit:10;} .st35{fill:#849B87;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st36{fill:#66503A;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st37{fill:#F8B26A;} .st38{fill:#FFFFFF;stroke:#E0E0E0;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st39{fill:none;stroke:#E0E0E0;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st40{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-dasharray:9.0185,9.0185;} .st41{fill:none;stroke:#849B87;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st42{fill:#FFFFFF;stroke:#F47E60;stroke-width:3.5;stroke-miterlimit:10;} .st43{fill:none;stroke:#F47E60;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st44{fill:none;stroke:#C33737;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st45{fill:#FFFFFF;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st46{fill:#333333;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st47{fill:#E0E0E0;} .st48{fill:none;stroke:#C33737;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st49{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st50{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-dasharray:8.0279,8.0279;} .st51{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st52{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-miterlimit:10;}</style><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.96s; animation-direction: normal;"><circle class="st45" cx="50" cy="57.5" r="30.75" fill="rgb(255, 255, 255)" stroke="rgb(51, 51, 51)" style="fill: rgb(255, 255, 255); stroke: rgb(51, 51, 51);"></circle></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.92s; animation-direction: normal;"><rect x="40.293" y="11.75" class="st46" width="19.415" height="7.5" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.88s; animation-direction: normal;"><rect x="45.5" y="17" class="st0" width="9" height="9" fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.84s; animation-direction: normal;"><rect x="20.751" y="29.251" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -15.7627 27.448)" class="st46" width="9" height="7" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.8s; animation-direction: normal;"><rect x="70.249" y="29.251" transform="matrix(-0.7071 -0.7071 0.7071 -0.7071 104.4454 108.7652)" class="st46" width="9" height="7" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.76s; animation-direction: normal;"><path class="st47" d="M50,57.5L33.029,40.529C28.686,44.873,26,50.873,26,57.5L50,57.5L50,57.5z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.72s; animation-direction: normal;"><path class="st47" d="M26,57.5c0,6.627,2.686,12.627,7.029,16.971L50,57.5H26z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.68s; animation-direction: normal;"><polygon class="st0" points="50,57.5 50,57.5 50,57.5 " fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></polygon></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.64s; animation-direction: normal;"><polygon class="st0" points="50,57.5 50,57.5 50,57.5 " fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></polygon></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.6s; animation-direction: normal;"><path class="st24" d="M50,57.5v24c6.627,0,12.627-2.686,16.971-7.029L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.56s; animation-direction: normal;"><path class="st24" d="M50,57.5L33.029,74.471C37.373,78.814,43.373,81.5,50,81.5L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.52s; animation-direction: normal;"><path class="st24" d="M66.971,40.529C62.627,36.186,56.627,33.5,50,33.5v24L66.971,40.529z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.48s; animation-direction: normal;"><path class="st47" d="M50,33.5c-6.627,0-12.627,2.686-16.971,7.029L50,57.5V33.5z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.44s; animation-direction: normal;"><path class="st24" d="M50,57.5h24c0-6.627-2.686-12.627-7.029-16.971L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.4s; animation-direction: normal;"><path class="st24" d="M50,57.5l16.971,16.971C71.314,70.127,74,64.127,74,57.5H50z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><metadata xmlns:d="https://loading.io/stock/" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.36s; animation-direction: normal;"><d:name class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.32s; animation-direction: normal;">timer</d:name><d:tags class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.28s; animation-direction: normal;">timer,watch,stopwatch,elapse,countdown,timing,temporal</d:tags><d:license class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.24s; animation-direction: normal;">cc-by</d:license><d:slug class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.2s; animation-direction: normal;">jck7p6</d:slug></metadata></g></g></g></g><style type="text/css" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.16s; animation-direction: normal;">@keyframes ld-fade {  0% {    opacity: 1;  }  100% {    opacity: 0;  }}@-webkit-keyframes ld-fade {  0% {    opacity: 1;  }  100% {    opacity: 0;  }}.ld.ld-fade {  -webkit-animation: ld-fade 1s infinite linear;  animation: ld-fade 1s infinite linear;}</style></svg></svg> ');
              } else {
                return('<span class="badge badge-info">HORARIO COMPLETO</span>');
              }
              }
            }
                
         
            
            
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
  
        
  
      $('#id_tablaGestionTurnosEnfermera tbody').off('click');
      $('#id_tablaGestionTurnosEnfermera tbody').on( 'click', '#idSelectPersona', function () {
         var data = table.row( $(this).parents('tr') ).data();


         
       
  
         
  } );
  
  
  
    }
