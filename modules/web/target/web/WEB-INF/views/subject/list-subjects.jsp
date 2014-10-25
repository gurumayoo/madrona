<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title><fmt:message key="label.staff.information"/></title>
</head>
<body>
<div class="span9">

    <div class="widget widget-nopad">
        <div class="widget-header"><i class="icon-list-alt"></i>

            <h3><fmt:message key="label.staff.information"/> </h3>
        </div>
        <!-- /widget-header -->
        <div class="widget-content">
            <div class="widget big-stats-container">
                <div class="widget-content">

                    <c:if  test="${!empty subjectList}">
                        <table class="table table-bordered">
                            <tr class="ro">
                                <th>Subject ID</th>
                                <th>Subject Name</th>
                                <th>Action</th>


                            </tr>
                            <c:forEach items="${subjectList}" var="subject">
                                <tr>
                                    <td>${subject.subjectId}</td>
                                    <td>${subject.subjectName}</td>


                                    <td>
                                        <a href="delete-subject/${subject.subjectId}">Delete</a> ,
                                        <a href="view-subject/${subject.subjectId}">View</a> ,
                                        <a href="edit-subject/${subject.subjectId}">Edit</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:if>


                </div>
                <!-- /widget-content -->

            </div>
        </div>
    </div>
    <!-- /widget -->

</div>
</body>
</html>