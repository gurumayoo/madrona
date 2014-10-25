<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <title><decorator:title default="Madrona | Dashboard" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- bootstrap 3.0.2 -->
    <link href="<c:url value="/resources/theme/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="<c:url value="/resources/theme/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="<c:url value="/resources/theme/css/ionicons.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="<c:url value="/resources/theme/css/morris/morris.css"/>" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="<c:url value="/resources/theme/css/jvectormap/jquery-jvectormap-1.2.2.css"/>" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="<c:url value="/resources/theme/css/datepicker/datepicker3.css"/>" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="<c:url value="/resources/theme/css/daterangepicker/daterangepicker-bs3.css"/>" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<c:url value="/resources/theme/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<c:url value="/resources/theme/css/AdminLTE.css"/>" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <decorator:head />
</head>
<body>

    <decorator:body />



    <!-- jQuery 2.0.2 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <!-- jQuery UI 1.10.3 -->
    <script src="<c:url value="/resources/theme/js/jquery-ui-1.10.3.min.js"/>" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="<c:url value="/resources/theme/js/bootstrap.min.js"/>" type="text/javascript"></script>
    <!-- Morris.js charts -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="<c:url value="/resources/theme/js/plugins/morris/morris.min.js"/>" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="<c:url value="/resources/theme/js/plugins/sparkline/jquery.sparkline.min.js"/>" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="<c:url value="/resources/theme/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/theme/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"/>" type="text/javascript"></script>
    <!-- jQuery Knob Chart -->
    <script src="<c:url value="/resources/theme/js/plugins/jqueryKnob/jquery.knob.js"/>" type="text/javascript"></script>
    <!-- daterangepicker -->
    <script src="<c:url value="/resources/theme/js/plugins/daterangepicker/daterangepicker.js"/>" type="text/javascript"></script>
    <!-- datepicker -->
    <script src="<c:url value="/resources/theme/js/plugins/datepicker/bootstrap-datepicker.js"/>" type="text/javascript"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="<c:url value="/resources/theme/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"/>" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="<c:url value="/resources/theme/js/plugins/iCheck/icheck.min.js"/>" type="text/javascript"></script>

    <!-- AdminLTE App -->
    <script src="<c:url value="/resources/theme/js/AdminLTE/app.js"/>" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="<c:url value="/resources/theme/js/AdminLTE/dashboard.js"/>" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="<c:url value="/resources/theme/js/AdminLTE/demo.js"/>" type="text/javascript"></script>
</body>
</html>



