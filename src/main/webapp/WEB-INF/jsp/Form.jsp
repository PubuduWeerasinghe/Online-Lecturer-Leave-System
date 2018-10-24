<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="if" uri="http://www.springframework.org/tags/form" %>

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

    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

    <title>Document</title>

    <style>
        div.container {
            padding: 20px;
            width: 50%;
            overflow: auto;
        }

    </style>
</head>
<body>


<div class="container" style="width: 80%">
<div class="row">
    <div class="col-md-8">
        <form action="/s" method="post" >

            <h2>Welcome ${lecture.lectureName}</h2>

            <div class="form-group">
                <input type="hidden" class="form-control" id="Id" placeholder="Enter Lecture ID" name="Id" >
            </div>

            <div class="form-group">
                <%--<div class="col-xs-6">--%>
                    <%--<label class="control-label " for="idd" >User Id:</label>--%>
                <%--</div>--%>
                <div class="col-sm-10">
                    <input type="hidden" class="form-control" id="idd" placeholder="Enter" name="idd" value="${lecture.lectureId}">
                </div>
            </div>
                <div class="form-group">
                    <%--<div class="col-xs-6">--%>
                        <%--<label class="control-label " for="userId" >User Id:</label>--%>
                    <%--</div>--%>
                    <div class="col-sm-10">
                        <input type="hidden" class="form-control" id="userId" placeholder="Enter User Id" name="userId" value="${lecture.lecId}">
                    </div>
                </div>

                    <div class="form-group">
                        <div class="col-xs-6">
                            <label class="control-label " for="currentDate" >Apply Date</label>
                        </div>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="currentDate"  name="applyDate" value="${date}">
                            <p>${msg}</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-6">
                            <label class="control-label " for="dateFrom">Leave From:</label>
                        </div>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="dateFrom" placeholder="Enter Date : YYYY/MM/DD" name="dateFrom">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-6">
                            <label class="control-label " for="dateTo">Leave To:</label>
                        </div>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="dateTo" placeholder="Enter Date : YYYY/MM/DD" name="dateTo">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-6">
                            <label class="control-label " for="type">Leave Type:</label>
                        </div>
                        <div class="col-sm-10">
                            <select class="form-control" id="type" name="type" required>
                                <option>Medical</option>
                                <option>Official</option>
                                <option>Personnel</option>
                                <option>Other</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-6">
                            <label for="reason">Reason:</label>
                        </div>
                        <div class="col-sm-10">
                            <textarea class="form-control " rows="5" id="reason" name="reason"></textarea>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-xs-6">
                            <label class="control-label "></label>
                        </div>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-default"><b>Apply Leave</b></button>
                        </div>
                    </div>


        </form>


    </div>
    <div class="col-md-4" >
        <div class="card" style="margin-top: 40px">
            <%--<img class="card-img-top"  src="img/index.png">--%>
            <div class="card-body">
                <h5 class="card-title">${lecture.lectureName}</h5>
                <p>${lecture.email}</p>
                <p>${lecture.phoneNo}</p>
                <p>${lecture.department}</p>
                <p>${date} ${time}</p>
            </div>
        </div>
    </div>
</div>


</div>



</body>
</html>