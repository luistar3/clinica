
   $('document').ready(function(){
       
    if (document.getElementById("input-708" )) {
        fncCargarValoresCajasInputs();
        fncSubirImagenAjaxCampana();
        fncListarAreas();
        fncModificarImagenAjaxCampana();
        $('#id_selectAreaBuscar').select2({
            theme: 'bootstrap4'
        });
        fnc_listarCampanasActivas();

        document.getElementById("id_btnModificarInfoCampana").addEventListener("click", function(){
            fnc_modificarInfoCampana();
          });
      
    }
});

function fncCargarValoresCajasInputs() {

    document.getElementById('id_txtFechaInicioCampana').valueAsDate = new Date();
    document.getElementById('id_txtFechaFinCampana').valueAsDate = new Date();
    
}

function fncListarAreas() {

  
    var parametros = {
        "p" : "J9Y0B7rh86"
  
      }

      //console.log("ssdsd");
    $.ajax({
        type: "GET",
        url: "../modules/campana.php",
        data: parametros,
      
        success: function (response) {
            var datos = JSON.parse(response);
            var area = datos["area"];

         document.getElementById("id_selectAreaBuscar").innerHTML="";
         var select = document.getElementById( 'id_selectAreaBuscar' );
         var option;
   
         for(var key in area)
         {
           option = document.createElement( 'option' );
           option.value = area[key]["id_area"];
           option.text = area[key]["Nombre"];
           select.add( option );
         }
        }
    });
}
function fncSubirImagenAjaxCampana() {
      

    $(document).ready(function() {

        $("#input-708").fileinput({

           
            uploadUrl: "../modules/campana.php?p=" + "xZ6rQTOHxk",
            uploadAsync: false,
            language: "es",
            fileActionSettings : {
                // Disable
                showUpload : false,
                showRemove :false
                },
            maxFileCount: 1,
            allowedFileExtensions: ['jpg', 'png', 'gif'],
            uploadExtraData : function ( previewId , index ) {  
                return { 
                nombre : document.getElementById("id_txtNombreCampana").value ,
                fechaInicio : document.getElementById("id_txtFechaInicioCampana").value,
                fechaFin    : document.getElementById("id_txtFechaFinCampana").value,
                descripcion : document.getElementById("id_txtDescripcionCampana").value,
                idArea : document.getElementById("id_selectAreaBuscar").value,
                uploadToken :"uploadToken"}; 
            }
        }).on('filebatchpreupload', function(event, data, id, index) {
            $('#kv-success-2').html('<h4>Upload Status</h4><ul></ul>').hide();
        }).on('filebatchuploadsuccess', function(event, data) {
        // data = JSON.parse(data);
            var out = '';
            $.each(data.files, function(key, file) {
                var fname = file.name;
                out = out + '<li>' + 'Uploaded file # ' + (key + 1) + ' - '  +  fname + ' successfully.' + '</li>';
            });
            fnc_listarCampanasActivas();
            document.getElementById("id_txtNombreCampana").value="";
            document.getElementById("id_txtDescripcionCampana").value="";

            $('#kv-success-2 ul').append(out);
            $('#kv-success-2').fadeIn('slow');
        });
        $('#input-708').on('filepreupload', function (event, data, previewId, index) {
            data.form.append('hola', "dddd");
        });
    });
}


function fncModificarImagenAjaxCampana() {
      

    $(document).ready(function() {

        $("#input-709").fileinput({

           
            uploadUrl: "../modules/campana.php?p=" + "UkUELwv6kL",
            uploadAsync: false,
            language: "es",
            fileActionSettings : {
                // Disable
                showUpload : false,
                showRemove :false
                },
            maxFileCount: 1,
            allowedFileExtensions: ['jpg', 'png', 'gif'],
            uploadExtraData : function ( previewId , index ) {  
                return { 
               
                idCampana : document.getElementById("id_txtCampana").value,
                uploadToken :"uploadToken"}; 
                }
        }).on('filebatchpreupload', function(event, data, id, index) {
            $('#kv-success-2').html('<h4>Upload Status</h4><ul></ul>').hide();
        }).on('filebatchuploadsuccess', function(event, data) {
        // data = JSON.parse(data);
            var out = '';
            $.each(data.files, function(key, file) {
                var fname = file.name;
                out = out + '<li>' + 'Uploaded file # ' + (key + 1) + ' - '  +  fname + ' successfully.' + '</li>';
            });
            fnc_listarCampanasActivas();
            document.getElementById("id_txtNombreCampana").value="";
            document.getElementById("id_txtDescripcionCampana").value="";
            $('#modal-default').modal('hide');

            $('#kv-success-2 ul').append(out);
            $('#kv-success-2').fadeIn('slow');
        });
        $('#input-709').on('filepreupload', function (event, data, previewId, index) {
            data.form.append('hola', "dddd");
        });
    });
}



