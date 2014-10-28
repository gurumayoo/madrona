<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <title><decorator:title default="Madrona | Dashboard"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- bootstrap 3.0.2 -->
    <link href="<c:url value="/resources/theme/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <!-- font Awesome -->
    <link href="<c:url value="/resources/theme/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
    <!-- Ionicons -->
    <link href="<c:url value="/resources/theme/css/ionicons.min.css"/>" rel="stylesheet" type="text/css"/>
    <!-- Morris chart -->
    <link href="<c:url value="/resources/theme/css/morris/morris.css"/>" rel="stylesheet" type="text/css"/>
    <!-- jvectormap -->
    <link href="<c:url value="/resources/theme/css/jvectormap/jquery-jvectormap-1.2.2.css"/>" rel="stylesheet"
          type="text/css"/>
    <!-- Date Picker -->
    <%--<link href="<c:url value="/resources/theme/css/datepicker/datepicker3.css"/>" rel="stylesheet" type="text/css" />--%>
    <!-- Daterange picker -->
    <link href="<c:url value="/resources/theme/css/daterangepicker/daterangepicker-bs3.css"/>" rel="stylesheet"
          type="text/css"/>
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<c:url value="/resources/theme/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>" rel="stylesheet"
          type="text/css"/>
    <!-- Theme style -->
    <link href="<c:url value="/resources/theme/css/AdminLTE.css"/>" rel="stylesheet" type="text/css"/>

    <!-- fullCalendar -->
    <link href="<c:url value="/resources/theme/css/fullcalendar/fullcalendar.css"/>" rel="stylesheet" type="text/css" />
    <link href="<c:url value="/resources/theme/css/fullcalendar/fullcalendar.print.css"/>" rel="stylesheet" type="text/css" media='print' />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <decorator:head/>
</head>
<body class="skin-blue">

<jsp:include page="../includes/top-navbar.jsp"/>

<div class="wrapper row-offcanvas row-offcanvas-left">

    <jsp:include page="../includes/side-menu.jsp"/>

    <decorator:body/>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.0.2 -->
<script src="<c:url value="/resources/theme/js/jquery.min.js"/>"></script>
<!-- jQuery UI 1.10.3 -->
<script src="<c:url value="/resources/theme/js/jquery-ui-1.10.3.min.js"/>"
        type="text/javascript"></script>
<!-- Bootstrap -->
<script src="<c:url value="/resources/theme/js/bootstrap.min.js"/>"
        type="text/javascript"></script>
<!-- Morris.js charts -->
<script src="<c:url value="/resources/theme/js/raphael-min.js"/>"
        type="text/javascript"></script>
<script src="<c:url value="/resources/theme/js/plugins/morris/morris.min.js"/>"
        type="text/javascript"></script>
<!-- Sparkline -->
<script src="<c:url value="/resources/theme/js/plugins/sparkline/jquery.sparkline.min.js"/>"
        type="text/javascript"></script>
<!-- jvectormap -->
<script src="<c:url value="/resources/theme/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"/>"
        type="text/javascript"></script>
<script src="<c:url value="/resources/theme/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>"
        type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="<c:url value="/resources/theme/js/plugins/jqueryKnob/jquery.knob.js"/>"
        type="text/javascript"></script>
<!-- daterangepicker -->
<script src="<c:url value="/resources/theme/js/plugins/daterangepicker/daterangepicker.js"/>"
        type="text/javascript"></script>
<!-- datepicker -->
<%--<script src="<c:url value="/resources/theme/js/plugins/datepicker/bootstrap-datepicker.js"/>"
        type="text/javascript"></script>--%>
<!-- Bootstrap WYSIHTML5 -->
<script src="<c:url value="/resources/theme/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>"
        type="text/javascript"></script>
<!-- iCheck -->
<script src="<c:url value="/resources/theme/js/plugins/iCheck/icheck.min.js"/>"
        type="text/javascript"></script>
<!-- DATA TABES SCRIPT -->
<script src="<c:url value="/resources/theme/js/plugins/datatables/jquery.dataTables.js"/>"
        type="text/javascript"></script>
<script src="<c:url value="/resources/theme/js/plugins/datatables/dataTables.bootstrap.js"/>"
        type="text/javascript"></script>
<!-- InputMask -->
<script src="<c:url value="/resources/theme/js/plugins/input-mask/jquery.inputmask.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/theme/js/plugins/input-mask/jquery.inputmask.date.extensions.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/theme/js/plugins/input-mask/jquery.inputmask.extensions.js"/>" type="text/javascript"></script>

