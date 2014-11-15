<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head>
        <title><fmt:message key="label.head.title.dash.board"/></title>
        <link href="<c:url value="/resources/theme/css/datatables/dataTables.bootstrap.css"/>" rel="stylesheet"
              type="text/css"/>
    </head>

    <body class="skin-blue">

    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Student Table
                <small>advanced tables</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-3">
                    <!-- add new house btn -->
                    <a href="add-student" class="btn btn-block btn-primary"><i class="fa fa-plus"></i> Add New Student</a>
                </div>
            </div>
            <br/>
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Student Information Table</h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Student Name</th>
                                    <th>Grade</th>
                                    <th>Date of Birth</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>


                                <c:forEach var="student" items="${students}">
                                    <tr>
                                        <td><a href="view-student?id=${student.id}">${student.firstName}, ${student.lastName}</a></td>
                                        <td>${student.grade}</td>
                                        <td>${student.dateOfBirth}</td>
                                        <td>${student.emailAddress}</td>
                                        <td><span class="label label-success">Active</span></td>
                                    </tr>
                                </c:forEach>


                                </tbody>
                                <tfoot>
                                </tfoot>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>

        </section>
        <!-- /.content -->
    </aside>
    <!-- /.right-side -->

    </body>
</fmt:bundle>
</html>