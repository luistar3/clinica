	
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

          
      } 
    
      fnc_listarSelectRoles();


     // prueba_notificacion();





    });

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