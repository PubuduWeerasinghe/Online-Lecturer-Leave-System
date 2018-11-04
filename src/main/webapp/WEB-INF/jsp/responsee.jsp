<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
<head>

    <style>
        div.container {
            padding: 20px;
            width: 50%;
            overflow: auto;
            background-color: #1d253b;
            border-radius: 5px;
        }

        .body1{
            background-color: #040016;
            color: white;
        }

    </style>


    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="../../../resources/static/css/A.css"
          rel="stylesheet">
    <title>Document</title>
</head>
<body class="body1" bgcolor="#a9a9a9">




<div class="card-header">
    <h2 class="card-title center" align="center">  Leave Request Approval </h2>
</div>

<br><br><br><br>
<div class="container rounded">

    <form action="/savv" method="post">
        <div class="form-group">
            <input type="hidden" class="form-control" id="Id" placeholder="Enter Lecture ID" name="Id" >
        </div>


        <div class="form-group">

            <div class="col-sm-10">
                <input type="hidden" class="form-control" id="applyDate"  name="applyDate" value="${list.id}" title="apply">
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="currentDate" >Apply Date</label>
            </div>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="applyDate" value="${list.applyDate}" disabled>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="currentDate" >Date to</label>
            </div>
            <div class="col-sm-10">
                <input type="text" class="form-control"   name="applyDate" value="${list.dateTo}" disabled>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="currentDate" >Date from</label>
            </div>
            <div class="col-sm-10">
                <input type="text" class="form-control"   name="applyDate" value="${list.dateFrom}" disabled>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="currentDate" >Type</label>
            </div>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="applyDate" value="${list.type}" disabled>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="currentDate" >Reason</label>
            </div>
            <div class="col-sm-10">
                <input type="text" class="form-control"  name="applyDate" value="${list.reason}" disabled>
            </div>
        </div>

        <div class="form-group">

            <div class="col-sm-10">
                <input type="hidden" class="form-control" id="currentDate"  name="applyDate" value="${list.idd}">
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-6">
                <label class="control-label ">Department:</label>
            </div>
            <div class="col-sm-10">
                <select class="form-control" name="decision" required>
                    <option>Accept(${list.id})</option>
                    <option>Decline(${list.id})</option>
                </select>
            </div>
        </div>



        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label "></label>
            </div>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-default"><b>Save</b></button>
            </div>
        </div>

    </form>

</div>



</body>
</html>