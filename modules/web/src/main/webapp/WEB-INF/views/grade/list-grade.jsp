<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head>
        <title><fmt:message key="label.head.title.dash.board"/></title>
        <link href="<c:url value="/resources/theme/css/datatables/dataTables.bootstrap.css"/>" rel="stylesheet"
              type="text/css"/>
    </head>

    <body>

    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Data Tables
                <small>advanced tables</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- content -->
        <section class="content">

            <div class="row">
                <div class="col-xs-3">
                    <!-- add new house btn -->
                    <a class="btn btn-block btn-primary" data-toggle="modal" data-target="#compose-modal"><i
                            class="fa fa-plus"></i> Add New Classes</a>
                </div>
            </div>
            <br/>

            <c:if test="${not empty status}">

                <div class="alert alert-success alert-dismissable">
                    <i class="fa fa-check"></i>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <b>Success!</b> <c:out value="${status}"/>
                </div>
            </c:if>
            <br/>

            <div class="row">
                <div class="col-xs-12">

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Classes Info Table</h3>

                            <div class="box-tools">
                                <div class="input-group">
                                    <input type="text" name="table_search" class="form-control input-sm pull-right"
                                           style="width: 150px;" placeholder="Search"/>

                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover table-bordered">
                                <tr>
                                    <th>Class ID</th>
                                    <th>Class Name</th>
                                    <th>Created Date</th>
                                    <th>Action</th>
                                </tr>
                                <c:forEach var="grade" items="${grades}">
                                    <tr>
                                        <td>${grade.gradeName}</td>
                                        <td>${grade.gradeTeacher}</td>
                                        <td>11-7-2014</td>
                                        <td>
                                            <a href="delete-grade?grade-id=${grade.id}">
                                                <span class="label label-danger">Delete</span>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>


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


    <!-- Add New House Model -->
    <div class="modal fade" id="compose-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"><i class="fa fa-plus"></i> Add New Class</h4>
                </div>
                <form name="add-house" action="add-grade-action" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">Class Name</span>
                                <input name="grade_name" type="text" class="form-control" placeholder="Class Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">Class Teacher</span>
                                <input name="grade_teacher" type="text" class="form-control"
                                       placeholder="Class Teacher Name">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer clearfix">

                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>
                            Discard
                        </button>


                        <button type="submit" class="btn btn-primary pull-left col-xs-3">
                            <i class="fa fa-plus"></i> Add
                        </button>

                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->

    </body>
</fmt:bundle>
</html>