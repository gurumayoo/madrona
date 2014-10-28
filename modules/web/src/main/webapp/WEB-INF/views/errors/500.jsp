<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
    <head>
        <title><fmt:message key="label.head.title.dash.board"/></title>
    </head>
    <body>
    <!-- Right side column. Contains the navbar and content of the page -->
    <aside class="right-side">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                500 Error Page
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Examples</a></li>
                <li class="active">500 error</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="error-page">
                <h2 class="headline">500</h2>
                <div class="error-content">
                    <h3><i class="fa fa-warning text-yellow"></i> Oops! Something went wrong.</h3>
                    <p>
                        We will work on fixing that right away.
                        Meanwhile, you may <a href='index'>return to dashboard</a> or try using the search form.
                    </p>
                    <form class='search-form'>
                        <div class='input-group'>
                            <input type="text" name="search" class='form-control' placeholder="Search"/>
                            <div class="input-group-btn">
                                <button type="submit" name="submit" class="btn btn-info"><i class="fa fa-search"></i></button>
                            </div>
                        </div><!-- /.input-group -->
                    </form>
                </div>
            </div><!-- /.error-page -->

        </section><!-- /.content -->

    </aside><!-- /.right-side -->
    </body>
</fmt:bundle>
</html>