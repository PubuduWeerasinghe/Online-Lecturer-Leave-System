<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="webjars/jquery/2.2.3 /jquery.min.js"></script>

    <script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!--<script type="text/javascript" src="webjars/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>-->
    <link rel="stylesheet" href="webjars/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>
    <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <title>Leave Management</title>
</head>
<body>

<div class="container">
<h1>Login Lecturer</h1>

    <form action="/login-user" method="post">

    <div class="form-group">
        <div class="col-sm-6">
            <label class="control-label " for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email"  required>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-6">
            <label class="control-label " for="password">Password:</label>
            <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password"  required>
        </div>
    </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label "></label>
            </div>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-default" value="Login"><b>Login</b></button>
            </div>
        </div>
    </form>
</div>
</body>
</html>