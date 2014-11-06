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
                House Info
                <small>Preview</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">House</a></li>
                <li class="active">Add House</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Add New House</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form role="form" action="add-house-action" method="POST">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="firstName">House Name</label>
                                    <input type="text" class="form-control" id="firstName"
                                           placeholder="Enter House Name">
                                </div>
                                <div class="form-group">
                                    <label for="lastName">Course Color</label>
                                    <input type="text" class="form-control" id="lastName"
                                           placeholder="Enter Last Name">
                                </div>

                                <div class="box-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <button type="button" class="btn btn-default">Cancel</button>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </form>
                    </div>
                    <!-- /.box -->
                </div>
                <!--/.col (left) -->

                <!-- right column -->
                <div class="col-md-6">

                </div>
                <!--/.col (right) -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </aside>
    <!-- /.right-side -->
    <!-- add new calendar event modal -->
    </body>
</fmt:bundle>
</html>