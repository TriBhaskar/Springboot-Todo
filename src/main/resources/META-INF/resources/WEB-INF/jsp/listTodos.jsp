<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>List Todos Page</title>
<link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>
        <div class="container">
        <div>Welcome ${name}</div>
                <hr></hr>
        <h1>Your TODOS</h1>

        <table class="table">
            <thead>
            <tr>
                <th>id</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is Done?</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                <td>${todo.id}</td>
                <td>${todo.description}</td>
                <td>${todo.targetDate}</td>
                <td>${todo.done}</td>
                <td> <a href="delete-todo?id=${todo.id}" class="btn btn-danger">DELETE</a> </td>
                <td> <a href="update-todo?id=${todo.id}" class="btn btn-warning">UPDATE</a> </td>
                </tr>
            </c:forEach>
            <tbody>
        </table>
        <a href="add-todo" class="btn btn-success">Add TODO</a>
        </div>
        <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
</body>
</html>