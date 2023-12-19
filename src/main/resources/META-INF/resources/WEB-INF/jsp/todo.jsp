<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Login JSP Page</title>
<link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>
        <div class="container">
        <h1>Enter TODO details</h1>
        <form:form method="POST" modelAttribute="todo">
            Description:<form:input type="text" path="description" required="required"/>
            Target Date:<form:input type="date" path="targetDate" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
        <input type="submit" class="btn btn-success">
        </form:form>

</div>
<script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
</body>
</html>