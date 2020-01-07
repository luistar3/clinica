	
    $('document').ready(function(){
       
      if (document.getElementById("idPermisoModulos" )) {


          //Bootstrap Duallistbox
          $('.duallistbox').bootstrapDualListbox();
          $('.select2').select2({
            theme: 'bootstrap4'
          }) ;

          $("#idPermisoModulos").change(function() {
            //alert($(this).val());
            fnc_listarPermisosModulo();
            
          });

          $("#idBtnGuardarPermisosModulos" ).click(function() {
            fnc_guardarPermisosPorModulos();
          });

          $("#idBtnGuardarUsuario" ).click(function() {
            fnc_agregarUsuario();
          });

          $("#idGuardarCambiosPermiso" ).click(function() {
            fnc_editarPermisosUsuario();
          });

         

          listarUsuarios();
          listarPersonaSinUsuario();

          fnc_listarSelectRoles();
          fnc_listarSelectRolesInsertar();
      } 
    
 


     // prueba_notificacion();

    });

    function fnc_agregarUsuario() {
      var usuario = document.getElementById("idUsuario").value;
      var contrasena = document.getElementById("idContrasena").value;
      var idrol = document.getElementById("idSelectRolUsuario").value;
      var idPersona = document.getElementById("idPersonaAgregarModificar").value;
      var Nombre = document.getElementById("idNombrePersona").value;
      var bol = true;
      if (usuario == "") { bol=false;  }
      if (contrasena == "") { bol=false;  }
      if (idrol == "") { bol=false;  }
      if (idPersona == "") { bol=false;  }
      if (bol) {
        var parametros={
          'p':'PGT78JTOxk',
          'usuario': usuario,
          'contrasena': contrasena,
          'idrol':idrol,
          'idPersona':idPersona,
          'Nombre' :Nombre
        }  

        $.ajax({
          type: "GET",
          url: "../modules/permisos.php",
          data: parametros,
          success: function (response) {
            if (response == "1") {
              toastr.success('El Usuario fue Creado con exito', 'Exito', {timeOut: 5000});
            } else {
              toastr.error('El Usuario Ya Existe', 'Error', {timeOut: 5000});
            }
          }
        });
      }else{
        toastr.error(' Datos Incompletos', 'Error', {timeOut: 5000});
      }

    
     
      console.log(parametros);
    }

    function fnc_listarSelectRolesInsertar() {
      $.ajax({
        type: "GET",
        url: "../modules/permisos.php",
        async: false,
        data: {"p":"6x8RlHMFSK"},
       
        success: function (response) {
          
          data =JSON.parse(response);

        
          document.getElementById("idSelectRolUsuario").innerHTML="";
          var select = document.getElementById( 'idSelectRolUsuario' );
          var selectEdit = document.getElementById( 'idPermisoModulosEdit' );
          var option;
          for(var key in data)
          {
            option = document.createElement( 'option' );
            option.value = data[key]["idRol"];
            option.text = data[key]["Nombre"];
            //option.selected = true;
            select.add( option );
            selectEdit.add( option );
          }
          
        }
      });
    }
    
    var listarPersonaSinUsuario = function(){
      var table = $('#idListarPersonasSinUsuario').DataTable();
      table.clear();
      table.destroy();
      
      
        var idioma = '';
      
  
      //$('#tablaListarChip').empty(); // empty in case the columns change
  
      //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
    
      var parametros={
        "p":"RP6rTTTOxk"
      }

        var table = $('#idListarPersonasSinUsuario').DataTable({
          
        
            "scrollX": true,
            "destroy":true,
           
            "ajax": {
                url: "../modules/permisos.php", // json datasource				
                type: 'GET',  // method  , by default get
                data :parametros
  
            },
          
            'columns': [
    
            { data: 'NombrePersona' },
            { data: 'NombreArea'},
            { data: 'Dni'},
            
            { "defaultContent":  '<div class="btn-group">'+
            '<button type="button"  title="ver" class="btn btn-primary"><a id="idSelectPersona"><i class="fas fa-arrow-circle-down"></i></a></button>'+
            '</div>'}
            
            
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
  
        
  
      $('#idListarPersonasSinUsuario tbody').off('click');
      $('#idListarPersonasSinUsuario tbody').on( 'click', '#idSelectPersona', function () {
         var data = table.row( $(this).parents('tr') ).data();


         document.getElementById("idPersonaAgregarModificar").value=data["id_persona"];
         document.getElementById("idNombrePersona").value=data["NombrePersona"];
         console.log(data);
      
       
  
         
  } );
  
  
  
    }




    var listarUsuarios = function(){
      var table = $('#idListarUsuarios').DataTable();
      table.clear();
      table.destroy();
      
      
        var idioma = '';
      
  
      //$('#tablaListarChip').empty(); // empty in case the columns change
  
      //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
    
      var parametros={
        "p":"eLXzIh5jMU"
      }

        var table = $('#idListarUsuarios').DataTable({
          
        
            "scrollX": true,
            "destroy":true,
           
            "ajax": {
                url: "../modules/permisos.php", // json datasource				
                type: 'GET',  // method  , by default get
                data :parametros
  
            },
          
            'columns': [
            { data: 'Nombre',
            render: function(data){
             
                return('<span >'+data+'</span>');
                
              
            } },
            { data: 'Usuario' },
            { data: 'NombreRol'},
            { data: 'Dni'},
            { data: 'Estado',
            render: function ( data, type, row ) {
              if (data=='1') {
                return('<a id="hdUsuario"><label><input type="checkbox" checked><span class="slider round"></span></label></a>');
              } else {
                return('<a id="hdUsuario"><label><input type="checkbox"><span class="slider round"></span></label> </a>');
              };
              }
            },
          
            { "defaultContent":  '<button type="button" id="editarPermiso" data-toggle="modal" data-target="#modalEditarPermisos" title="ver" class="btn btn-danger"><a><i class="fas fa-arrow-circle-down"></i></a></button>'}
            
            
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
  
        
  
      $('#idListarUsuarios tbody').off('click');
      $('#idListarUsuarios tbody').on( 'click', '#editarChip', function () {
         var data = table.row( $(this).parents('tr') ).data();
         console.log(data);
      
       
  
         
  } );
  
      $('#idListarUsuarios tbody').on( 'click', '#hdUsuario', function () {
        
        var data = table.row( $(this).parents('tr') ).data();
        console.log(data);
      } );


      $('#idListarUsuarios tbody').on( 'click', '#editarPermiso', function () {
        
        var data = table.row( $(this).parents('tr') ).data();

        $('#idNombrePersonaPermiso').val(data["Nombre"]);
       document.getElementById("idPermisoModulosEdit").value=data["Rol_idRol"];
       document.getElementById("idHiddenIdUsuario").value=data["id_usuario"];
       
       $('.select2').select2({ theme: 'bootstrap4'});
        console.log(data);
      } );


      
  
  
    }





function fnc_guardarPermisosPorModulos(){
  var select1 = document.getElementById("idSelectPermisosPorModulo");
  var idPermisoModulos = document.getElementById("idPermisoModulos").value;
  
    var selected1 = [];
    for (var i = 0; i < select1.length; i++) {
        if (select1.options[i].selected) selected1.push(select1.options[i].value);
    }
    // console.log(selected1);
    var countArray= select1.length;
    if (countArray===0) {
      selected1=0;
    }
    //console.log(selected1.length);
    var parametros={
      "p":"xZ6rQTOHxk",
      "idModulos" : selected1,
      "idPermisoModulos": idPermisoModulos
    }
    console.log(parametros);
    $.ajax({
      type: "GET",
      url: "../modules/permisos.php",
      async: false,
      data: parametros,
      success: function (response) {
        console.log(response);
      }
    });
}

    function fnc_listarPermisosModulo(){
      var idRol = document.getElementById("idPermisoModulos").value;
      var parametros = {
        'p':'J9Y0B7rh86',
        'idRol': idRol
      }
      //alert("sds");
      $.ajax({
        type: "GET",
        url: "../modules/permisos.php",
        async: false,
        data: parametros,
       
        success: function (response) {
          
          data =JSON.parse(response);

        
          document.getElementById("idSelectPermisosPorModulo").innerHTML="";
          var select = document.getElementById( 'idSelectPermisosPorModulo' );
          var option;
          for(var key in data)
          {
            // option = document.createElement( 'option' );
            // option.value = data[key]["idRol"];
            // option.text = data[key]["Nombre"];
            
            // select.add( option );
            if (data[key]["existe"]=="1") {
              $('#idSelectPermisosPorModulo').append( '<option value="'+data[key]["idModulos"]+'" selected="selected">'+data[key]["Nombre"]+'</option>' );
            } else {
              $('#idSelectPermisosPorModulo').append( '<option value="'+data[key]["idModulos"]+'">'+data[key]["Nombre"]+'</option>' );
            }
            
           
          }
          //$('.duallistbox').bootstrapDualListbox('destroy');
          $('.duallistbox').bootstrapDualListbox('refresh');
        }
      });


      $('.duallistbox').bootstrapDualListbox('refresh', true);
    };
    function prueba_notificacion() {
        if (Notification) {
        if (Notification.permission !== "granted") {
        Notification.requestPermission()
        }
        var title = "Xitrus"
        var extra = {
        icon: "http://xitrus.es/imgs/logo_claro.png",
        body: "Notificación de prueba en Xitrus"
        }
        var noti = new Notification( title, extra)
        noti.onclick = {
        // Al hacer click
        }
        noti.onclose = {
        // Al cerrar
        }
        setTimeout( function() { noti.close() }, 10000)
        }
      }
    function fnc_listarSelectRoles() {
      $.ajax({
        type: "GET",
        url: "../modules/permisos.php",
        async: false,
        data: {"p":"6x8RlHMFSK"},
       
        success: function (response) {
          
          data =JSON.parse(response);

        
          document.getElementById("idPermisoModulos").innerHTML="";
          var select = document.getElementById( 'idPermisoModulos' );
          var option;
          for(var key in data)
          {
            option = document.createElement( 'option' );
            option.value = data[key]["idRol"];
            option.text = data[key]["Nombre"];
            //option.selected = true;
            select.add( option );
          }
          
        }
      });
    }

    function fnc_editarPermisosUsuario(params) {

      var idRol = document.getElementById("idPermisoModulosEdit").value;
      var idUsuario = document.getElementById("idHiddenIdUsuario").value;

      var parametros = {
        
        "idRol"  : idRol,
        "idUsuario": idUsuario
      }

      console.log(parametros);

      $.ajax({
        type: "POST",
        async:false,
        url: "../modules/permisos.php?p=GTT78Oxk",
        data: parametros,
        success: function (response) {

          if(response=="1"){
            toastr.success('Editado con exito', 'Exito', {timeOut: 5000});
            listarUsuarios();
            $("#idCerrarCambiosPermiso").click();
          }
          else if(response=="2"){
            toastr.error('Ocurrio un problema', 'Error', {timeOut: 5000});
          }
          
        }
      });
      
    }