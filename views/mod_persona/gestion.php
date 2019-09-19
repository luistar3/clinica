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
        <div class="card-body ">
          


        <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title"> <button title="Nuevo" id="id_nuevoRegistroPersona" class="btn btn-block btn-danger" ><i class="far fa-plus-square"></i></button> </h3>
              </div>
              <div class="card-body">
                <div class="row">

                  <input type="hidden" id="id_persona" name="id_persona">
                  <div class="input-group ">
                    <div class="col-3 lg">
                        
                        <input type="text" id="id_txtDniPersona" class="form-control" placeholder="Dni" require>
                    </div>
                    <div class="col-3">
                        <input type="text" id="id_txtNombrePersona" class="form-control" placeholder="Nombre"require>
                    </div>
                    <div class="col-3">
                    <input type="text" id="id_txtApePatPersona" class="form-control" placeholder="Apellido Paterno"require>
                    </div>
                    <div class="col-3">
                        <input type="text" id="id_txtApeMatPersona" class="form-control" placeholder="Apellido Materno" require>
                    </div>
                  </div>
                  
                  

                </div>
                <br>
                
                
                    <div class="row">

                  
                  <div class="row col-xl">
                    <div class="col-sm">
                      <label for="">Área</label>
                            <select class="form-control select2" id="id_selectArea" style="width: 100%;">
                                  
                                  
                            </select>
                    </div>
            
                    <div class="col-sm">
                                
                                    <label for="">Sexo</label>
                                    <select class="form-control select2" id="id_selectSexo" style="width: 100%;">
                                        <option value="M">Maculino</option>
                                        <option value="F">Femenino</option>
                                        
                                    </select>
                              
                    </div>
                    <div class="col-sm">
                                
                                    <div class="form-group">
                                        <label for="">Especialidad</label>
                                        <select class="form-control select2" id="id_selectEspecializacion" style="width: 100%;">
                                          
                                        </select>
                                    </div>
                                
                    </div>
                    <div class="col-sm">
                              
                                    <div class="form-group">
                                        <label for="">Tipo de persona</label>
                                        <select class="form-control select2" id="id_selectTipoPersona" style="width: 100%;">
                                            
                                            
                                        </select>
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




    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
                          <div class="col-3">
                            <label for="">Área</label>
                            <select class="form-control select2" id="id_selectAreaBuscar" style="width: 100%;">
                                
                                
                            </select>
                          </div>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <!-- <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button> -->
          </div>
        </div>
        <div class="card-body">
          


        

   
        <div class="card-body" style="max-height: 1200px" >
              <table  style="width:100%;min-height: 302px;" id="id_tablaGestion" role="grid" class="table table-bordered table-striped dataTable">
                <thead>
                <tr>
                  
                  <th>Dni</th>
                  <th>Nombre</th>
                  <th>Apellido Paterno</th>                  
                  <th>Apellido Materno</th>
                  <TH>Sexo</TH>                
                  <th>Area</th>
                  <th>Tipo</th>
                  <th></th>
                </tr>
                </thead>
                
                <tfoot>
                <tr>
                  <th>Dni</th>
                  <th>Nombre</th>
                  <th>Apellido Paterno</th>                  
                  <th>Apellido Materno</th>
                  <TH>Sexo</TH>                  
                  <th>Area</th>
                  <th>Tipo</th>
                  <th></th>
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