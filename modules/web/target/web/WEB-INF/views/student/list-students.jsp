<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title></title>
</head>
<body>
<%@ include file="/WEB-INF/includes/admin-navbar.jsp" %>
<%@ include file="/WEB-INF/includes/subnavbar.jsp" %>
<div class="main">
    <div class="main-inner">
        <div class="container">
            <div class="row">
                <%@ include file="/WEB-INF/includes/side-menu.jsp" %>
                <div class="span9">

                    <div class="control-group">
                        <div class="controls">
                            <div class="alert alert-success">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>Success!</strong> You have successfully inserted data.
                            </div>
                        </div>
                        <!-- /controls -->
                    </div>
                    <!-- /control-group -->


                    <div class="widget widget-nopad">
                        <div class="widget-header"><i class="icon-list-alt"></i>

                            <h3> Today's Stats</h3>
                        </div>
                        <!-- /widget-header -->
                        <div class="widget-content">
                            <div class="widget big-stats-container">
                                <div class="widget-content">

                                    <c:if test="${!empty studentList}">
                                        <table class="table table-bordered">
                                            <tr class="ro">
                                                <th>Full Name</th>
                                                <th>Grade</th>
                                                <th>Date of Birth</th>
                                                <th>Action</th>

                                            </tr>
                                            <c:forEach items="${studentList}" var="student">
                                                <tr>
                                                    <td>${student.firstName}, ${student.lastName} </td>
                                                    <td>${student.grade}</td>
                                                    <td>${student.dateOfBirth}</td>
                                                    <td><a href="student-delete/${student.studentId}">delete</a> ,
                                                        <a href="student-view/${student.studentId}">View</a> ,
                                                        <a href="edit-student?student-id=${student.studentId}">Edit</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </c:if>

                                </div>
                                <!-- /widget-content -->

                            </div>
                        </div>
                    </div>
                    <!-- /widget -->


                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /main-inner -->
</div>
<!-- /main -->
</body>
</html>