
$('document').ready(function(){

    if ( document.getElementById( "id_tablaPersonasPorArea" )) {

        $('.select2').select2({
            theme: 'bootstrap4'
          });


    }


});



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






