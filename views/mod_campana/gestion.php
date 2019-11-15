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
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body ">
          


        <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title"> <button title="Nuevo" id="id_nuevoRegistroCampana" class="btn btn-block btn-danger" ><i class="fas fa-plus"></i><i class="far fa-user"></i></button> </h3>
              </div>
              <div class="card-body">
                <div class="row">

                  <input type="hidden" id="id_persona" name="id_persona">
                  <div class="input-group ">
                    <div class="col-3 lg">
                        Inicio Fecha
                        <input type="date" id="id_txtFechaInicioCampana" class="form-control"  require>
                    </div>
                    <div class="col-2">
                    Fin Fecha
                        <input type="date" id="id_txtFechaFinCampana" class="form-control" require>
                    </div>
                   
                    <div class="col-7">
                    Nombre
                        <input type="text" id="id_txtTelf" class="form-control" placeholder="Campaña de ...." require>
                    </div>
                    <div class="col-12 form-group purple-border">
                    Descripción
                    <textarea id="get-en-tips" class="form-control" rows="3" name="tips" cols="50"></textarea>
                    </div>
                    
                  </div>

               
                  
                  

                </div>
            
                
                    <div class="row">

                  
                  <div class="row col-xl">
                    <div class="col-12">
                      <div class="file-loading">
                          <input id="input-708" name="imagen" type="file" multiple>
                      </div>
                    </div>
                               
                  
                    </div>






                    
                </div>
                <br>
                <input type="button" type="button" id="id_btnGuardarModificarPersona" value="GUARDAR" class="btn btn-success btn-sm btn-block" disabled >

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
  