<html>
<head>
<title>Login JSP Page</title>
<link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>
        <div class="container">
        <h1>Welcome to login page</h1>

        <pre>${errorMessage}</pre>
        <form method="POST">
        Username:<input type="text" name="name">
        Password:<input type="password" name="password">
        <input type="submit">
        </form>

</div>
<script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
</body>
</html>