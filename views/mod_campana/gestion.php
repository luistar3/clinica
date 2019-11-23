<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Campañas</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Gestión de campañas</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Panel de Gestion </h3>

          <div class="card-tools">
            <!-- <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button> -->
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body ">
          


        <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title"> <i class="fas fa-images"></i> </h3>
              </div>
              <div class="card-body">
                <div class="row">

                  <input type="hidden" id="id_txtCampana" name="id_campana" value="0">
                  <div class="input-group ">
                    <div class="col-3 lg">
                        Inicio Fecha
                        <input type="date" id="id_txtFechaInicioCampana" class="form-control"  require>
                    </div>
                    <div class="col-2">
                    Fin Fecha
                        <input type="date" id="id_txtFechaFinCampana" class="form-control" require>
                    </div>
                   
                    <div class="col-4">
                    Nombre
                        <input type="text" id="id_txtNombreCampana" class="form-control" placeholder="Campaña de ...." require>
                    </div>
                    <div class="col-3">
                    
                    Area
                            <select class="form-control select2" id="id_selectAreaBuscar" style="width: 100%;">
                                
                                
                            </select>
                    </div>
                    <div class="col-12 form-group purple-border">
                    Descripción
                    <textarea id="id_txtDescripcionCampana" class="form-control" rows="3" name="tips" cols="50"></textarea>
                    </div>
                    
                  </div>

               
                  
                  

                </div>
            
                
                    <div class="row">

                  
                  <div class="row col-xl"id="id_div_contenedorInputFile">
                    <div class="col-12">
                      <div class="file-loading">
                          <input id="input-708" name="imagen" type="file" multiple>
                      </div>
                    </div>
                               
                  
                  </div>






                    
                </div>
                <br>
              <input type="button" type="button" id="id_btnModificarInfoCampana" value="Modificar" class="btn btn-success btn-sm btn-block" style="display:none">

              </div>
              <!-- /.card-body -->
            </div>
            
        
        </div>


        <!-- /.card-body -->
      
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->



      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Listado De Campañas</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body ">
          


        <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title"><i class="fas fa-list"></i></h3>
              </div>
              <div class="card-body">
                
              <table id="id_tableListaCampanasActivas" style="width:100%;min-height: 550px;"  class="table table-bordered  dataTable">
                      <thead>
                        <tr>                          
                          <th>Area</th>
                          <th>Inicio</th>
                          <th>Fin</th> 
                          <th>Nombre</th> 
                          <th>Descripción</th>                   
                          <th>Imagen</th>
                          <th></th>
                        </tr>
                      </thead>
                      
                      <tfoot>
                        <tr>
                          <th >Area</th>
                          <th>Inicio</th>
                          <th>Fin</th> 
                          <th>Nombre</th> 
                          <th>Descripción</th>                   
                          <th>Imagen</th>
                          <th></th>
                        </tr>
                      </tfoot>
                </table>


              </div>
              <!-- /.card-body -->
            </div>
            
        
        </div>


        <!-- /.card-body -->
      
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->




    </section>
    <!-- /.content -->




    

  </div>
  <!-- /.content-wrapper   -->

  <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Modificar Imagen</h4>
              
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
            
            <span class="badge badge-secondary" id="id_spanTituloCampana" >Secondary</span>
                  <div class="row col-xl"id="id_div_contenedorInputFileModificar">
                    <div class="col-12">
                      <div class="file-loading">
                          <input id="input-709" name="imagen" type="file" multiple>
                      </div>
                    </div>
                               
                  
                  </div>
            </div>
            <div class="modal-footer justify-content-between">
              <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button> -->
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
  