<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head>
        <title><fmt:message key="label.head.title.dash.board"/></title>
    </head>
    <body>
    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Calendar
                <small>Control panel</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Calendar</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">


            <div class="row">
                <div class="col-md-3">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h4 class="box-title">Draggable Events</h4>
                        </div>
                        <div class="box-body">
                            <!-- the events -->
                            <div id='external-classes'>
                                <div class='external-class bg-green'>Lunch</div>
                                <div class='external-class bg-red'>Go home</div>
                                <div class='external-class bg-aqua'>Do homework</div>
                                <div class='external-class bg-yellow'>Work on UI design</div>
                                <div class='external-class bg-navy'>Sleep tight</div>
                                <p>
                                    <input type='checkbox' id='drop-remove' /> <label for='drop-remove'>remove after drop</label>
                                </p>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /. box -->

                </div><!-- /.col -->
                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-body no-padding">
                            <!-- THE CALENDAR -->
                            <div id="calendar2"></div>
                        </div><!-- /.box-body -->
                    </div><!-- /. box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->
    </aside><!-- /.right-side -->
    </body>
</fmt:bundle>
</html>