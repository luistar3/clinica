	
    $('document').ready(function(){
       
      if (document.getElementById( "idPermisoModulos" )) {
          //Bootstrap Duallistbox
          $('.duallistbox').bootstrapDualListbox();
          $('.select2').select2({
            theme: 'bootstrap4'
          }) ;
          
          fnc_listarSelectRolesPermisos();
      } 
    
      

    });

    function fnc_listarSelectRolesPermisos() {
      $.ajax({
        type: "GET",
        url: "../modules/permisos.php",
        data: {"p":"6x8RlHMFSK"},
        dataType: "dataType",
        success: function (response) {
          console.log(response);
        }
      });
    }