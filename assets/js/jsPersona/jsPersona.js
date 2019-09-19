
$('document').ready(function(){

    if ( document.getElementById( "id_tablaGestion" )) {

        $('.select2').select2({
            theme: 'bootstrap4'
          });

        $('#id_selectAreaBuscar').change(function () { 
          fnc_recargarTablaIdArea();
          
        });

          fnc_listarOpciones();

        $( "#id_nuevoRegistroPersona" ).click(function() {
          fnc_nuevoRegistroPersonaLimpiar();
        });

        $( "#id_btnGuardarModificarPersona" ).click(function() {
          fnc_guardarModificarPersona();
        });

        
    }


});

function fnc_guardarModificarPersona() {
    var id_persona = document.getElementById("id_persona").value;
    var id_txtDniPersona = document.getElementById("id_txtDniPersona").value;
    var id_txtNombrePersona = document.getElementById("id_txtNombrePersona").value;
    var id_txtApePatPersona = document.getElementById("id_txtApePatPersona").value;
    var id_txtApeMatPersona = document.getElementById("id_txtApeMatPersona").value;
    var id_selectArea = document.getElementById("id_selectArea").value;
    var id_selectSexo = document.getElementById("id_selectSexo").value;
    var id_selectEspecializacion = document.getElementById("id_selectEspecializacion").value;
    var id_selectTipoPersona = document.getElementById("id_selectTipoPersona").value;
    //var id_btnGuardarModificarPersona = document.getElementById("id_btnGuardarModificarPersona").disabled=true;

    var validacion = true;
    if (id_persona=="") { validacion=false; }
    if (id_txtDniPersona=="") { validacion=false; }
    if (id_txtNombrePersona=="") { validacion=false; }
    if (id_txtApePatPersona=="") { validacion=false; }
    if (id_txtApeMatPersona=="") { validacion=false; }
    
    if ( validacion ) {
      var parametros = {
        "p"                       : "xZ6rQTOHxk",
        "id_persona"              : id_persona,
        "id_txtDniPersona"        : id_txtDniPersona,
        "id_txtNombrePersona"     : id_txtNombrePersona,
        "id_txtApePatPersona"     : id_txtApePatPersona,
        "id_txtApeMatPersona"     : id_txtApeMatPersona,
        "id_selectArea"           : id_selectArea,
        "id_selectSexo"           : id_selectSexo,
        "id_selectEspecializacion": id_selectEspecializacion,
        "id_selectTipoPersona"    : id_selectTipoPersona
      }
      console.log(parametros);

      swal({
          title: '¿Estás Seguro?',
          text: "Esta Seguro Insertar Esta Persona",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Si, Estoy Seguro!',
          cancelButtonText: 'No!'
      }).then(function (result) {       

            if(result.value){
                
              //alert("holas");
              fnc_enviarNuevaPersona(parametros);
              

            }
        
      });
     
    }else{
      toastr.error('Rellene todos los campos', 'ERROR!', {timeOut: 5000});
    }

   



    
}
function fnc_enviarNuevaPersona(parametros){


  $.ajax({
    type: "GET",
    url: "../modules/persona.php",
    data: parametros,
    async: false,
  
    success: function(response) {
       if (response == "1") {
        toastr.success('Proceso exitoso', 'Modificado', {timeOut: 5000});
       }
       if(response == "0"){
        toastr.error('Ups', 'ERROR!', {timeOut: 5000});
       }
       if(response == "2"){
        toastr.error('Ya existe', 'ERROR!', {timeOut: 5000});
       }
       if(response == "3"){
        toastr.error('Ya existe Dni', 'ERROR!', {timeOut: 5000});
       }
    },
    failure: function (response) {
    //  
    },
    complete : function(xhr, status) {
    //
    }
  });

}

function fnc_nuevoRegistroPersonaLimpiar(){
  $("#id_btnGuardarModificarPersona").attr('value', 'GUARDAR');

      document.getElementById("id_persona").value="0";
      document.getElementById("id_txtDniPersona").value="";
      document.getElementById("id_txtNombrePersona").value="";
      document.getElementById("id_txtApePatPersona").value="";
      document.getElementById("id_txtApeMatPersona").value="";
      // document.getElementById("id_selectArea").value="";
      // document.getElementById("id_selectSexo").value="";
      // document.getElementById("id_selectEspecializacion").value="";
      // document.getElementById("id_selectTipoPersona").value="";
      document.getElementById("id_btnGuardarModificarPersona").disabled=false;




}

