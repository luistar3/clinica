<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Control de Turnos</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Turnos</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
     
       
         
      

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Gestion</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" ></button>
              <button type="button" class="btn btn-tool" ></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-12">
                <div class="form-group" id="">
             



                
                <div class="message"></div>

                
                <!-- <button class="reset">reset Clock</button> -->

                <input type="hidden" name="" id="txt_idLog" value="0">
              
                <div class="container">
                  <div class="row page-hero d-flex align-items-center justify-content-center ">
                    <div class="col-1">

                      <button id="idBtnIniciarTurnoEnfermera" class="btn btn-success">
                        <i class="fas fa-hourglass-start"></i>
                        </i> INICIAR 
                      </button>
                    </div>
                    <div class="col-8 text-center ">
                    <div class="clock" id="iddd" style="margin:2em;"></div>
                    </div>
                    <div class="col-1 text-center ">

                      <button id="idBtnFinalizarTurnoEnfermera" class="btn btn-warning">
                      <i class="fas fa-hourglass-end"></i>
                        </i> FINALIZAR 
                      </button>

                    </div>
                  </div>
                 
                </div>

                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
       
          
          </div>

          
          <!-- /.card-body -->
            
      
        <!-- /.card -->

        
          <!-- /.col (right) -->
        </div>




        
        <!-- /.row -->
    
    </section>



    <section class="content">
    
      

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Gestion</h3>

      
          </div>
          <!-- /.card-header -->
          <div class="card-body">
           
                <table  style="width:100%;" id="id_tablaGestionTurnosEnfermera"  class="table-striped">
                  <thead>
                  <tr>
                    
                    <th>Inicio</th>
                    <th>Fin</th>
                
                    <th></th>
                  </tr>
                  </thead>
                  
                  <tfoot>
                  <tr>
                    <th>Inicio</th>
                    <th>Fin</th>
                 
                    <th width="100px"></th>
                  </tr>
                  </tfoot>
                </table>
           
          </div>


        </div>

     
    </section>



    <!-- /.content -->
    </div>

 