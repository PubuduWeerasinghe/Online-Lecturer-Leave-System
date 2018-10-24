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
    <h2 class="card-title center" align="center"> Edit Details of Lecturer ${lists.lectureName} </h2>
</div>

<br><br><br><br>
<div class="container rounded">

    <form action="/saveEdit" method="post">
            <h2>Edit Details</h2>

            <div class="form-group">
                    <div class="col-sm-10">
                    <input type="hidden" class="form-control" id="lectureId" value="${lists.lectureId}" placeholder="Enter Lecture ID" name="lectureId" required>
                </div>
            </div>

            <div class="form-group">
                <div class="col-xs-6">
                    <label class="control-label " for="lectureName">Lecture Name:</label>
                </div>
                    <div class="col-sm-10">
                    <input type="text" class="form-control" id="lectureName" value="${lists.lectureName}" placeholder="Enter Lecture Name" name="lectureName" required>
                </div>
            </div>

            <div class="form-gro+up">
                <div class="col-xs-6">
                    <label class="control-label " for="designation">Designation:</label>
                </div>
                    <div class="col-sm-10">
                    <input type="text"  class="form-control" id="designation"  value="${lists.designation}" placeholder="Enter Designation" name="designation" required>
                </div>
            </div>


        <div class="form-group">
            <div class="col-sm-6">
                <label class="control-label " for="department">Department:</label>
            </div>
            <div class="col-sm-10">
                <select class="form-control" id="department" name="department" required>
                    <option>CIS</option>
                    <option>PST</option>
                    <option>NR</option>
                </select>
            </div>
        </div>

            <div class="form-group">
                <div class="col-xs-6">
                    <label class="control-label " for="email">Email:</label>
                </div>
                    <div class="col-sm-10">
                    <input type="text" class="form-control" id="email"  value="${lists.email}" placeholder="Enter Email" name="email" required>
                </div>
            </div>


            <div class="form-group">
                <div class="col-xs-6">
                    <label class="control-label " for="phoneNo">Phone Number:</label>
                </div>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="phoneNo"  value="${lists.phoneNo}" placeholder="Enter Phone Number" name="phoneNo" required>
                </div>
            </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="gender">Gender:</label>
            </div>
            <div class="col-sm-10">
                <label class="radio-inline" ${lists.gender}><input type="radio" name="radio" id="gender" value="Male" required>Male</label>
                <label class="radio-inline"><input type="radio" name="radio" id="gender1" value="Female" required>Female</label>
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-6">
                <label class="control-label " for="phoneNo"></label>
            </div>
            <div class="col-sm-10">
                <button type="submit" class="btn btn-default"><b>Save</b></button>
            </div>
        </div>

    </form>

</div>



</body>
</html>