function fnc_recargarTablaIdArea() {
  var id_Area = document.getElementById("id_selectAreaBuscar").value;
  fnc_listarPersonasPoArea(id_Area);
  console.log(id_Area);
}

function fnc_listarOpciones(){

    var parametros = {
      "p" : "eLXzIh5jMU"

    }
    $.ajax({
      type: "GET",
      url: "../modules/persona.php",
      data: parametros,
      async: false,
    
      success: function(response) {
         console.log(JSON.parse(response));
         var datos = JSON.parse(response);
         var area = datos["area"];
         var tipoPersona = datos["tipoPersona"];
         var especializacion = datos["especializacion"];


          document.getElementById("id_selectArea").innerHTML="";
          var select = document.getElementById( 'id_selectArea' );
          var option;
          for(var key in area)
          {
            option = document.createElement( 'option' );
            option.value = area[key]["id_area"];
            option.text = area[key]["Nombre"];
            select.add( option );
          }

          document.getElementById("id_selectEspecializacion").innerHTML="";
          var selectEspe = document.getElementById( 'id_selectEspecializacion' );
          var optionEspe;
          for(var keyespe in especializacion)
          {
            optionEspe = document.createElement( 'option' );
            optionEspe.value = especializacion[keyespe]["id_especializacion"];
            optionEspe.text = especializacion[keyespe]["Nombre"];
            selectEspe.add( optionEspe );
          }


          document.getElementById("id_selectTipoPersona").innerHTML="";
          var selectTipo = document.getElementById( 'id_selectTipoPersona' );
          var optionTipo;
          for(var keyTipo in tipoPersona)
          {
            optionTipo = document.createElement( 'option' );
            optionTipo.value = tipoPersona[keyTipo]["id_tipo_persona"];
            optionTipo.text = tipoPersona[keyTipo]["nombre"];
            selectTipo.add( optionTipo );
          }

          document.getElementById("id_selectAreaBuscar").innerHTML="";
          var selectTipoB = document.getElementById( 'id_selectAreaBuscar' );
          var optionTipoB;
          for(var keyTipoB in area)
          {
            optionTipoB = document.createElement( 'option' );
            optionTipoB.value = area[keyTipoB]["id_area"];
            optionTipoB.text = area[keyTipoB]["Nombre"];
            selectTipoB.add( optionTipoB );
          }

          



        
      },
      failure: function (response) {
        
      },
      complete : function(xhr, status) {
        var seleccion = document.getElementById("id_selectAreaBuscar").value;
        fnc_listarPersonasPoArea(seleccion);
        
        
    }
    });
}

