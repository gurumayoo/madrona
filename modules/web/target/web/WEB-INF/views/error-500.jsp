<!DOCTYPE html>
<html lang="en">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:bundle basename="messages">
    <head>
        <meta charset="utf-8">
        <title>500 - <fmt:message key="label.school.name"/></title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">

        <link href="<c:url value="/resources/admin-theme/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/resources/admin-theme/css/bootstrap-responsive.min.css"/>" rel="stylesheet"
              type="text/css"/>

        <link href="<c:url value="/resources/admin-theme/css/font-awesome.css"/>css/font-awesome.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">

        <link href="<c:url value="/resources/admin-theme/css/style.css"/>" rel="stylesheet" type="text/css"/>

    </head>

    <body>

    <div class="navbar navbar-fixed-top">

        <div class="navbar-inner">

            <div class="container">

                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <a class="brand" href="index">
                    <fmt:message key="label.school.name"/>
                </a>

                <div class="nav-collapse">
                    <ul class="nav pull-right">

                        <li class="">
                            <a href="index" class="">
                                <i class="icon-chevron-left"></i>
                                Back to Dashboard
                            </a>

                        </li>
                    </ul>

                </div>
                <!--/.nav-collapse -->

            </div>
            <!-- /container -->

        </div>
        <!-- /navbar-inner -->

    </div>
    <!-- /navbar -->


    <div class="container">

        <div class="row">

            <div class="span12">

                <div class="error-container">
                    <h1>500</h1>

                    <h2>Oops! Internal Server Error </h2>

                    <div class="error-details">
                        Sorry, an error has occurred! The server encountered an unexpected condition which prevented it
                        from fulfilling the request. Please try again later.
                    </div>
                    <!-- /error-details -->

                    <div class="error-actions">
                        <a href="index" class="btn btn-large btn-primary">
                            <i class="icon-chevron-left"></i>
                            &nbsp;
                            Back to Dashboard
                        </a>


                    </div>
                    <!-- /error-actions -->

                </div>
                <!-- /error-container -->

            </div>
            <!-- /span12 -->

        </div>
        <!-- /row -->

    </div>
    <!-- /container -->


    <script src="<c:url value="/resources/admin-theme/js/jquery-1.7.2.min.js"/>"></script>
    <script src="<c:url value="/resources/admin-theme/js/bootstrap.js"/>"></script>

    </body>
</fmt:bundle>
</html>
