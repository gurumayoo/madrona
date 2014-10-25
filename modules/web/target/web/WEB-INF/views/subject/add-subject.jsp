<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title><fmt:message key="label.house.information"/></title>
</head>

<body>
<div class="span9">
    <div class="widget">
        <div class="widget-header">
            <i class="icon-user"></i>

            <h3><fmt:message key="label.house.information"/></h3>
        </div>
        <!-- /widget-header -->
        <div class="widget-content">

            <form:form id="add-subject" class="form-horizontal" method="post" action="addSubjectAction" commandName="subject">
                <fieldset>

                    <legend>Subject Info</legend>

                    <div class="control-group">
                        <label class="control-label" for="subjectName">Subject Name</label>

                        <div class="controls">
                            <form:input type="text" class="span4" id="subjectName" value="" path="subjectName"/>
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
</body>
</html>