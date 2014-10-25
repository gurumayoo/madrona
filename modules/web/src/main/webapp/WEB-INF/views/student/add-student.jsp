<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head><title><fmt:message key="label.head.title.dash.board"/></title></head>

    <body class="skin-blue">

    <jsp:include page="../../includes/top-navbar.jsp"/>

    <div class="wrapper row-offcanvas row-offcanvas-left">

        <jsp:include page="../../includes/side-menu.jsp"/>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Student Info
                    <small>Preview</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Student</a></li>
                    <li class="active">Add Student</li>
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
                                <h3 class="box-title">Primary Info</h3>
                            </div>
                            <!-- /.box-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="firstName">First Name</label>
                                        <input type="text" class="form-control" id="firstName"
                                               placeholder="Enter First Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" class="form-control" id="lastName"
                                               placeholder="Enter Last Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="emailAddress">Email address</label>
                                        <input type="email" class="form-control" id="emailAddress"
                                               placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1"
                                               placeholder="Password">
                                    </div>
                                    <!-- radio -->
                                    <div class="form-group">
                                        <label for="genderMale">Gender</label>

                                        <div class="radio">
                                            <label><input type="radio" name="gender" id="genderMale" value="male"
                                                          checked> Male</label>
                                        </div>
                                        <div class="radio">
                                            <label><input type="radio" name="gender" id="genderFemale" value="female">
                                                Female</label>
                                        </div>
                                    </div>

                                    <!-- textarea -->
                                    <div class="form-group">
                                        <label>Home Address</label>
                                        <textarea class="form-control" rows="3" placeholder="Enter Address"></textarea>
                                    </div>

                                    <!-- select -->
                                    <div class="form-group">
                                        <label>Current Grade</label>
                                        <select class="form-control">
                                            <option> 1</option>
                                            <option> 2</option>
                                            <option> 3</option>
                                            <option> 4</option>
                                            <option> 5</option>
                                        </select>
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

                        <div class="box box-info">
                            <div class="box-header">
                                <h3 class="box-title">Parent Info</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Father's Name</label>
                                        <input type="text" class="form-control" placeholder="Enter Father's Name"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Father's Job</label>
                                        <input type="text" class="form-control" placeholder="Enter Father's Job"/>
                                    </div>

                                    <div class="form-group">
                                        <label>Mother's Name</label>
                                        <input type="text" class="form-control" placeholder="Enter Mother's Name"/>
                                    </div>

                                    <div class="form-group">
                                        <label>Mother's Job</label>
                                        <input type="text" class="form-control" placeholder="Enter Mother's Job"/>
                                    </div>
                                </form>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->


                        <div class="box box-info">
                            <div class="box-header">
                                <h3 class="box-title">Account Info</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <form role="form">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" class="form-control" placeholder="Enter Username"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control" placeholder="Enter Password"/>
                                    </div>
                                </form>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
                <form role="form">
                    <div class="box box-body">
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="button" class="btn btn-default">Cancel</button>
                        </div>
                    </div>
                </form>
            </section>
            <!-- /.content -->
        </aside>
        <!-- /.right-side -->
    </div>
    <!-- ./wrapper -->
    <!-- add new calendar event modal -->
    </body>
</fmt:bundle>
</html>