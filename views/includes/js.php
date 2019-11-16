
</div>

<!-- jQuery -->
<script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../assets/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>




<!-- jQuery UI -->
<script src="../assets/plugins/jquery-ui/jquery-ui.min.js"></script>


<!-- FLOT CHARTS -->
<script src="../assets/plugins/flot/jquery.flot.js"></script>
<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
<script src="../assets/plugins/flot-old/jquery.flot.resize.min.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="../assets/plugins/flot-old/jquery.flot.pie.min.js"></script>
<!-- Page script -->




<!-- jQuery Knob -->
<script src="../assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- Sparkline -->
<script src="../assets/plugins/sparklines/sparkline.js"></script>




<!-- Select2 -->
<script src="../assets/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../assets/plugins/inputmask/jquery.inputmask.bundle.js"></script>
<script src="../assets/plugins/moment/moment.min.js"></script>
<!-- date-range-picker -->
<script src="../assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>



<!-- Summernote -->
<script src="../assets/plugins/summernote/summernote-bs4.min.js"></script>

<!-- overlayScrollbars -->
<script src="../assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>



<!-- DataTables -->
<script src="../assets/plugins/datatables/jquery.dataTables.js"></script>
<script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>



<!-- jsGrid -->
<script src="../assets/plugins/jsgrid/demos/db.js"></script>
<script src="../assets/plugins/jsgrid/jsgrid.min.js"></script>


<!-- fullCalendar 2.2.5 -->

<script src="../assets/plugins/fullcalendar/main.min.js"></script>
<script src="../assets/plugins/fullcalendar-daygrid/main.min.js"></script>
<script src="../assets/plugins/fullcalendar-timegrid/main.min.js"></script>
<script src="../assets/plugins/fullcalendar-interaction/main.min.js"></script>
<script src="../assets/plugins/fullcalendar-bootstrap/main.min.js"></script>



<!-- flipClock -->
<script src="../assets/plugins/flipClock/flipclock.js"></script>
<script src="../assets/plugins/flipClock/flipclock.min.js"></script>

<!-- Filterizr-->
<script src="../assets/plugins/filterizr/jquery.filterizr.min.js"></script>

 <!-- countDown -->
 <script src="../assets/plugins/countDown/jquery.missofis-countdown.js"></script>
<!-- Ekko Lightbox -->
<script src="../assets/plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
<!-- TOASTR -->
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- togle -->
<script src="//cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.5.0/js/bootstrap4-toggle.min.js"></script>
<script src="../assets/plugins/siema/siema.min.js"></script>



<script src="../assets/plugins/boostrapFile/fileinput.min.js"></script>
<script src="../assets/plugins/boostrapFile/piexif.min.js" type="text/javascript"></script>
<script src="../assets/plugins/boostrapFile/es.js" type="text/javascript"></script>


<script src="../assets/js/jsHorario/jsHorario.js"></script>

<script src="../assets/js/jsPersona/jsPersona.js"></script>
<script src="../assets/js/jsPermisos/jsPermisos.js"></script>
<script src="../assets/js/jsTurnoEnfermeria/jsTurnoEnfermeria.js"></script>
<script src="../assets/js/jsTurnoEnfermeria/jsTurnoEnfermeria2.js"></script>
<script src="../assets/js/jsPersona/jsEnfermeraReporte.js"></script>
<script src="../assets/js/jsCampana/jsCampana.js"></script>


<script>


// const mySiema = new Siema({
//   duration: 1000,
//   loop: true,
// });

// // listen for keydown event
// setInterval(() => mySiema.next(), 5000)

/*

var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
var Calendar = FullCalendar.Calendar;
var calendarEl = document.getElementById('calendar');

var calendar = new Calendar(calendarEl, {
      plugins: [ 'bootstrap', 'interaction', 'dayGrid', 'timeGrid' ],
      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      //Random default events
      events    : [
        {
          title          : 'All Day Event',
          start          : new Date(y, m, 5),
          backgroundColor: '#f56954', //red
          borderColor    : '#f56954' //red
        },
        {
          title          : 'Long Event',
          start          : new Date(y, m, d - 5),
          end            : new Date(y, m, d - 2),
          backgroundColor: '#f39c13', //yellow
          borderColor    : '#f39c12' //yellow
        },
        {
          title          : 'Meeting',
          start          : new Date(y, m, d, 10, 40),
          allDay         : false,
          backgroundColor: '#0073b7', //Blue
          borderColor    : '#0073b7' //Blue
        },
        {
          title          : 'Lunch',
          start          : new Date(y, m, d, 12, 0),
          end            : new Date(y, m, d, 14, 0),
          allDay         : false,
          backgroundColor: '#00c0ef', //Info (aqua)
          borderColor    : '#00c0ef' //Info (aqua)
        },
        {
          title          : 'Birthday Party',
          start          : new Date(y, m, d + 1, 19, 0),
          end            : new Date(y, m, d + 1, 22, 30),
          allDay         : false,
          backgroundColor: '#00a65a', //Success (green)
          borderColor    : '#00a65a' //Success (green)
        },
        {
          title          : 'Click for Google',
          start          : new Date(y, m, 28),
          end            : new Date(y, m, 29),
          url            : 'http://google.com/',
          backgroundColor: '#3c8dbc', //Primary (light-blue)
          borderColor    : '#3c8dbc' //Primary (light-blue)
        }
      ],
      editable  : true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
      drop      : function(info) {
        // is the "remove after drop" checkbox checked?
        if (checkbox.checked) {
          // if so, remove the element from the "Draggable Events" list
          info.draggedEl.parentNode.removeChild(info.draggedEl);
         
        }
      }   
      
      
    });

    calendar.render();

    // $('#calendar').fullCalendar()*/
</script>