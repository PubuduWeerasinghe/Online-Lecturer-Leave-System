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
        <table class="table table-striped">
            <thead>
            <tr>
                <th>User Id</th>
                <th>Reason</th>
                <th>Id</th>


            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${userList}">

            <tr>
                <th>${list.userId}</th>
                <td>${list.reason}</td>
                <th>${list.lectureName}</th>

            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>