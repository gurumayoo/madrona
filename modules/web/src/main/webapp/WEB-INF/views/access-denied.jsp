<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<div class="account-container">
    <div class="content clearfix">

        <h3 id="banner">Unauthorized Access !!</h3>
        <hr/>

        <h3>Access denied!</h3>
        <br/>
        <c:if test="${not empty statusCode}">
            <div style="color:red">
                    ${statusCode}
                <br/>
            </div>
        </c:if>
        <hr>

        <a href="login">Go back to login page</a>
    </div>
</div>
</body>
</html>