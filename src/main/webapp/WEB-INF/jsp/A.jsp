<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<div class="card">
    <div class="card-block">
        <table class="table table-striped" border="1">
            <thead>
            <tr>
                <th>Lecturer Id</th>
                <th>Lecturer Name</th>
                <th>Designation</th>
                <th>Reason</th>


            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${lectureList}">

            <tr>
                <th>${list.userId}</th>
                <td>${list.lecture.lectureName}</td>
                <td>${list.lecture.designation}</td>
                <td>${list.reason}</td>

            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>