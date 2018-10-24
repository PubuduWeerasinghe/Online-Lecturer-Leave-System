<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<%--<style>--%>
<%--nav.navbar{--%>
<%--background-color: midnightblue;--%>
<%--}--%>
    <%--div.container{--%>
        <%--background-color: greenyellow;--%>
    <%--}--%>

<%--</style>--%>

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

    <title>Leave Management</title>

</head>
<body bgcolor="#ff1493">


<nav class="navbar navbar-inverse navbar-fixed-top >
    <div class="container-fluid>
    <div class="navbar-header">
        <a class="navbar-brand" href="#">CIS Lecturers</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Details</a></li>

    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div>
</nav>

<div class="container" style="margin-top:50px">
    <h1>Leave Management</h1>
</div>

<div class="container">

    <form class="form-horizontal" id="Form" action="save" method="post">
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModa"><span class="glyphicon glyphicon-user"> Add new lecturer</span></button>

        <div class="modal fade" id="myModa" role="dialog">
            <div class="modal-dialog modal-md">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><b>Lecturers Details</b></h4>
                    </div>
                    <div class="modal-body ">

                        <div class="container">

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <input type="hidden" class="form-control" id="lectureId" placeholder="Enter Lecture ID" name="lectureId">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="lectureId">Lecture Id:</label>
                                    <input type="text" class="form-control" id="lecId" placeholder="Enter Lecture Name" name="lecId" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="lectureName">Name:</label>
                                    <input type="text" class="form-control" id="lectureName" placeholder="Enter Lecture Name" name="lectureName" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="designation">Designation:</label>
                                    <input type="text" class="form-control" id="designation" placeholder="Enter Designation" name="designation" required>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="department">Department:</label>
                            <select class="form-control" id="department" name="department">
                                <option selected>CIS</option>
                                <option>PST</option>
                                <option>NR</option>

                            </select>
                            </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="email">Email:</label>
                                    <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="password">Password:</label>
                                    <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label " for="phoneNo">Phone No:</label>
                                    <input type="text" class="form-control" id="phoneNo" placeholder="Enter Phone Number" name="phoneNo" required>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-xs-6">
                                    <label class="control-label " for="gender">Gender:</label>
                                    <label class="radio-inline"><input type="radio" name="radio" id="gender" value="Male" checked>Male</label>
                                    <label class="radio-inline"><input type="radio" name="radio" id="gender1" value="Female">Female</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default"><b>Submit</b></button>
                        <button type="button"  class="btn btn-default" data-dismiss="modal"><b>Close</b></button>
                    </div>
                </div>

            </div>
        </div>
    </form>
    <div class="card">
        <div class="card-block">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Lecturer Id</th>
                    <th>Lecturer Name</th>
                    <th>Designation</th>
                    <th>Department</th>
                    <th>E-Mail</th>
                    <th>Gender</th>
                    <th>Phone Number</th>
                    <th>Edit</th>
                    <th>Delete</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="list" items="${lectureList}">

                    <tr>
                        <th>${list.lecId}</th>
                        <td>${list.lectureName}</td>
                        <td>${list.designation}</td>
                        <td>${list.department}</td>
                        <td>${list.email}</td>
                        <td>${list.gender}</td>
                        <td>${list.phoneNo}</td>

                        <td><a href="/edit/${list.lectureId}"><span class="glyphicon glyphicon-pencil"></span></a> </td>
                        <td><a href="#myModal"><span class="glyphicon glyphicon-trash" data-toggle="modal" data-target="#modal"></span></a>

                            <!-- Modal -->
                            <div class="modal fade" id="modal" role="dialog">
                                <div class="modal-dialog modal-sm ">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <p>Are you sure to delete? </p>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="/delete/${list.lectureId}"><button type="submit" class="btn btn-default">Ok</button></a>
                                            <button type="button"  class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                            <%--<td><a href="/view/${list.lectureId}"><button type="button" class="btn btn-info btn-sm" >view</button></a> </td>--%>

                    </tr>

                </c:forEach>

                </tbody>
            </table>


        </div>

    </div>
</div>

</body>
</html>
