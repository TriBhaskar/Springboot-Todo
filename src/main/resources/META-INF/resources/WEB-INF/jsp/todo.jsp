<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Add Todo JSP Page</title>
<link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
<link href="webjars\bootstrap-datepicker\1.9.0\css\bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
</head>
<body>
<h1>
        <div class="container">
        <h1>Enter TODO details</h1>
        <form:form method="POST" modelAttribute="todo">
        <fieldset>
            Description:<form:input type="text" path="description" required="required"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>
        <fieldset>
          Target Date:<form:input type="text" path="targetDate" required="required"/>
          <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
        <input type="submit" class="btn btn-success">
        </form:form>

</div>
<script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
        <script src="webjars\bootstrap-datepicker\1.9.0\js\bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
        $('#targetDate').datepicker({
            format: 'yyyy-mm-dd'
        });
        </script>
</body>
</html>