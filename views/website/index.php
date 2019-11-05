
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header"hidden>
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Clinica la Luz</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Clinica la Luz</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header ">
            <?php print_r($_SESSION['usuario']); ?>
              <div class="embed-responsive embed-responsive-16by9">
                <!-- <iframe class="embed-responsive-item" src="https://time.is/es/Peru" allowfullscreen></iframe> -->
                  <div id="myExcelDiv" style="width: 100%; height: 100%"></div>
<!-- * This code uses the Microsoft Office Excel Javascript object model to programmatically insert the
	 * Excel Web App into a div with id=myExcelDiv. The full API is documented at
	 * https://msdn.microsoft.com/es-ES/library/hh315812.aspx. There you can find out how to programmatically get
	 * values from your Excel file and how to use the rest of the object model. -->
<script type="text/javascript" src="https://onedrive.live.com/embed?resid=5DD5AE123C264C5%21232&authkey=%21ANiwaP6llHW0YzQ&em=3&wdDivId=%22myExcelDiv%22&wdDownloadButton=1&wdHideGridlines=1&wdHideHeaders=1"></script>
              </div>
            </div>
            <!-- /.card-header -->
            
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