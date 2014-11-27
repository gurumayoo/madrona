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
        <form role="form" action="add-student-action" method="post">
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
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="first_name">First Name</label>
                                    <input type="text" class="form-control" id="first_name" name="first_name"
                                           value="${student.firstName}">
                                </div>
                                <div class="form-group">
                                    <label for="last_name">Last Name</label>
                                    <input type="text" class="form-control" id="last_name" name="last_name"
                                           value="${student.lastName}">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" class="form-control" id="email" name="email"
                                           value="${student.emailAddress}">
                                </div>
                                <!-- radio -->
                                <div class="form-group">
                                    <label for="genderMale">Gender</label>

                                    <c:out value="${student.gender}"/>

                                    <div class="radio">
                                        <label><input type="radio" name="gender" id="genderMale" value="male"
                                                ${student.gender == 'male'? 'checked':''}> Male</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="gender" id="genderFemale" value="female"
                                                ${student.gender == 'female'? 'checked':''}> Female</label>
                                    </div>
                                </div>

                                <!-- textarea -->
                                <div class="form-group">
                                    <label for="address">Home Address</label>
                                    <textarea class="form-control" rows="3" name="address" id="address"><c:out value="${student.homeAddress}"/>
                                    </textarea>
                                </div>

                                <!-- select -->
                                <div class="form-group">
                                    <label>Current Grade</label>
                                    <select class="form-control" name="grade">
                                        <option value="1"> 1</option>
                                        <option value="2"> 2</option>
                                        <option value="3"> 3</option>
                                        <option value="4"> 4</option>
                                        <option value="5"> 5</option>
                                    </select>
                                </div>

                                <!-- Date dd/mm/yyyy -->
                                <div class="form-group">
                                    <label>Date of Birth</label>

                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" class="form-control" name="birth_date"
                                               value="${student.dateOfBirth}"  data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <!-- /.form group -->

                                <!-- phone mask -->
                                <div class="form-group">
                                    <label>Phone Number</label>

                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <input type="text" class="form-control" name="phone_no"
                                               value="${student.mobileNumber}"   data-inputmask='"mask": "(999) 999-9999"' data-mask/>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <!-- /.form group -->

                            </div>
                            <!-- /.box-body -->
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
                                <!-- text input -->
                                <div class="form-group">
                                    <label>Father's Name</label>
                                    <input type="text" class="form-control" name="father_name" placeholder="Enter Father's Name"/>
                                </div>
                                <div class="form-group">
                                    <label>Father's Job</label>
                                    <input type="text" class="form-control" name="father_job" placeholder="Enter Father's Job"/>
                                </div>

                                <div class="form-group">
                                    <label>Mother's Name</label>
                                    <input type="text" class="form-control" name="mother_name" placeholder="Enter Mother's Name"/>
                                </div>

                                <div class="form-group">
                                    <label>Mother's Job</label>
                                    <input type="text" class="form-control" name="mother_job" placeholder="Enter Mother's Job"/>
                                </div>
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
                                <!-- text input -->
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" placeholder="Enter Username"/>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" placeholder="Enter Password"/>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->


                        <div class="box box-info">
                            <div class="box-header">
                                <h3 class="box-title">Previous School Info</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!-- text input -->
                                <div class="form-group">
                                    <label>School Name</label>
                                    <input type="text" class="form-control" placeholder="Enter.."/>
                                </div>
                                <div class="form-group">
                                    <label>Left Date</label>
                                    <input type="text" class="form-control" placeholder="Enter..."/>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->


                    </div>
                    <!--/.col (right) -->
                </div>
                <!-- /.row -->

                <div class="box box-body">
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="button" class="btn btn-default">Cancel</button>
                    </div>
                </div>

            </section>
            <!-- /.content -->
        </form>
    </aside>
    <!-- /.right-side -->

    </body>
</fmt:bundle>
</html>