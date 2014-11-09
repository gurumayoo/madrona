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
                            class="fa fa-plus"></i> Add New House</a>
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
                            <h3 class="box-title">House Info Table</h3>

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
                                    <th>House ID</th>
                                    <th>House Name</th>
                                    <th>Created Date</th>
                                    <th>House Color</th>
                                    <th>Description</th>
                                </tr>
                                <tr>
                                    <td>183</td>
                                    <td>John Doe</td>
                                    <td>11-7-2014</td>
                                    <td><span class="label label-success">Approved</span></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                </tr>
                                <tr>
                                    <td>219</td>
                                    <td>Jane Doe</td>
                                    <td>11-7-2014</td>
                                    <td><span class="label label-warning">Pending</span></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                </tr>
                                <tr>
                                    <td>657</td>
                                    <td>Bob Doe</td>
                                    <td>11-7-2014</td>
                                    <td><span class="label label-primary">Approved</span></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                </tr>
                                <tr>
                                    <td>175</td>
                                    <td>Mike Doe</td>
                                    <td>11-7-2014</td>
                                    <td><span class="label label-danger">Denied</span></td>
                                    <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                                </tr>
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
                    <h4 class="modal-title"><i class="fa fa-plus"></i> Add New House</h4>
                </div>
                <form name="add-house" action="add-house-action" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">House Name</span>
                                <input name="house_name" type="text" class="form-control" placeholder="House Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">House Color</span>
                                <select name="house_color" class="form-control" title="House Color">
                                    <option value="Red"> Red</option>
                                    <option value="Blue"> Blue</option>
                                    <option value="Yellow"> Yellow</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer clearfix">

                        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>
                            Discard
                        </button>

                        <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-plus"></i> Add</button>
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