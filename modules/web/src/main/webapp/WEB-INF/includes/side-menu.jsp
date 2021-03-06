<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<c:url value="/resources/theme/img/avatar3.png"/>" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Hello, Jane</p>

                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i
                                        class="fa fa-search"></i></button>
                            </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="active">
                <a href="index">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-bar-chart-o"></i>
                    <span>Student</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="add-student"><i class="fa fa-angle-double-right"></i> Add Student</a></li>
                    <li><a href="list-student"><i class="fa fa-angle-double-right"></i> Search Student</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Analyse Student</a>
                    </li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-laptop"></i>
                    <span>Classes</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> General</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Icons</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Buttons</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Sliders</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Timeline</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-edit"></i> <span>Staff</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> General Elements</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Advanced
                        Elements</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Editors</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-table"></i> <span>Attendance</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Simple tables</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Data tables</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-calendar"></i> <span>Time Table</span>
                    <small class="badge pull-right bg-red">3</small>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Simple tables</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Data tables</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-envelope"></i> <span>Calender Events</span>
                    <small class="badge pull-right bg-yellow">12</small>
                </a>
                <ul class="treeview-menu">
                    <li><a href="add-event"><i class="fa fa-angle-double-right"></i> Add Event</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Data tables</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>User Management</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="add-user"><i class="fa fa-angle-double-right"></i> Add New User</a></li>
                    <li><a href="list-user"><i class="fa fa-angle-double-right"></i> List Users</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Register</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Lockscreen</a>
                    </li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> 404 Error</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> 500 Error</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Blank Page</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-envelope"></i> <span>Sports</span>
                    <small class="badge pull-right bg-yellow">12</small>
                </a>
                <ul class="treeview-menu">
                    <li><a href="add-house"><i class="fa fa-angle-double-right"></i> Add House</a></li>
                    <li><a href="list-house"><i class="fa fa-angle-double-right"></i> List House</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Assign Student to House</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Pending Student</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> 404 Error</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> 500 Error</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i> Blank Page</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>

