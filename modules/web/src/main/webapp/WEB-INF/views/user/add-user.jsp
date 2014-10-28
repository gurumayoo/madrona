<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head><title><fmt:message key="label.head.title.dash.board"/></title></head>

    <body class="skin-blue">

    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                User Info
                <small>Preview</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">User</a></li>
                <li class="active">Add User</li>
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
                                    <label for="firstName">User Name</label>
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

                                <!-- Date dd/mm/yyyy -->
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                    </div><!-- /.input group -->
                                </div><!-- /.form group -->

                                <!-- phone mask -->
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <input type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask/>
                                    </div><!-- /.input group -->
                                </div><!-- /.form group -->

                            </div>
                            <!-- /.box-body -->
                        </form>
                    </div>
                    <!-- /.box -->
                </div>
                <!--/.col (left) -->
            </div>
            <!-- /.row -->
            <form role="form" action="list-student">
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

    </body>
</fmt:bundle>
</html>