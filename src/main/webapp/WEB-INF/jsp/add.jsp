<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>

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


</head>
<body>

<form class="form-horizontal" id="Form" action="save" method="post">
    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Add</button>

    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body ">
                    <p>Some text in the modal.</p>

                    <div class="container">
                        <h2>Horizontal form</h2>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="lectureId">Lecture ID:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="hidden" class="form-control" id="lectureId" placeholder="Enter Lecture ID" name="lectureId">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="lectureName">Lecture Name:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="lectureName" placeholder="Enter Lecture Name" name="lectureName">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="designation">Designation:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="designation" placeholder="Enter Designation" name="designation">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="department">Department:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="department" placeholder="Enter Department" name="department">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="email">Email:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="gender">Gender:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="gender" placeholder="Enter Gender" name="gender">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-6">
                                <label class="control-label col-sm-2" for="phoneNo">Phone Number:</label>
                                <div class="col-sm-10">
                                </div>
                                <input type="text" class="form-control" id="phoneNo" placeholder="Enter Phone Number" name="phoneNo">
                            </div>
                        </div>


                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-default">Submit</button>
                    <button type="button"  class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
</form>


</body>
</html>
