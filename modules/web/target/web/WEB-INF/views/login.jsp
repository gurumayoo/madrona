<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html class="bg-black">
<head>
    <title><fmt:message key="label.welcome.to.school.name"/></title>
</head>

<body class="bg-black">
<fmt:bundle basename="messages">

<div class="form-box" id="login-box">
    <div class="header">Sign In</div>
    <form action="../index.html" method="post">
        <div class="body bg-gray">
            <div class="form-group">
                <input type="text" name="userid" class="form-control" placeholder="Username"/>
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
            <div class="form-group">
                <input type="checkbox" name="remember_me"/> Remember me
            </div>
        </div>
        <div class="footer">
            <button type="submit" class="btn bg-olive btn-block">Sign me in</button>

            <p><a href="#">I forgot my password</a></p>

            <a href="register.html" class="text-center">Register a new membership</a>
        </div>
    </form>

    <div class="margin text-center">
        <span>Sign in using social networks</span>
        <br/>
        <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
        <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
        <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

    </div>
</div>

</fmt:bundle>
<%--<script src="<c:url value="/resources/admin-theme/js/jquery-1.7.2.min.js"/>"></script>--%>
<script type="text/javascript">
    $(function() {
        $("#username").focus();
    });
</script>
</body>
</html>