<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
</head>
<body>
<fmt:bundle basename="messages">
    <%@ include file="/WEB-INF/includes/admin-navbar.jsp" %>
    <%@ include file="/WEB-INF/includes/subnavbar.jsp" %>

    <div class="main main-inner">
        <div class="container">
            <div class="row">
                <%@ include file="/WEB-INF/includes/side-menu.jsp" %>
                <div class="span9">
                    <div class="widget widget-nopad">
                        <div class="widget-header"><i class="icon-list-alt"></i>

                            <h3>USER VIEW</h3>
                        </div>
                        <!-- /widget-header -->
                        <div class="widget-content">
                            <div class="widget big-stats-container">
                                <div class="widget-content">
                                    <form id="add-student" class="form-horizontal">
                                        <fieldset>
                                            <br>
                                            <br>

                                            <div class="control-group">
                                                <label class="control-label" for="firstName">First Name</label>

                                                <div class="controls">
                                                    <input type="text" class="span4" id="firstName"
                                                           readonly="true" value="${user.firstName}"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="lastName">Last Name</label>

                                                <div class="controls">
                                                    <input type="text" class="span4" id="lastName"
                                                           readonly="true" value="${user.lastName}"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="email">Email Address</label>

                                                <div class="controls">
                                                    <input type="text" class="span4" id="email"
                                                           readonly="true" value="${user.email}"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="username">Username</label>

                                                <div class="controls">
                                                    <input type="text" class="span3" id="username"
                                                           readonly="true" value="${user.userName}"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="status">Status</label>

                                                <div class="controls">
                                                    <input type="text" class="span3" id="status"
                                                           readonly="true" value="${user.status}"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->
                                        </fieldset>

                                        <br/>

                                        <div class="form-actions">
                                            <a class="btn btn-primary" href="edit-user?userId=${user.userId}">Edit</a>
                                            <a class="btn" href="/school-web/list-users">Close</a>
                                        </div>
                                    </form>
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
</fmt:bundle>
</body>
</html>