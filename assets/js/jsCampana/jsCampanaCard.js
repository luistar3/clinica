$('document').ready(function(){
       
    if (document.getElementById("id_contenedorCards" )) {
       cargarCards();

       
       setInterval(imprimir, 3600000);
    }
});
const imprimir = () => {
    cargarCards();
   };
function cargarCards() {
    
    document.getElementById("id_contenedorCards").innerHTML="";
    var parametros={
        "p":"Rd5f84FT7D"
      }
    $.ajax({
        type: "GET",
        url: "../modules/campana.php",
        data: parametros,
        
        success: function (response) {
            var datos = JSON.parse(response);
            //console.log(datos['data']);
            datos = datos['data'];
            var elemento = " ";

            

        for(var key in datos)
         {
        //    option = document.createElement( 'option' );
        //    option.value = area[key]["id_area"];
        //    option.text = area[key]["Nombre"];
        //    select.add( option );


           elemento += 
            '<div class="card" style="transition:all 1s ease">'+
                '<img src="../uploads/campana/'+datos[key]['Img']+'" class="card-img-top" alt="...">'+
            '<div class="card-body">'+
                
                '<ul class="list-group list-group-flush">'+
                
                '<li class="list-group-item"><h5 class="text-danger">'+datos[key]['Nombre']+'</h5></li>'+
                '<li class="list-group-item">'+datos[key]['Descrip']+'</li>'+
                '</ul>'+
            '</div>'+
            '<div class="card-footer">'+
                '<small class="text-muted">Ultimo día Activo: '+datos[key]['FinFecha']+'</small>'+
            '</div>'+
            '</div>';

         }
         document.getElementById("id_contenedorCards").innerHTML=elemento;
        }
    });
  
  
}