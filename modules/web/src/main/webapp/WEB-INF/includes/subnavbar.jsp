<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="subnavbar">
    <div class="subnavbar-inner">
        <div class="container">
            <ul class="mainnav">
                <li class="active">
                    <a href="/school-web/index">
                        <i class="icon-dashboard"></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-list-alt"></i>
                        <span>Student</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/school-web/add-student">Add new Student</a></li>
                        <li><a href="/school-web/list-students">View All Student</a></li>
                        <li><a href="#">Search Student</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-globe"></i>
                        <span>Staff</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/school-web/add-staff">Add new Staff</a></li>
                        <li><a href="/school-web/list-staffs">View All Staff</a></li>

                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-tasks"></i>
                        <span>Classes</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/school-web/add-grade">Add new Class</a></li>
                        <li><a href="/school-web/list-grades">View All Classes</a></li>
                        <li><a href="#">Search Class</a></li>
                        <li><a href="#">Add student to class</a></li>
                        <li><a href="#">Add teacher to class</a></li>
                        <li><a href="#">Add teacher to subject</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-briefcase"></i>
                        <span>Others</span>
                        <b class="caret"></b>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a href="/school-web/add-house">Add Sport House</a></li>
                        <li><a href="/school-web/list-houses">View All Sport House</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="icon-fullscreen"></i>
                        <span>Users</span>
                        <b class="caret"></b>
                    </a>

                    <ul class="dropdown-menu">
                        <li><a href="/school-web/add-user">Add New User Account</a></li>
                        <li><a href="/school-web/list-users">Manage Users</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /container -->
    </div>
    <!-- /subnavbar-inner -->
</div>
<!-- /subnavbar -->
