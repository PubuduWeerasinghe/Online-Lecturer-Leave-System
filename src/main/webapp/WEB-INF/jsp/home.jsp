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

    <link href="A.css"
          rel="stylesheet">

    <title>Leave Management</title>

</head>
<body background="img/bg-3.jpg">

<nav class="navbar navbar-inverse navbar-fixed-top >
    <div class="container-fluid>
    <div class="navbar-header">
        <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/Adminlog"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a></li>
        <li><a href="/Leclog"><span class="glyphicon glyphicon-log-in"></span>Lecturer Login</a></li>
    </ul>
    </div>
</nav>

<br><br><br>
<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" style="">
            <div class="item active">
                <img src="img/la.jpg" alt="Los Angeles" style="width:200%;">
            </div>

            <div class="item">
                <img src="img/chicago.jpg" alt="Chicago" style="width:100%;">
            </div>

            <div class="item">
                <img src="img/ny.jpg" alt="New york" style="width:100%;">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

</body>
</html>