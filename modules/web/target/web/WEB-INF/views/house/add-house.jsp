<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title><fmt:message key="label.house.information"/></title>
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
                    <div class="widget">
                        <div class="widget-header">
                            <i class="icon-user"></i>

                            <h3><fmt:message key="label.house.information"/></h3>
                        </div>
                        <!-- /widget-header -->
                        <div class="widget-content">

                            <form:form id="add-house" class="form-horizontal" method="post" action="addHouseAction"
                                       commandName="house">
                                <fieldset>

                                    <legend>House Info</legend>

                                    <div class="control-group">
                                        <label class="control-label" for="houseName">House Name</label>

                                        <div class="controls">
                                            <form:input type="text" class="span4" id="houseName" value=""
                                                        path="houseName"/>
                                        </div>
                                        <!-- /controls -->
                                    </div>
                                    <!-- /control-group -->

                                    <div class="control-group">
                                        <label class="control-label" for="houseColor">House Color</label>

                                        <div class="controls">
                                            <form:input type="text" class="span4" id="houseColor" value=""
                                                        path="houseColor"/>
                                        </div>
                                        <!-- /controls -->
                                    </div>
                                    <!-- /control-group -->

                                </fieldset>

                                <br/>

                                <div class="form-actions">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button class="btn">Cancel</button>
                                </div>
                            </form:form>
                            <!-- /form-actions -->
                        </div>
                        <!-- /widget-content -->

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