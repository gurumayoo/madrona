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
<div class="main main-inner">
    <div class="container">
        <div class="row">
            <%@ include file="/WEB-INF/includes/side-menu.jsp" %>
            <div class="span9">

                <div class="widget widget-nopad">
                    <div class="widget-header"><i class="icon-list-alt"></i>

                        <h3>House Details</h3>
                    </div>
                    <!-- /widget-header -->
                    <div class="widget-content">
                        <div class="widget big-stats-container">
                            <div class="widget-content">

                                <c:if test="${!empty houseList}">
                                    <table class="table table-bordered">
                                        <tr class="ro">
                                            <th>House Name</th>
                                            <th>House Color</th>
                                            <th>Action</th>
                                        </tr>
                                        <c:forEach items="${houseList}" var="house">
                                            <tr>
                                                <td>${house.houseName}</td>
                                                <td>${house.houseColor}</td>

                                                <td>
                                                    <a href="delete-house/${house.houseId}">Delete</a> ,
                                                    <a href="view-house/${house.houseId}">View</a> ,
                                                    <a href="edit-house/${house.houseId}">Edit</a>
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