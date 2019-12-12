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

    var dataLiquidacion ;

    console.log(G_Especialidades);

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
            var datos = JSON.parse(response);
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
                      '<td>'+datos[key]["PRECIO"]+'</td>'+
                      '<td>'+datos[key]["SUBTOTAL"]+'</td>'+
                      '<td>'+datos[key]["FORM"]+'</td>'+
                      '<td>'+datos[key]["PROPIETARIO"]+'</td>'+
                      '<td>'+datos[key]["SOCIO"]+'</td>'+
                      '<td>'+datos[key]["IMPUESTO"]+'</td>'+
                      '<td>'+datos[key]["NETO"]+'</td>'+
                      
                    '</tr>';
            }

            var tabla = document.getElementById("idTblLiquidacionBody").innerHTML=apend;
            //data =JSON.parse(response);
            //dataLiquidacion = data;
        }
    });
    
    

  }

  function fncGenerarLiquidacion() {
    
   
       
  }