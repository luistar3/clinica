<!-- Content Wrapper. Contains page content -->
<style>
::-webkit-datetime-edit { padding: 1em; }
::-webkit-datetime-edit-fields-wrapper { background: silver; }
::-webkit-datetime-edit-text { color: red; padding: 0 0.3em; }
::-webkit-datetime-edit-month-field { color: blue; }
::-webkit-datetime-edit-day-field { color: green; }
::-webkit-datetime-edit-year-field { color: purple; }
::-webkit-inner-spin-button { display: none; }
::-webkit-calendar-picker-indicator { background: orange; }

/* .colored-bg{
  background-color: #F7F7B7;
}
.colored1-bg{
  background-color: #C5DBDE;
} */
</style>




<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Control Turnos Licenciadas</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Busqueda de Personal</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

    <div class="card card-primary card-outline">
         
          <div class="card-body">
     
            <ul class="nav nav-tabs" id="custom-content-below-tab" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" id="custom-content-below-home-tab" data-toggle="pill" href="#custom-content-below-home" role="tab" aria-controls="custom-content-below-home" aria-selected="true">Individual</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="custom-content-below-profile-tab" data-toggle="pill" href="#custom-content-below-profile" role="tab" aria-controls="custom-content-below-profile" aria-selected="false">Grupal</a>
              </li>
              
            </ul>
            <div class="tab-content" id="custom-content-below-tabContent">
              <div class="tab-pane fade show active" id="custom-content-below-home" role="tabpanel" aria-labelledby="custom-content-below-home-tab">
                 


                            <!-- Default box -->
                            <div class="card card-danger">
                                  <div class="card-header">
                                    <h3 class="card-title">Reporte de Turnos Enfermeria</h3>
                                    
                                    
                                  </div>
                                  
                                  

                                  <div class="card-body ">
                                  
                                    <div class=" input-group col-sm-12">
                                    
                                    <select class="form-control show-tick ml-3" id="idSelectEnfermera" name="tipoPersona" required="true">
                                        <!-- <option value="2" selected>Seleccione el tipo de evento</option> -->
                                                                                          

                                    </select>
                                  De
                                    <input class="form-control show-tick ml-3"  type="date" name="" id="idFechaInicio">
                                  Hasta   
                                    <input class="form-control show-tick ml-3" type="date" name="" id="idFechaFin">
                                    <button id="idBtnBuscar" class="btn btn-info">Buscar</button>
                                    
                                    </div>
                                  
                                  
                                
                                  <table  style="width:100%;" id="id_tablaEnfermeraReporte" role="grid" class="table table-bordered table-striped dataTable">
                                          <thead>
                                            <tr>
                                              <th>Usuario</th>
                                              <th>Inicio Turno</th>
                                              <th>Fin Turno</th>
                                              <th>Horas</th>                  
                                              <th>Turno Calculado</th>
                                      
                                            </tr>
                                          </thead>
                                            
                                          <tfoot>
                                            <tr>
                                              <th>Usuario</th>
                                              <th>Inicio Turno</th>
                                              <th>Fin Turno</th>
                                              <th>Horas</th>                  
                                              <th>Turno Calculado</th>
                                      
                                            </tr>
                                          </tfoot>
                                        </table>

                                  </div>

                          </div>



              </div>
              <div class="tab-pane fade" id="custom-content-below-profile" role="tabpanel" aria-labelledby="custom-content-below-profile-tab">
                                <div class="card card-danger">
                          <div class="card-header">
                            <h3 class="card-title">Reporte Consolidado de Turnos Enfermeria</h3>
                  
                          </div>
                          
                          

                          <div class="card-body ">
                          
                            <div class=" input-group col-sm-12">
                            
                            
                          De
                            <input class="form-control show-tick ml-3"  type="date" name="" id="idFechaInicioConsolidado">
                          Hasta   
                            <input class="form-control show-tick ml-3" type="date" name="" id="idFechaFinConsolidado">
                            <button id="idBtnBuscarConsolidado" class="btn btn-warning">Buscar</button>
                            
                            </div>
                          
                          
                        
                          <table  style="width:100%;" id="id_tablaEnfermeraReporteConsolidado" role="grid" class="table table-bordered table-striped dataTable">
                                  <thead>
                                    <tr>
                                      <th>Usuario</th>
                                      <th>Calculo Turno</th>
                                      
                              
                                    </tr>
                                  </thead>
                                    
                                  <tfoot>
                                    <tr>
                                      <th>Usuario</th>
                                      <th>Calculo Turno</th>
                              
                                    </tr>
                                  </tfoot>
                                </table>

                          </div>
                          </div>

              </div>
             
            </div>
            
          </div>
          <!-- /.card -->
        </div>

   

 <!-- Default box -->
       
       
    </section>
    <!-- /.content -->


  </div>
  <!-- /.content-wrapper   -->