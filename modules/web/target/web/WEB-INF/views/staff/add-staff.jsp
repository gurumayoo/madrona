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
<div class="widget">

    <div class="widget-header">
        <i class="icon-user"></i>

        <h3><fmt:message key="label.staff.information"/></h3>
    </div>
    <!-- /widget-header -->

    <div class="widget-content">


        <form:form id="add-staff" class="form-horizontal" method="post" action="addStaffAction"
                   commandName="staff">
            <fieldset>

                <legend>Personal Info</legend>

                <div class="control-group">
                    <label class="control-label" for="firstName">First Name</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="firstName" value="" path="firstName"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="lastName">Last Name</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="lastName" value="" path="lastName"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label">Gender</label>

                    <div class="controls">
                        <label class="radio inline">
                            <form:radiobutton value="Male" path="gender"/> Male
                        </label>
                        <label class="radio inline">
                            <form:radiobutton value="Female" path="gender"/> Female
                        </label>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label">Date of Birth</label>

                    <div class="controls input-append date form_date" style="margin-left:20px" data-date=""
                         data-date-format="dd MM yyyy" data-link-field="dtp_input2"
                         data-link-format="yyyy-mm-dd">
                        <form:input type="text" id="dateOfBirth" value="" path="dateOfBirth" readonly="true"/>
                        <span class="add-on"><i class="icon-remove"></i></span>
                        <span class="add-on"><i class="icon-th"></i></span>
                    </div>
                    <input type="hidden" id="dtp_input2" value=""/><br/>
                </div>

            </fieldset>

            <fieldset>
                <legend>Contact Info</legend>
                <div class="control-group">
                    <label class="control-label" for="permanentAddress1">Permanent Address Line 1</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="permanentAddress1" value=""
                                    path="permanentAddressLine1"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="permanentAddress2">Permanent Address Line 2</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="permanentAddress2" value=""
                                    path="permanentAddressLine2"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="permanentCity">Permanent City</label>

                    <div class="controls">
                        <form:input type="text" class="span4" id="permanentCity" value="" path="permanentCity"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <hr>
                    <label class="control-label" for="tempAddress1">Temp. Address Line 1</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="tempAddress1" value=""
                                    path="tempAddressLine1"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="tempAddress2">Temp. Address Line 2</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="tempAddress2" value=""
                                    path="tempAddressLine2"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="tempCity">Temp. City</label>

                    <div class="controls">
                        <form:input type="text" class="span4" id="tempCity" value="" path="tempCity"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="emailAddress">Email Address</label>

                    <div class="controls">
                        <form:input type="text" class="span4" id="emailAddress" placeholder="sample@gmail.com"
                                    path="emailAddress"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="mobile">Mobile Number</label>

                    <div class="controls">
                        <input type="text" class="span4" id="mobile" placeholder="07X XX XX XXX">
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

            </fieldset>


            <fieldset>
                <legend>Educational Info</legend>
                <div class="control-group">
                    <label class="control-label" for="completedDegree">Degree Completed</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="completedDegree" value=""
                                    path="completedDegree"/>
                    </div>
                    <!-- /controls -->
                </div>
                <!-- /control-group -->

                <div class="control-group">
                    <label class="control-label" for="staffStatus">Staff Status</label>

                    <div class="controls">
                        <form:input type="text" class="span6" id="staffStatus" value="" path="staffStatus"/>
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