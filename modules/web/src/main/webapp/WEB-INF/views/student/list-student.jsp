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
                                    <th>Engine version</th>
                                    <%--<th>CSS grade</th>--%>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Trident</td>
                                    <td>Internet
                                        Explorer 4.0
                                    </td>
                                    <td>Win 95+</td>
                                    <td> 4</td>
                                    <%--<td>X</td>--%>
                                </tr>

                                <c:forEach var="student" items="${students}">
                                    <tr>
                                        <td>${student.firstName}</td>
                                        <td>${student.lastName}</td>
                                        <td>11-7-2014</td>
                                        <td>
                                            <a href="delete-student?student-id=${student.id}">
                                                <span class="label label-danger">Delete</span>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>


                                </tbody>
                                <tfoot>
                                <tr>
                                    <th>Rendering engine</th>
                                    <th>Browser</th>
                                    <th>Platform(s)</th>
                                    <th>Engine version</th>
                                    <%--<th>CSS grade</th>--%>
                                </tr>
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