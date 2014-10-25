<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
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

                            <h3>USER EDIT</h3>
                        </div>
                        <!-- /widget-header -->
                        <div class="widget-content">
                            <div class="widget big-stats-container">
                                <div class="widget-content">
                                    <form:form id="add-student" class="form-horizontal" method="post" action="edit-user-action" commandName="user">
                                        <fieldset>
                                            <br>
                                            <br>
                                            <div class="control-group">
                                                <label class="control-label" for="firstName">First Name</label>

                                                <div class="controls">
                                                    <form:input type="text" class="span4" id="firstName"
                                                           value="${user.firstName}" path="firstName"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="lastName">Last Name</label>

                                                <div class="controls">
                                                    <form:input type="text" class="span4" id="lastName"
                                                           value="${user.lastName}" path="lastName"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="email">Email Address</label>

                                                <div class="controls">
                                                    <form:input type="text" class="span4" id="email"
                                                           value="${user.email}" path="email"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="username">Username</label>

                                                <div class="controls">
                                                    <form:input type="text" class="span4" id="username"
                                                           value="${user.userName}" path="userName"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->

                                            <div class="control-group">
                                                <label class="control-label" for="status">Status</label>

                                                <div class="controls">
                                                    <form:input type="text" class="span4" id="status"
                                                           value="${user.status}" path="status"/>
                                                </div>
                                                <!-- /controls -->
                                            </div>
                                            <!-- /control-group -->
                                        </fieldset>

                                        <br/>

                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Save</button>
                                            <a class="btn" href="/school-web/list-users">Close</a>
                                        </div>

                                    </form:form>
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