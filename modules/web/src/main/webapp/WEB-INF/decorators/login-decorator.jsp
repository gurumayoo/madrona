<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" class="bg-black">

<head>
    <title><decorator:title default="Madrona | Log in"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- bootstrap 3.0.2 -->
    <link href="<c:url value="/resources/theme/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="<c:url value="/resources/theme/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<c:url value="/resources/theme/css/AdminLTE.css"/>" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <decorator:head/>
</head>

<body class="bg-black">

<decorator:body/>

<!-- jQuery 2.0.2 -->
    <script src="<c:url value="/resources/theme/js/jquery.min.js"/>" type="text/javascript"></script>
<!-- Bootstrap -->
<script src="<c:url value="/resources/theme/js/bootstrap.min.js"/>" type="text/javascript"></script>
</body>
</html>



