<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title><fmt:message key="label.staff.information"/></title>
</head>
<body>
<%@ include file="/WEB-INF/includes/admin-navbar.jsp" %>
<%@ include file="/WEB-INF/includes/subnavbar.jsp" %>
<div class="main main-inner">
    <div class="container">
        <div class="row">
            <%@ include file="/WEB-INF/includes/side-menu.jsp" %>
            <div class="span9">

                <div class="widget widget-nopad">
                    <div class="widget-header"><i class="icon-list-alt"></i>

                        <h3><fmt:message key="label.staff.information"/></h3>
                    </div>
                    <!-- /widget-header -->
                    <div class="widget-content">
                        <div class="widget big-stats-container">
                            <div class="widget-content">

                                <c:if test="${!empty staffList}">
                                    <table class="table table-bordered">
                                        <tr class="ro">
                                            <th>First Name</th>
                                            <th>Last Teacher</th>
                                            <th>Gender</th>
                                            <th>Action</th>


                                        </tr>
                                        <c:forEach items="${staffList}" var="staff">
                                            <tr>
                                                <td>${staff.firstName}</td>
                                                <td>${staff.lastName}</td>
                                                <td>${staff.gender}</td>

                                                <td>
                                                    <a href="delete-staff/${staff.staffId}">Delete</a> ,
                                                    <a href="view-staff/${staff.staffId}">View</a> ,
                                                    <a href="edit-staff/${staff.staffId}">Edit</a>
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
</body>
</html>