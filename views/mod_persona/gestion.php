<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Blank Page</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Blank Page</li>
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
          <h3 class="card-title">Title</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body">
          


        <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Different Width</h3>
              </div>
              <div class="card-body">
                <div class="row">

                  <input type="hidden" id="id_persona" name="id_persona">
                  <div class="input-group mb-12">
                    <div class="col-3 lg">
                        
                        <input type="text" id="id_txtDniPersona" class="form-control" placeholder="Dni">
                    </div>
                    <div class="col-3">
                        <input type="text" id="id_txtNombrePersona" class="form-control" placeholder="Nombre">
                    </div>
                    <div class="col-3">
                    <input type="text" id="id_txtApePatPersona" class="form-control" placeholder="Apellido Paterno">
                    </div>
                    <div class="col-3">
                        <input type="text" id="id_txtApeMatPersona" class="form-control" placeholder="Apellido Materno">
                    </div>
                  </div>
                  
                  

                </div>
                <br>
                <div class="row">
                    <div class="input-group mb-12">
                        <div class="col-3">
                            <label for="">Área</label>
                            <select class="form-control select2" id="id_selectArea" style="width: 100%;">
                                
                                
                            </select>
                        </div>

                        <div class="col-3">
                            <label for="">Sexo</label>
                            <select class="form-control select2" id="id_selectSexo" style="width: 100%;">
                                
                                
                            </select>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="">Especialidad</label>
                                <select class="form-control select2" id="id_selectEspecializacion" style="width: 100%;">
                                   
                                </select>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="form-group">
                                <label for="">Tipo de persona</label>
                                <select class="form-control select2" id="id_selectTipoPersona" style="width: 100%;">
                                    
                                    
                                </select>
                            </div>
                        </div>

                    </div>
                </div>

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




    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Title</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body">
          


        

   
        <div class="card-body" style="max-height: 1200px" >
              <table  style="width:100%;min-height: 302px;" id="id_tablaPersonasPorArea" role="grid" class="table table-bordered table-striped dataTable">
                <thead>
                <tr>
                  <th></th>
                  <th>Nombre</th>
                  <th>Piso</th>
                  <th>Encargado</th>                  
                  <th>Acciones</th>
                </tr>
                </thead>
                
                <tfoot>
                <tr>
                  <th></th>
                  <th>Nombre</th>
                  <th>Piso</th>
                  <th>Encargado</th>                  
                  <th>Acciones</th>
                </tr>
                </tfoot>
              </table>
            </div>

        




        <!-- /.card-body -->
        <div class="card-footer">
          Footer
        </div>
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->


  </div>
  <!-- /.content-wrapper   -->