<!-- AdminLTE App -->
<script src="<c:url value="/resources/theme/js/AdminLTE/app.js"/>"
        type="text/javascript"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- AdminLTE for demo purposes -->
<script src="<c:url value="/resources/theme/js/AdminLTE/demo.js"/>"
        type="text/javascript"></script>

<!-- page script -->
<script type="text/javascript">
    $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });
</script>
<!-- Page script -->
<script type="text/javascript">
    $(function() {
        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();
    });
</script>

<!-- fullCalendar -->
<script src="<c:url value="/resources/theme/js/plugins/fullcalendar/fullcalendar.min.js"/>" type="text/javascript"></script>
<!-- Page specific script -->
<script type="text/javascript">
    $(function() {

        /* initialize the external events
         -----------------------------------------------------------------*/
        function ini_events(ele) {
            ele.each(function() {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 1070,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0  //  original position after the drag
                });

            });
        }
        ini_events($('#external-events div.external-event'));

        /* initialize the calendar
         -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear();
        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            buttonText: {//This is to add icons to the visible buttons
                prev: "<span class='fa fa-caret-left'></span>",
                next: "<span class='fa fa-caret-right'></span>",
                today: 'today',
                month: 'month',
                week: 'week',
                day: 'day'
            },
            //Random default events
            events: [
                {
                    title: 'All Day Event',
                    start: new Date(y, m, 1),
                    backgroundColor: "#f56954", //red
                    borderColor: "#f56954" //red
                },
                {
                    title: 'Long Event',
                    start: new Date(y, m, d - 5),
                    end: new Date(y, m, d - 2),
                    backgroundColor: "#f39c12", //yellow
                    borderColor: "#f39c12" //yellow
                },
                {
                    title: 'Meeting',
                    start: new Date(y, m, d, 10, 30),
                    allDay: false,
                    backgroundColor: "#0073b7", //Blue
                    borderColor: "#0073b7" //Blue
                },
                {
                    title: 'Lunch',
                    start: new Date(y, m, d, 12, 0),
                    end: new Date(y, m, d, 14, 0),
                    allDay: false,
                    backgroundColor: "#00c0ef", //Info (aqua)
                    borderColor: "#00c0ef" //Info (aqua)
                },
                {
                    title: 'Birthday Party',
                    start: new Date(y, m, d + 1, 19, 0),
                    end: new Date(y, m, d + 1, 22, 30),
                    allDay: false,
                    backgroundColor: "#00a65a", //Success (green)
                    borderColor: "#00a65a" //Success (green)
                },
                {
                    title: 'Click for Google',
                    start: new Date(y, m, 28),
                    end: new Date(y, m, 29),
                    url: 'http://google.com/',
                    backgroundColor: "#3c8dbc", //Primary (light-blue)
                    borderColor: "#3c8dbc" //Primary (light-blue)
                }
            ],
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }
        });

        /* ADDING EVENTS */
        var currColor = "#f56954"; //Red by default
        //Color chooser button
        var colorChooser = $("#color-chooser-btn");
        $("#color-chooser > li > a").click(function(e) {
            e.preventDefault();
            //Save color
            currColor = $(this).css("color");
            //Add color effect to button
            colorChooser
                    .css({"background-color": currColor, "border-color": currColor})
                    .html($(this).text()+' <span class="caret"></span>');
        });
        $("#add-new-event").click(function(e) {
            e.preventDefault();
            //Get value and make sure it is not null
            var val = $("#new-event").val();
            if (val.length == 0) {
                return;
            }

            //Create event
            var event = $("<div />");
            event.css({"background-color": currColor, "border-color": currColor, "color": "#fff"}).addClass("external-event");
            event.html(val);
            $('#external-events').prepend(event);

            //Add draggable funtionality
            ini_events(event);

            //Remove event from text input
            $("#new-event").val("");
        });
    });
</script>



<%--/*********************************************************/--%>

<script type="text/javascript">
    $(function() {

        /* initialize the external events
         -----------------------------------------------------------------*/
        function ini_events(ele) {
            ele.each(function() {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 1070,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0  //  original position after the drag
                });

            });
        }
        ini_events($('#external-classes div.external-class'));

        /* initialize the calendar
         -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date();
        var d = date.getDate(),
                m = date.getMonth(),
                y = date.getFullYear();
        $('#calendar2').fullCalendar({

            //Random default events

            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) { // this function is called when something is dropped

                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');

                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);

                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");

                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar2').fullCalendar('renderEvent', copiedEventObject, true);

                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }

            }
        });

    });
</script>

<script src="<c:url value="/resources/theme/js/AdminLTE/dashboard.js"/>" type="text/javascript"></script>

</body>
</html>



