<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Permisos Usuarios</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Permisos</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
       
         
      

        <div class="card card-default collapsed-card">
          <div class="card-header">
            <h3 class="card-title">Gestion</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-plus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-12">
                <div class="form-group">
              
                  <select class="duallistbox" multiple="multiple" id="idSelectPermisosPorModulo">
                   
                  </select>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
            <div class="form-group">
                      <label>Modulos</label>
                      <select class="form-control select2" id="idPermisoModulos" style="width: 100%;">
                        <option selected="">asdas</option>
                        <option selected="">asd</option>
                        <option selected="">...</option>
                        <option selected="">...</option>
                        <option selected="">...</option>
                        
                      </select>
            </div>
            <div class="form-group">
                      
                     <input type="submit" value="guardar" id="idBtnGuardarPermisosModulos">
            </div>
          </div>

          
          <!-- /.card-body -->
            
      
        <!-- /.card -->

        
          <!-- /.col (right) -->
        </div>






        <div class="row">
          <div class="col-md-6">

            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Personas</h3>
              </div>
              <div class="card-body">
                <table id="idListarUsuarios" style="min-height: 302px;" role="grid" class="table table-bordered table-striped dataTable">
                  <thead>
                  <tr>
                    <th>Usuario</th>
                    <th>Nombre</th>
                    
                    <th>Rol</th>                  
                    <th>DNI</th>
                    <th>Estado</th>
                    <th>Aciones</th>
                  </tr>
                  </thead>
                  
                  <tfoot>
                  <tr>
                    <th>Usuario</th>
                    <th>Nombre</th>
                    
                    <th>Rol</th>                  
                    <th>DNI</th>
                    <th>Estado</th>
                    <th>Aciones</th>
                  </tr>
                  </tfoot>
                </table>
                
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

         
            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Personas</h3>
              </div>
              <div class="card-body">
                <input type="hidden" name="" id="idPersonaAgregarModificar" value="0" >
                <input type="text" name="" id="idUsuario" placeholder="Usuario" >
                <input type="password" name="" id="idContrasena" placeholder="Contraseña" >
                <input type="text" name="" id="idNombrePersona" placeholder="NombrePersona" >
                <select name="" id="idSelectRolUsuario">
                <option value=""></option>
                </select>
                <button type="submit" id="idBtnGuardarUsuario" >Guardar Usuario</button>
             
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col (left) -->
          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Datos</h3>
              </div>
              <div class="card-body">
                
              <table id="idListarPersonasSinUsuario" style="min-height: 302px;" role="grid" class="table table-bordered table-striped dataTable">
                  <thead>
                  <tr>
                
                    <th>Nombre</th>
                    
                    <th>Area</th>                  
                    <th>DNI</th>
                    
                    <th>Acciones</th>
                  </tr>
                  </thead>
                  
                  <tfoot>
                  <tr>
                
                    <th>Nombre</th>
                    
                    <th>Area</th>                  
                    <th>DNI</th>
                    
                    <th>Acciones</th>
                  </tr>
                  </tfoot>
              </table>
                


              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- iCheck -->
            
          </div>
          <!-- /.col (right) -->


        </div>




        
        <!-- /.row -->
      </div><!-- /.container-fluid -->



<!-- modal edicion de permisos -->




<!-- Modal -->
<div class="modal fade" id="modalEditarPermisos" tabindex="-1" role="dialog" aria-labelledby="modalEditarPermisos" aria-hidden="true"  data-keyboard="false" data-backdrop="static" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Permiso</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="">
        <input type="hidden" name="" id="idHiddenIdUsuario">
        <label for="" >Nombre</label>
        <input type="text" class="form-control" name="" id="idNombrePersonaPermiso">
        <label for="" >Seleccione nuevo permiso</label>
        <select class="form-control select2" id="idPermisoModulosEdit" style="width: 100%;">
             
        </select>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="idCerrarCambiosPermiso" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" id="idGuardarCambiosPermiso" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>


    </section>
    <!-- /.content -->
    </div>

 