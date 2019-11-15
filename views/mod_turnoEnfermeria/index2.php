 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Control Global de Enfermeria</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Control Global de Enfermeria</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-2">
            <!-- general form elements -->
            


           
            <!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Acceso</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
                <div class="card-body">
                  <div class="form-group row">
                    <input type="hidden" name="" value="0" id="txtIdIdentificarUsuario">
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtIdUsuario" placeholder="Usuario" disabled>
                    </div>
                  </div>
                  <div class="form-group row">
                    
                    <div class="col-sm-10">
                      <input type="password" class="form-control" id="txtIdPassword" placeholder="Password">
                    </div>
                  </div>
                  <div class="form-group row">
                    
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="txtIdFecha" placeholder="Fecha" disabled>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="form-check">
                        <!-- <input type="checkbox" class="form-check-input" id="exampleCheck2">
                        <label class="form-check-label" for="exampleCheck2">Remember me</label> -->
                      </div>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                
                <div class="card-footer" id="idDivVisualizador" >
                  <button  id="idBtnLoginTurno" class="btn btn-info">Aceptar</button>
                  <button  id="idBtnCancelarTurno" class="btn btn-danger float-right">Cancel</button>
                </div>
                <!-- /.card-footer -->

                <div class="card-footer" id="idDiv2Visualizador" hidden>
                  <button  id="idBtnLoginNuevoTurno" class="btn btn-success">Nuevo Turno</button>
                  <!-- <button  id="idBtnLoginCancelarNuevoTurno" class="btn btn-success">Xs</button> -->
                </div>
             
            </div>
            <!-- /.card -->

          </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-10">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <!-- <h3 class="card-title">Turnos</h3> -->
                <button type="button" class="btn btn-info btn-sm" id="idBtnNuevoTurno">Nuevo</button>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table  style="width:99%;" id="id_tablaGestionTurnosEnfermera2"  class="table table-striped">
                    <thead>
                    <tr>
                    <th>Usuario</th>
                      <th>Inicio</th>
                        <th>Fin</th>
                        <th >Tiempo</th>
                        <th width="100px">Espera</th>
                        <th width="100px">Acción</th>
                      </tr>
                    </thead>
                    
                    <tfoot>
                    <tr>
                    <th>Usuario</th>
                      <th>Inicio</th>
                      <th>Fin</th>
                      <th>Tiempo</th>
                      <th width="100px">Espera</th>
                      <th width="100px">Acción</th>
                    </tr>
                    </tfoot>
                  </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- general form elements disabled -->
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>