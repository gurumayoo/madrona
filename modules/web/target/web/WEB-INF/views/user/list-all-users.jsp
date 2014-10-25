<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
</head>
<body>
<fmt:bundle basename="messages">
    <%@ include file="/WEB-INF/includes/admin-navbar.jsp" %>
    <%@ include file="/WEB-INF/includes/subnavbar.jsp" %>
    <div class="main">
        <div class="main-inner">
            <div class="container">
                <div class="row">
                    <%@ include file="/WEB-INF/includes/side-menu.jsp" %>

                    <div class="span9">
                        <div class="widget widget-nopad">
                            <div class="widget-header"><i class="icon-list-alt"></i>

                                <h3>MANAGE USERS</h3>
                            </div>
                            <!-- /widget-header -->
                            <div class="widget-content">
                                <div class="widget big-stats-container">
                                    <div class="widget-content">
                                        <c:if test="${!empty userList}">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>Full Name</th>
                                                    <th>Email</th>
                                                    <th>Username</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                                <c:forEach items="${userList}" var="user">
                                                    <tr>
                                                        <td>${user.firstName}, ${user.lastName} </td>
                                                        <td>${user.email}</td>
                                                        <td>${user.userName}</td>
                                                        <td>${user.status}</td>
                                                        <td>
                                                            <a href="suspend?userId=${user.userId}"><i
                                                                    class="icon-large icon-remove-sign"></i> Suspend</a>
                                                            <a href="view-user?userId=${user.userId}"><i
                                                                    class="icon-large icon-search"></i> View</a>
                                                            <a href="edit-user?userId=${user.userId}"><i
                                                                    class="icon-large icon-edit"></i> Edit</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </c:if>

                                        <div class="pagination-centered">
                                            <div class="pagination">
                                                <ul>
                                                    <li><a href="#">Prev</a></li>
                                                    <li class="active">
                                                        <a href="#">1</a>
                                                    </li>
                                                    <li><a href="#">2</a></li>
                                                    <li><a href="#">3</a></li>
                                                    <li><a href="#">4</a></li>
                                                    <li><a href="#">Next</a></li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                    <!-- /widget-content -->
                                </div>
                            </div>
                        </div>
                        <!-- /widget -->

                    </div>
                    <!-- /span9 -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /main-inner -->
    </div>
    <!-- /main -->


</fmt:bundle>
</body>
</html>