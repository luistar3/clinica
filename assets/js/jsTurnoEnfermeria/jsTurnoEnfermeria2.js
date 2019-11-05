	
    $('document').ready(function(){

      if (document.getElementById("id_tablaGestionTurnosEnfermera2" )) {
        // $("#idBtnIniciarTurnoEnfermera").click(function(e){

        //   fnc_insertarInicializacionDeTurno();
        // });
        $('#idBtnNuevoTurno').click(function(e) {

          fnc_crearNuevoTurnoEnfermera();

          
        });

        $('#idBtnLoginNuevoTurno').click(function(e) {

          fnc_AgregarNuevoTurnoEnfermera();

          
        }); 
        
        $('#idBtnLoginTurno').click(function(e) {

          var usuario = document.getElementById("txtIdUsuario").value;
          var password = document.getElementById("txtIdPassword").value;
          var idLog = document.getElementById("txtIdIdentificarUsuario").value;

          var parametros = {
            'usuario' : usuario,
            'password' : password,
            'idLog' : idLog,
            'p': 'qRRTTOHxk'
          }

          //console.log(parametros);

          if (usuario =="" || password =="" || idLog =='0') {
            
          }
          else{
            console.log(parametros);

            fnc_terminarTrunoEnfermera(parametros);
          }
          
        });
        $('#idBtnCancelarTurno').click(function(e) {

          document.getElementById("txtIdUsuario").value='';
          document.getElementById("txtIdFecha").value='';
          document.getElementById("txtIdIdentificarUsuario").value='0';
          

          
        });

        listarTurnoEnfermera2();
       // fnc_cargarRelojContadoTurno();
        //count();

       
        
      }
        
     


    });
    // function fnc_AgegarNuevoTurno2() {
    //   var usuario = document.getElementById("txtIdUsuario").value;
    //   var password = document.getElementById("txtIdPassword").value;

    //   var parametros = {
    //      'p': 'TGHHYJSERD',
    //      'usuario' : usuario,
    //      'password': password
    //   }

    //   $.ajax({
    //     type: "get",
    //     url: "../modules/turnoEnfermeria.php",
    //     data: parametros,
       
    //     success: function (response) {
          
    //     }
    //   });

    // }

    function fnc_AgregarNuevoTurnoEnfermera(){
  
      var usuario = document.getElementById("txtIdUsuario").value;
      var password = document.getElementById("txtIdPassword").value;

      var parametros ={
        'usuario' : usuario,
        'password' : password,
        'p' : '4GTYy67'
      }

      $.ajax({
        type: "GET",
        url: "../modules/turnoEnfermeria.php",
        data: parametros,
        
        success: function (response) {
          console.log(response);
          if (response=="1") {
            
            toastr.success('Se Agrego Nuevo Turno', 'Exito', {timeOut: 5000});
            listarTurnoEnfermera2();
            
          }
          if (response=="2") {
            toastr.error('Tenemos un problema', 'Error', {timeOut: 5000}); 
          }
          if (response=="3") {
            toastr.error('Tiene un turno pendiente', 'Error', {timeOut: 5000});
          }
          if (response=="4") {
            toastr.error('No se encontro a la enfermera', 'Error', {timeOut: 5000});
          }

          if (response=="10") {
            toastr.error('Usuario o Contraseña incorrecta', 'Error', {timeOut: 5000});
          }

        }
      });
    };

    function fnc_crearNuevoTurnoEnfermera() {
      document.getElementById("txtIdUsuario").disabled=false;
      document.getElementById('idDiv2Visualizador').hidden = "";
      document.getElementById('idDivVisualizador').hidden = "hidden";
      document.getElementById('txtIdFecha').hidden = "hidden";
      document.getElementById('txtIdPassword').value= "";
      document.getElementById('txtIdUsuario').value= "";
      
      
      
    }

    function fnc_terminarTrunoEnfermera(parametros) {

      swal({
        title: '¿Estás Seguro?',
        text: "Esta Seguro de Desea Terminar el Turno",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, Estoy Seguro!',
        cancelButtonText: 'No!'
      }).then(function (result) {       

            if(result.value){
                
              $.ajax({
                type: "GET",
                url: "../modules/turnoEnfermeria.php",
                data: parametros,
                
                success: function (response) {
                  if (response=="1") {
                    toastr.success('Se Finalizo el Turno', 'Exito', {timeOut: 5000});
                    listarTurnoEnfermera2();
                    
                  }
                  if (response=="0") {
                    toastr.error('No Fue Finalizado; contraseña incorrecta', 'Error', {timeOut: 5000});
                  }
                  if (response=="2") {
                    toastr.error('No Fue Finalizado; pongase en contacto con el Administrador', 'Error', {timeOut: 5000});
                  }
                  if (response=="4") {
                    toastr.error('No Fue Finalizado; Turno ya finalizado', 'Error', {timeOut: 5000});
                  }
                  if (response=="10") {
                    toastr.error('Usuario o Contraseña incorrecta', 'Error', {timeOut: 5000});
                  }
                }
              });
              

            }
        
      });

      
    }

    function count() {

      var parametros = {
        'p': 'xFRiiTOHxk',
          }
      $.ajax({
        type: "GET",
        url: "../modules/turnoEnfermeria.php",
        data:parametros,
   
        success: function (response) {
          var datos = JSON.parse(response);
          console.log(datos);

          for(var key in datos)
          {
//            document.write("<br>"+key+" - "+json[key]);
            if (document.getElementById(datos[key]['Diferencia'])) {
              //console.log(datos[key]['Diferencia']);
              if (datos[key]['Pendiente']=='1') {
                var tiempo = datos[key]['Diferencia'];
                $( '#'+tiempo+'' ).countdown( {
                  from: tiempo, // 3 minutes (3*60)
                  to: 1000000, // stop at zero
                  movingUnit: 1000, // 1000 for 1 second increment/decrements
                  timerEnd: undefined,
                  outputPattern: '$day Dias $hour : $minute : $second',
                  autostart: true
              } );
              }else{
                var tiempo = datos[key]['Diferencia'];
              $( '#'+tiempo+'' ).countdown( {
                from: tiempo, // 3 minutes (3*60)
                to: 1, // stop at zero
                movingUnit: 1000, // 1000 for 1 second increment/decrements
                timerEnd: undefined,
                outputPattern: '$day Dias $hour : $minute : $second',
                autostart: false
              } );
              }
           

            } 



            
          }

        }
      });

  
    }

    var listarTurnoEnfermera2 = function(){
      var table = $('#id_tablaGestionTurnosEnfermera2').DataTable();
      table.clear();
      table.destroy();
      
      
        var idioma = '';
      
  
      //$('#tablaListarChip').empty(); // empty in case the columns change
  
      //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
    
      var parametros={
        "p":"xP6riiTOHxk"
      }

        var table = $('#id_tablaGestionTurnosEnfermera2').DataTable({
          
            "initComplete": function(settings, json) {
            count();
             },
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
            { data: 'FinTurno'},
            { data: 'Diferencia',
            render : function(data){
              return('<p class="timer-holder"><span id="'+data+'">'+data+'</span></p>');
            }
          },
            {data: 'Pendiente',
            render: function ( data) {
              if (data=='1') {
                return('<svg class="ldi-jck7p6" width="50%" height="50%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><!--?xml version="1.0" encoding="utf-8"?--><!--Generator: Adobe Illustrator 21.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)--><svg version="1.1" id="圖層_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" style="transform-origin: 50px 50px 0px;" xml:space="preserve"><g style="transform-origin: 50px 50px 0px;"><g style="transform-origin: 50px 50px 0px; transform: scale(0.6);"><g style="transform-origin: 50px 50px 0px;"><g><style type="text/css" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -1s; animation-direction: normal;">.st0{fill:#333333;} .st1{fill:#FFFFFF;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st2{fill:#F5E6C8;stroke:#333333;stroke-width:3.5;stroke-linejoin:round;stroke-miterlimit:10;} .st3{fill:#E0E0E0;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st4{fill:#F5E169;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st5{opacity:0.2;stroke:#000000;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st6{fill:#F5E6C8;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st7{fill:#F5E6C8;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st8{fill:#F8B26A;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st9{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st10{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st11{fill:#E15B64;stroke:#333333;stroke-width:3.1815;stroke-miterlimit:10;} .st12{fill:#F47E60;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st13{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st14{fill:none;stroke:#849B87;stroke-width:3.5;stroke-miterlimit:10;} .st15{fill:none;stroke:#E15B64;stroke-width:3.5;stroke-miterlimit:10;} .st16{fill:none;stroke:#E15B64;stroke-width:3.726;stroke-miterlimit:10;} .st17{fill:#849B87;} .st18{fill:#666666;} .st19{fill:#F47E60;} .st20{fill:#C33737;} .st21{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st22{fill:#F5E6C8;stroke:#333333;stroke-width:3.1815;stroke-miterlimit:10;} .st23{fill:#E15B64;stroke:#333333;stroke-width:3.1644;stroke-miterlimit:10;} .st24{fill:#77A4BD;} .st25{fill:#FFFFFF;} .st26{fill:#F5E6C8;stroke:#333333;stroke-width:3.3063;stroke-miterlimit:10;} .st27{fill:none;} .st28{fill:none;stroke:#333333;stroke-width:3.0621;stroke-linecap:round;stroke-linejoin:round;} .st29{fill:none;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st30{fill:#F8B26A;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st31{fill:#F47E60;stroke:#333333;stroke-width:3.5;stroke-linejoin:round;stroke-miterlimit:10;} .st32{fill:#E15B64;} .st33{opacity:0.2;} .st34{fill:#F5E6C8;stroke:#333333;stroke-width:3.1644;stroke-miterlimit:10;} .st35{fill:#849B87;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st36{fill:#66503A;stroke:#333333;stroke-width:3.5;stroke-miterlimit:10;} .st37{fill:#F8B26A;} .st38{fill:#FFFFFF;stroke:#E0E0E0;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st39{fill:none;stroke:#E0E0E0;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st40{fill:none;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-dasharray:9.0185,9.0185;} .st41{fill:none;stroke:#849B87;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st42{fill:#FFFFFF;stroke:#F47E60;stroke-width:3.5;stroke-miterlimit:10;} .st43{fill:none;stroke:#F47E60;stroke-width:3.5;stroke-linecap:round;stroke-miterlimit:10;} .st44{fill:none;stroke:#C33737;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st45{fill:#FFFFFF;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st46{fill:#333333;stroke:#333333;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st47{fill:#E0E0E0;} .st48{fill:none;stroke:#C33737;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st49{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;} .st50{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-dasharray:8.0279,8.0279;} .st51{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;} .st52{fill:none;stroke:#FFFFFF;stroke-width:3.5;stroke-miterlimit:10;}</style><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.96s; animation-direction: normal;"><circle class="st45" cx="50" cy="57.5" r="30.75" fill="rgb(255, 255, 255)" stroke="rgb(51, 51, 51)" style="fill: rgb(255, 255, 255); stroke: rgb(51, 51, 51);"></circle></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.92s; animation-direction: normal;"><rect x="40.293" y="11.75" class="st46" width="19.415" height="7.5" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.88s; animation-direction: normal;"><rect x="45.5" y="17" class="st0" width="9" height="9" fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.84s; animation-direction: normal;"><rect x="20.751" y="29.251" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -15.7627 27.448)" class="st46" width="9" height="7" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.8s; animation-direction: normal;"><rect x="70.249" y="29.251" transform="matrix(-0.7071 -0.7071 0.7071 -0.7071 104.4454 108.7652)" class="st46" width="9" height="7" fill="rgb(51, 51, 51)" stroke="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51); stroke: rgb(51, 51, 51);"></rect></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.76s; animation-direction: normal;"><path class="st47" d="M50,57.5L33.029,40.529C28.686,44.873,26,50.873,26,57.5L50,57.5L50,57.5z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.72s; animation-direction: normal;"><path class="st47" d="M26,57.5c0,6.627,2.686,12.627,7.029,16.971L50,57.5H26z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.68s; animation-direction: normal;"><polygon class="st0" points="50,57.5 50,57.5 50,57.5 " fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></polygon></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.64s; animation-direction: normal;"><polygon class="st0" points="50,57.5 50,57.5 50,57.5 " fill="rgb(51, 51, 51)" style="fill: rgb(51, 51, 51);"></polygon></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.6s; animation-direction: normal;"><path class="st24" d="M50,57.5v24c6.627,0,12.627-2.686,16.971-7.029L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.56s; animation-direction: normal;"><path class="st24" d="M50,57.5L33.029,74.471C37.373,78.814,43.373,81.5,50,81.5L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.52s; animation-direction: normal;"><path class="st24" d="M66.971,40.529C62.627,36.186,56.627,33.5,50,33.5v24L66.971,40.529z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.48s; animation-direction: normal;"><path class="st47" d="M50,33.5c-6.627,0-12.627,2.686-16.971,7.029L50,57.5V33.5z" fill="rgb(224, 224, 224)" style="fill: rgb(224, 224, 224);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.44s; animation-direction: normal;"><path class="st24" d="M50,57.5h24c0-6.627-2.686-12.627-7.029-16.971L50,57.5L50,57.5z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><g class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.4s; animation-direction: normal;"><path class="st24" d="M50,57.5l16.971,16.971C71.314,70.127,74,64.127,74,57.5H50z" fill="rgb(119, 164, 189)" style="fill: rgb(119, 164, 189);"></path></g><metadata xmlns:d="https://loading.io/stock/" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.36s; animation-direction: normal;"><d:name class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.32s; animation-direction: normal;">timer</d:name><d:tags class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.28s; animation-direction: normal;">timer,watch,stopwatch,elapse,countdown,timing,temporal</d:tags><d:license class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.24s; animation-direction: normal;">cc-by</d:license><d:slug class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.2s; animation-direction: normal;">jck7p6</d:slug></metadata></g></g></g></g><style type="text/css" class="ld ld-fade" style="transform-origin: 50px 50px 0px; animation-duration: 1s; animation-delay: -0.16s; animation-direction: normal;">@keyframes ld-fade {  0% {    opacity: 1;  }  100% {    opacity: 0;  }}@-webkit-keyframes ld-fade {  0% {    opacity: 1;  }  100% {    opacity: 0;  }}.ld.ld-fade {  -webkit-animation: ld-fade 1s infinite linear;  animation: ld-fade 1s infinite linear;}</style></svg></svg> ');
              } else {
                return('<span class="badge badge-info">HORARIO COMPLETO</span>');
              }
              }
            },
            { data: 'Pendiente2',
            render : function(data){
              if (data=="1") {
                return('<div class="btn-group">'+
                '<button type="button"  title="Terminar Turno" class="btn btn-info"><a id="idSelectPersona"><i class="fas fa-stopwatch"></i></a></button>'+
                '</div>');
              } else {
                return('*');
                
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
  
        table
    .column( '1:visible' )
    .order( 'desc' )
    .draw();
  
      $('#id_tablaGestionTurnosEnfermera2 tbody').off('click');
      $('#id_tablaGestionTurnosEnfermera2 tbody').on( 'click', '#idSelectPersona', function () {
         var data = table.row( $(this).parents('tr') ).data();

         console.log(data);

      document.getElementById("txtIdUsuario").disabled=false;
      document.getElementById('idDiv2Visualizador').hidden = "hidden";
      document.getElementById('idDivVisualizador').hidden = "";
      document.getElementById('txtIdFecha').hidden = "";
      document.getElementById('txtIdPassword').value=""

        document.getElementById("txtIdUsuario").value=data["Usuario"];

        document.getElementById("txtIdFecha").value=data["InicioTurno"];

        document.getElementById("txtIdIdentificarUsuario").value=data["id_log"];


         
       
  
         
  } );
  
  
  
    }
