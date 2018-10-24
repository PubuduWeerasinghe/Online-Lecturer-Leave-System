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
        p.a {
            color:red;
        }
        span.a{
            color:red;
        }

    </style>
</head>
<body>


<div class="container" style="width: 80%">
    <div class="row">
        <div class="col-md-8">
            <form action="/savv" method="post">
                <div class="form-group">
                    <input type="hidden" class="form-control" id="Id" placeholder="Enter Lecture ID" name="Id" >
                </div>


                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >Id</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="applyDate"  name="applyDate" value="${list.id}" title="apply">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >Apply Date</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  name="applyDate" value="${list.applyDate}" placeholder="ghghgh">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >Date to</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"   name="applyDate" value="${list.dateTo}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >Date from</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"   name="applyDate" value="${list.dateFrom}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >type</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  name="applyDate" value="${list.type}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >reason</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  name="applyDate" value="${list.reason}" disabled>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-6">
                        <label class="control-label " for="currentDate" >idd</label>
                    </div>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="currentDate"  name="applyDate" value="${list.idd}">
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
    </div>
</div>



</body>
</html>