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
<div class="main main-inner">
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

                        <form:form id="add-class" class="form-horizontal" method="post" action="addGradeAction"
                                   commandName="grade">
                            <fieldset>

                                <legend>Class Info</legend>

                                <div class="control-group">
                                    <label class="control-label" for="gradeName">Class Name</label>

                                    <div class="controls">
                                        <form:input type="text" class="span4" id="gradeName" value="" path="gradeName"/>
                                    </div>
                                    <!-- /controls -->
                                </div>
                                <!-- /control-group -->

                                <div class="control-group">
                                    <label class="control-label" for="gradeTeacher">Class Teacher</label>

                                    <div class="controls">
                                        <form:input type="text" class="span4" id="gradeTeacher" value=""
                                                    path="gradeTeacher"/>
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
</body>
</html>