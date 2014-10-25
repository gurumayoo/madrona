<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title><fmt:message key="label.student.information"/></title>
</head>

<body>
<div class="span9">
<div class="widget">
<div class="widget-header">
    <i class="icon-user"></i>

    <h3>Edit Student Info</h3>
</div>
<!-- /widget-header -->
<div class="widget-content">
<div class="tabbable">
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#formControls" data-toggle="tab">Student Information</a>
    </li>
    <li>
        <a href="#jscontrols" data-toggle="tab">Parent/Guardian Information</a>
    </li>
</ul>

<%--<br>--%>

<div class="tab-content">
<div class="tab-pane active" id="formControls">
    <form:form id="add-student" class="form-horizontal" method="post" action="addStudentAction" commandName="student">
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
                     data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <form:input type="text" id="dateOfBirth" value="" path="dateOfBirth" readonly="true"/>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input2" value=""/><br/>
            </div>


            <div class="control-group">
                <label class="control-label">Grade</label>

                <div class="controls">
                        <%--<form:input type="text" class="span4" id="grade" value="" path="grade"/>--%>
                    <form:select id="grade" class="selectpicker" path="grade">
                        <form:option value="1">1</form:option>
                        <form:option value="2">2</form:option>
                        <form:option value="3">3</form:option>
                        <form:option value="4">4</form:option>
                        <form:option value="5">4</form:option>
                    </form:select>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

        </fieldset>

        <fieldset>
            <legend>Contact Info</legend>
            <div class="control-group">
                <label class="control-label" for="permanentAddress1">Permanent Address Line 1</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="permanentAddress1" value="" path="permanentAddressLine1"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="permanentAddress2">Permanent Address Line 2</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="permanentAddress2" value="" path="permanentAddressLine2"/>
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
                    <form:input type="text" class="span6" id="tempAddress1" value="" path="tempAddressLine1"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="tempAddress2">Temp. Address Line 2</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="tempAddress2" value="" path="tempAddressLine2"/>
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
            <legend>Other Info</legend>
            <div class="control-group">
                <label class="control-label">Checkboxes</label>

                <div class="controls">
                    <label class="checkbox inline"><input type="checkbox"> Option 01</label>
                    <label class="checkbox inline"><input type="checkbox"> Option 02</label>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label">Sport House</label>

                <div class="controls">

                    <form:select id="sportHouse" class="selectpicker" path="houseId">
                        <c:forEach items="${houseList}" var="house">

                            <form:option value="${house.houseId}">${house.houseName}</form:option>
                        </c:forEach>

                    </form:select>

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

<%--next tab--%>
<div class="tab-pane " id="jscontrols">
    <form:form id="add-parent" class="form-horizontal" method="post" action="addParentAction" commandName="parent">

        <fieldset>

            <legend>Father Info</legend>

            <div class="control-group">
                <label class="control-label" for="fatherFirstName">Father's First Name</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="fatherFirstName" value="" path="fatherFirstName"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="fatherLastName">Father's Last Name</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="fatherLastName" value="" path="fatherLastName"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="fatherJob">Father's Job</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="fatherJob" value="" path="fatherJob"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label">Father's Date of Birth</label>

                <div class="controls input-append date form_date" style="margin-left:20px" data-date=""
                     data-date-format="dd MM yyyy" data-link-field="dtp_input3" data-link-format="yyyy-mm-dd">
                    <form:input type="text" id="fatherDateOfBirth" value="" path="fatherDateOfBirth" readonly="true"/>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input3" value=""/><br/>
            </div>

        </fieldset>

        <fieldset>

            <legend>Mother Info</legend>

            <div class="control-group">
                <label class="control-label" for="motherFirstName">Mother's First Name</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="motherFirstName" value="" path="motherFirstName"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="motherLastName">Mother's Last Name</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="motherLastName" value="" path="motherLastName"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label" for="motherJob">Mother's Job</label>

                <div class="controls">
                    <form:input type="text" class="span6" id="motherJob" value="" path="motherJob"/>
                </div>
                <!-- /controls -->
            </div>
            <!-- /control-group -->

            <div class="control-group">
                <label class="control-label">Father's Date of Birth</label>

                <div class="controls input-append date form_date" style="margin-left:20px" data-date=""
                     data-date-format="dd MM yyyy" data-link-field="dtp_input4" data-link-format="yyyy-mm-dd">
                    <form:input type="text" id="motherDateOfBirth" value="" path="motherDateOfBirth" readonly="true"/>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-th"></i></span>
                </div>
                <input type="hidden" id="dtp_input4" value=""/><br/>
            </div>

        </fieldset>

        <br/>

        <div class="form-actions">
            <button type="submit" class="btn btn-primary">Save</button>
            <button class="btn">Cancel</button>
        </div>
    </form:form>
    <!-- /form-actions -->
</div>

<%--end next tab--%>
</div>
</div>
</div>
<!-- /widget-content -->

</div>
<!-- /widget -->

</div>
</body>
</html>