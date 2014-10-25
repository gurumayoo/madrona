<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <meta charset="utf-8">
    <title><decorator:title default="Welcome to My School" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/bootstrap-responsive.min.css"/>"/>
    <!-- Add custom CSS here -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/font-awesome.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/google-font.css"/>" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/style.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/admin-theme/css/pages/signin.css"/>"/>
    <decorator:head />
</head>
<body>


    <decorator:body />

    <!-- Bootstrap core JavaScript -->
    <script src="<c:url value="/resources/admin-theme/js/jquery-1.7.2.min.js"/>"></script>
    <script src="<c:url value="/resources/admin-theme/js/bootstrap.js"/>"></script>
    <script src="<c:url value="/resources/admin-theme/js/signin.js"/>"></script>
</body>
</html>



