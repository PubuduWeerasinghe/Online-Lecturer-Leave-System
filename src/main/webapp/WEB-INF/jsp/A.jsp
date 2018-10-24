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
<body>

<div class="container">
<div class="card">
    <div class="card-block">
        <form action="/x" method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Lecturer Id</th>
                <th>Lecturer Name</th>
                <th>Designation</th>
                <th>Phone Number</th>
                <th>Department</th>
                <th>Email</th>
                <th>Date From</th>
                <th>Date To</th>
                <th>Reason</th>
                <th>Decision</th>


            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${lectureList}">

            <tr>
                <th>${list.lecture.lecId}</th>
                <td>${list.lecture.lectureName}</td>
                <td>${list.lecture.designation}</td>
                <td>${list.lecture.phoneNo}</td>
                <td>${list.lecture.department}</td>
                <td>${list.lecture.email}</td>
                <td>${list.dateFrom}</td>
                <td>${list.dateTo}</td>
                <td>${list.reason}</td>
                <%--<td>--%>
                            <%--<select class="form-control" id="decision" name="decision" required>--%>
                                <%--<option></option>--%>
                                <%--<option>Accept</option>--%>
                                <%--<option>Decline</option>--%>
                            <%--</select>--%>
                <%--</td>--%>
                <td> <a href="/sav/${list.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
                <%--<td><button type="submit" class="btn btn-default"><b>Apply Leave</b></button></td>--%>
            </tr>
            </c:forEach>
            </tbody>
        </table>
        </form>
    </div>
</div>
</div>


</body>
</html>