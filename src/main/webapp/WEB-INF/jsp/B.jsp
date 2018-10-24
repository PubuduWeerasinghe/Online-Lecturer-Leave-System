<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
<head>
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

    <link rel="stylesheet" type="text/css" href="css/toggle.css">

    <title>Document</title>
</head>
<body background="img/bg-3.jpg">

<form action="/savv" method="post">

<table border="1">

    <tr>
        <th>Lecture Name</th>
        <th>Reason</th>
        <th>decision</th>
    </tr>
    <tr>
        <td>${list.id}</td>
<td>${list.lecture.lectureId}</td>
        <td>${list.lecture.lectureName}</td>
        <td>${list.lecture.designation}</td>
   ${msg}

        <td><select class="form-control" id="type" name="decision" required>
            <option></option>
            <option>Accept</option>
            <option>Decline</option>
        </select></td>
        <td><button type="submit" class="btn btn-default"><b>Save</b></button></td>
    </tr>

</table>
</form>
</body>
</html>