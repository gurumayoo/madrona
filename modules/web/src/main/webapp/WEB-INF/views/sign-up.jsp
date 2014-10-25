<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title><fmt:message key="sign.up.for.free.account"/></title>
</head>
<body>
<fmt:bundle basename="messages">

    <%@ include file="/WEB-INF/includes/signup-navbar.jsp"%>

    <div class="account-container register">
        <div class="content clearfix">
            <form:form id="create-profile" method="POST" action="add-user-action" commandName="user">

                <h1><fmt:message key="sign.up.for.free.account"/></h1>

                <div class="login-fields">
                    <p><fmt:message key="sign.up.create.your.free.account"/></p>

                    <div class="field">
                        <label for="firstName"><fmt:message key="sign.up.first.name"/></label>
                        <form:input type="text" id="firstName" placeholder="First Name" class="login" path="firstName"/>
                        <span><form:errors path="firstName" cssClass="form-field-error"/></span>
                    </div>
                    <!-- /field -->

                    <div class="field">
                        <label for="lastName"><fmt:message key="sign.up.last.name"/></label>
                        <form:input type="text" id="lastName" placeholder="Last Name" class="login" path="lastName"/>
                        <span><form:errors path="lastName" cssClass="form-field-error"/></span>
                    </div>
                    <!-- /field -->

                    <div class="field">
                        <label for="email"><fmt:message key="sign.up.email"/></label>
                        <form:input type="text" id="email" name="email" placeholder="Email" class="login" path="email"/>
                        <span><form:errors path="email" cssClass="form-field-error"/></span>
                    </div>
                    <!-- /field -->

                    <hr/>

                    <div class="field">
                        <label for="username"><fmt:message key="sign.up.user.name"/></label>
                        <form:input type="text" id="username" placeholder="User Name" class="login" path="userName"/>
                        <span><form:errors path="userName" cssClass="form-field-error"/></span>
                    </div>
                    <!-- /field -->

                    <div class="field">
                        <label for="password"><fmt:message key="sign.up.user.password"/></label>
                        <form:input type="password" id="password" placeholder="Password" class="login" path="password"/>
                        <span><form:errors path="password" cssClass="form-field-error"/></span>
                    </div>
                    <!-- /field -->

                    <div class="field">
                        <label for="confirmPassword"><fmt:message key="sign.up.user.confirm.password"/></label>
                        <input type="password" id="confirmPassword" placeholder="Confirm Password" class="login"/>

                    </div>
                    <!-- /field -->

                </div>
                <!-- /login-fields -->

                <div class="login-actions">

                    <span class="login-checkbox">
                        <input id="agree" name="Field" type="checkbox" class="field login-checkbox"/>
                        <label class="choice" for="agree"><fmt:message
                                key="sign.up.agree.with.terms.and.conditions"/></label>
                    </span>

                    <form:button type="submit" class="button btn btn-primary btn-large">
                        <fmt:message key="sign.up.register"/>
                    </form:button>

                </div>
                <!--login-actions -->

            </form:form>
        </div>
        <!-- /content -->
    </div>
    <!-- /account-container -->

    <!-- Text Under Box -->
    <div class="login-extra">
        <fmt:message key="already.have.an.account"/> <a href="sign-in"><fmt:message key="login.to.your.account"/></a>
    </div>
    <!-- /login-extra -->
</fmt:bundle>
</body>
</html>