var fnc_listarCampanasActivas = function(){
    var table = $('#id_tableListaCampanasActivas').DataTable();
    table.clear();
    table.destroy();
    
    
      var idioma = '';
    

    //$('#tablaListarChip').empty(); // empty in case the columns change

    //document.getElementById("chipLlenar").innerHTML = '<tr id="chipLlenar"><th></th> < th class="table-plus datatable-nosort" > Numero Chip</th >   <th>Tipo Contrato</th> <th>Operador</th><th>Fecha Contrato</th> <th>Meses de Servicio</th> <th>Tarifa</th>th>Traza</th> <th></th>';
  
    var parametros={
      "p":"uctftGr4Jm"
    }

      var table = $('#id_tableListaCampanasActivas').DataTable({
        
      
          "scrollX": true,
          "destroy":true,
         
          "ajax": {
              url: "../modules/campana.php", // json datasource				
              type: 'GET',  // method  , by default get
              data :parametros

          },
        
          'columns': [
  
          { data: 'Area' },
          { data: 'InicioFecha'},
          { data: 'FinFecha'},
          { data: 'Nombre'},
          { data: 'Descrip'},
          { data: 'Img',
          render: function ( data, type, row ) {
            return '<img class="img-thumbnail rounded" src="../uploads/campana/'+data+'"/>';
            }
          },          
          { "defaultContent":  '<div class="btn-group">'+
          '<button type="button"  title="Modificar Información de La Campaña" class="btn btn-warning" id="id_Btn_modificarInfoCampana"><a ><i class="fas fa-info-circle"></i></a></button>'+
          '<button type="button"  title="Modificar Imagen de La Campaña"  class="btn btn-warning" id="id_Btn_modificarImgCampana" data-toggle="modal" data-target="#modal-default" ><a ><i class="far fa-images"></i></a></button>'+
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

      

    $('#id_tableListaCampanasActivas tbody').off('click');
    $('#id_tableListaCampanasActivas tbody').on( 'click', '#id_Btn_modificarInfoCampana', function () {
       var data = table.row( $(this).parents('tr') ).data();
       $('html, body').animate({scrollTop:0}, 'slow');
      console.log(data);
       //document.getElementById('id_div_contenedorInputFile').hidden ="hidden";
       document.getElementById('id_div_contenedorInputFile').style.display = 'none';
       document.getElementById('id_btnModificarInfoCampana').style.display = 'inline';
       document.getElementById('id_txtFechaInicioCampana').value=data["InicioFechaCast"];
       document.getElementById('id_txtFechaFinCampana').value=data["FinFechaCast"];
       document.getElementById('id_txtNombreCampana').value=data["Nombre"];
       document.getElementById('id_selectAreaBuscar').value=data["idArea"];
       document.getElementById('id_txtDescripcionCampana').value=data["Descripcion"];
       document.getElementById('id_txtCampana').value=data["IdCampana"];

       $('#id_selectAreaBuscar').select2({ theme: 'bootstrap4'});


       
    } );

    $('#id_tableListaCampanasActivas tbody').on( 'click', '#id_Btn_modificarImgCampana', function () {
        var data = table.row( $(this).parents('tr') ).data();
       // document.getElementById('id_div_contenedorInputFile').style.display = 'inline';
        //console.log(data);
        document.getElementById('id_txtCampana').value=data["IdCampana"];
      
        $('#input-709').fileinput('clear');
 
        // method chaining
        //$('#input-709').fileinput('clear').fileinput('disable');
        document.getElementById("id_spanTituloCampana").innerHTML=data["Nombre"];
        
        
        
     } );


  }

  function fnc_modificarInfoCampana() {
      var inicioFecha = document.getElementById("id_txtFechaInicioCampana").value;
      var finFecha = document.getElementById("id_txtFechaFinCampana").value;
      var nombre = document.getElementById("id_txtNombreCampana").value;
      var area = document.getElementById("id_selectAreaBuscar").value;
      var descripcion = document.getElementById("id_txtDescripcionCampana").value;
      var idCampana=document.getElementById('id_txtCampana').value;

      var parametros={
          inicioFecha : inicioFecha,
          finFecha : finFecha,
          nombre : nombre,
          area: area,
          descripcion : descripcion,
          idCampana : idCampana
      }
      
      $.ajax({
          type: "POST",
          url: "../modules/campana.php?p="+"Q6SwcynHWV",
          data: parametros,
          
          success: function (response) {
              if (response=="1") {
                toastr.success('Información de Campaña Modificada', 'EXITO!', {timeOut: 5000}); 
                fnc_listarCampanasActivas();
                document.getElementById('id_txtCampana').value=0;
                document.getElementById('id_div_contenedorInputFile').style.display = 'inline';
                document.getElementById('id_btnModificarInfoCampana').style.display = 'none';
                document.getElementById('id_txtNombreCampana').value="";
                document.getElementById('id_txtDescripcionCampana').value="";

              }else{
                toastr.error('Ocurrió un Problemas', 'ERROR!', {timeOut: 5000}); 
              }
          }
      });

      //console.log(parametros);
  }