function fnc_listarPersonasPoArea(id_Area){

      var parametros = {
        "p": "xP6riiTOHxk",
        "id_area" : id_Area
      }
      var table = $('#id_tablaGestion').DataTable({
            
          
        "scrollX": true,
        "destroy":true,
      
        "ajax": {
            url: "../modules/persona.php", // json datasource				
            type: 'GET',  // method  , by default get
            data :parametros

        },
      
        'columns': [
        { data: 'Dni' },
        { data: 'Nombre' },
        { data: 'ApePat'},
        { data: 'ApeMat'},
        { data: 'Sexo'},
        { data: 'area_Nombre'},
        { data: 'tipo_Nombre'},
        { "defaultContent": '<div class="btn-group">'+
        '<button type="button"  title="Editar" class="btn btn-danger"><a id="editarPersona"><i class="fas fa-user-edit"></i></a></button>'+
        '<button type="button"  title="Eliminar" class="btn btn-danger"><a id="eliminarPersona"><i class="fas fa-user-slash"></i></a></button>'+
        '<button type="button"  title="ver" class="btn btn-danger"><a id="verPersona"><i class="far fa-eye"></i></a></button>'+
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
    $('#id_tablaGestion tbody').off('click');
    $('#id_tablaGestion tbody').on( 'click', '#editarPersona', function () {
       
      var data = table.row( $(this).parents('tr') ).data();
      //  alert("sd");
      console.log(data);

      document.getElementById("id_persona").value= data["id_persona"];
      document.getElementById("id_txtDniPersona").value= data["Dni"];
      document.getElementById("id_txtNombrePersona").value=data["Nombre"];
      document.getElementById("id_txtApePatPersona").value=data["ApePat"];
      document.getElementById("id_txtApeMatPersona").value=data["ApeMat"];
      document.getElementById("id_selectArea").value=data["id_area"];
      document.getElementById("id_selectSexo").value=data["Sexo"];
      document.getElementById("id_selectEspecializacion").value=data["id_especializacion"];
      document.getElementById("id_selectTipoPersona").value=data["id_tipo_persona"];
      document.getElementById("id_btnGuardarModificarPersona").disabled=false;
      
      $('.select2').select2({ theme: 'bootstrap4'});
      
      $("#id_btnGuardarModificarPersona").attr('value', 'MODIFICAR');
      //$("#id_selectArea > option[value='"+ data["id_area"] +"']").attr("selected",true)
      
      // $("#bd-example-modal-lg").modal('show');
      // $('#bd-example-modal-lg form').get(0).reset();
      // $('#chipGuardar').attr("disabled", false);
      // $('#chipGuardar').removeClass('disabled');
      // fnc_chipMostrarDatosEditar(data);
      
      
     
      //fnc_reiniciarValidador();

       
      } );

      $('#id_tablaGestion tbody').on( 'click', '#eliminarPersona', function () {
       
          var data = table.row( $(this).parents('tr') ).data();
      
         
          
          var parametrosEliminar={
            "p":"uctftGr4Jm",
            "id":data["id_persona"]
          }

          swal({
            title: '¿Estás Seguro?',
            text: "Esta Seguro de Eliminar a Esta Persona",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, Estoy Seguro!',
            cancelButtonText: 'No!'
          }).then(function (result) {       
    
                if(result.value){
                    
                  //alert("holas");
                  fnc_enviarParametrosEliminarPersona(parametrosEliminar);
                  
    
                }
            
          });
          
          
         
      } );


      
}
function fnc_enviarParametrosEliminarPersona(parametrosEliminar){
  $.ajax({
    type: "GET",
    url: "../modules/persona.php",
    data: parametrosEliminar,          
    success: function (response) {
      if (response=="1") {
        toastr.success('Proceso exitoso', 'Eliminado', {timeOut: 5000});
        fnc_recargarTablaIdArea();
        fnc_nuevoRegistroPersonaLimpiar();
      }
      if (response=="0") {
        toastr.error('Algo Inesperado Paso', 'Erro', {timeOut: 5000});
      }
    }
  });
}

var listarPersonasDataTables = function(){
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
        
          { "defaultContent": '<div class="dropdown"><a class="btn btn-outline-primary dropdown-toggle" href="#" role="button" data-toggle="dropdown"><i class="fa fa-ellipsis-h"></i></a><div class="dropdown-menu dropdown-menu-right"><a id="verHorario" class="dropdown-item" href="#"><i class="fa fa-eye"></i>Ver</a> 	</div>	</div>'}
          
          
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
      //document.getElementById("id_btn_eliminarHorario").disabled=false;
      //document.getElementById("id_btn_eliminarHorario").disabled=false;
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


function fncDescargarDiv2(nombreDivFront, nombreDivBack, nombreArchivo){

    var elementFront = $("#" + nombreDivFront)[0];
    var elementBack = $("#" + nombreDivBack)[0];

    var img_w = 548;
    var img_h = 860;

    var pdf = new jsPDF('p', 'mm', [img_w, img_h]);

    html2canvas(elementFront, {scale: 2} ).then(function (canvasFront) {

      pdf.addPage();
      var imgDataFront = canvasFront.toDataURL('image/png', 1.0);
      pdf.addImage(imgDataFront, 'PNG', 0, 0, img_w, img_h); 

    });

    html2canvas(elementBack, {scale: 2} ).then(function (canvasBack) {

      pdf.addPage();
      var imgDataBack = canvasBack.toDataURL('image/png', 1.0);
      pdf.addImage(imgDataBack, 'PNG', 0, 0, img_w, img_h);          

    });

    pdf.save(nombreArchivo + ".pdf");

}


function downloadURI(uri, name) {
    var link = document.createElement("a");

    link.download = name;
    link.href = uri;
    document.body.appendChild(link);
    link.click();
    // clearDynamicLink(link); 
    var element = link;
    element.parentNode.removeChild(element);
}



function SoloNumeros(evt){
    if(window.event){//asignamos el valor de la tecla a keynum
     keynum = evt.keyCode; //IE
    }
    else{
     keynum = evt.which; //FF
    } 
    //comprobamos si se encuentra en el rango numérico y que teclas no recibirá.
    if((keynum > 47 && keynum < 58) || keynum == 8 || keynum == 13 || keynum == 6 ){
     return true;
    }
    else{
     return false;
    }
   }






