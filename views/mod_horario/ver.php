

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    
  <!-- Content Header (Page header) -->
  <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Horarios</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Horarios</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="sticky-top mb-3">
            <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Leyenda</h4>
                </div>
                <div class="card-body">
                  <!-- the events -->
                  <div id="external-events" disabled >
                    <div class="external-event bg-success">Día</div>
                    <div class="external-event bg-warning">Tarde</div>
                    <!-- <div class="external-event bg-info">Do homework</div> -->
                    <div class="external-event bg-primary">Noche</div>
                    <div class="external-event bg-danger">Reten</div>
                   
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card"  >
                <div class="card-header">
                  <h3 id="id_tituloGestion"class="card-title">Gestión de Horarios</h3>
                </div>
                <div class="card-body"  style="display: none;" >
                 
               
                  <input type="hidden" id="id_area" name="" value="">
                  <input type="hidden" id="id_horario_eliminar" name="" value="">

                  <div class="form-group">
                      <label>Personas</label>
                      <select class="form-control select2" id="idPersonalhorario" style="width: 100%;">
                        <option selected="selected">...</option>
                        
                      </select>
                  </div>
                   


                 <!-- Color Picker -->
                 <div class="form-group">
                  

                  <div  class="input-group my-colorpicker2">
                      <label>Reten</label>
                      <select class="form-control " id="idReten" style="width: 100%;">
                        <option value="0" selected="selected">NO</option>
                        <option value = "1">SI</option>
                        
                      </select>
                  </div>
                  <!-- /.input group -->
                </div>




                  <!-- Date and time range -->
                  <div class="form-group">
                    <label>Rango Horario:</label>

                    <div class="input-group">
                      <div class="input-group-prepend">
                        <button type="button" id="id_btn_agregarHorario" class="btn btn-success" disabled > Agregar </button>
                      </div>
                    
                      <input type="text" class="form-control float-right" id="reservationtime">
                    </div>
                    <!-- /.input group -->
                  </div>
                  <!-- /.form group -->



                  <div class="input-group">
                    <div class="input-group-prepend">
                        <button type="button" id="id_btn_eliminarHorario" class="btn btn-warning" disabled >Eliminar</button>
                      </div>
                   
                    <input type="date"  id="fechaEliminar" class="form-control" disabled>
                  </div>
                  <!-- /.input group -->



                  <!-- Date and time range -->
                </div>
              </div>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary" style="background-color: aliceblue;" >
              <div class="card-body p-0">
                <!-- THE CALENDAR -->
                <button type="reset"></button>
                <div id="calendar" class="card-body" style="min-height:700px;" >
                    <table id="listaHorariosVer" style="width:100%;min-height: 550px;"  class="table table-bordered  dataTable">
                      <thead>
                        <tr>
                          
                          <th >Area</th>
                        
                          <th>Mañana</th>
                          <th>Tarde</th>                  
                          <th>Noche</th>
                          <th>Reten</th>
                        </tr>
                      </thead>
                      
                      <tfoot>
                        <tr>
                          <th>Area</th>
                          
                          <th>Mañana</th>
                          <th>Tarde</th>                  
                          <th>Noche</th>
                          <th>Reten</th>
                        </tr>
                      </tfoot>
                    </table>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->




<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="top:0px;">
  

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
         
          <!-- /.card -->

          <div class="card p-0" >
            <div class="card-header">
              <h3 class="card-title">Listado de Áreas</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body" style="max-height: 1200px; background-color: aliceblue;" >
              <table id="listaEspecialidad" style="width:100%;min-height: 302px;" role="grid" class="table table-bordered table-striped dataTable">
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
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>



 