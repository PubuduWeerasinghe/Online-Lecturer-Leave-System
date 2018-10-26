<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="indexx/img/apple-icon.png">
    <link rel="icon" type="image/png" href="indexx/img/favicon.png">
    <title>
        Black Dashboard by Creative Tim
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Nucleo Icons -->
    <link href="indexx/css/nucleo-icons.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="indexx/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="indexx/demo/demo.css" rel="stylesheet" />

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
            background-image: url("A.jpg") no-repeat center center;

        }
        .navbar{
            background-color: #040016;
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
<body class="body1" background="A.jpg">

<header>
<nav class="navbar navbar-inverse navbar-fixed-top >
    <div class="container-fluid>
    <div class="navbar-header">
        <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/respond"><span class="glyphicon glyphicon-log-in"></span>Admin Login</a></li>
        <li><a href="/Leclog"><span class="glyphicon glyphicon-log-in"></span>Lecturer Login</a></li>
    </ul>
    </div>
</nav>
</header>

<br><br><br>

    <h2 class="card-title center" align="center"> Leave Application </h2>


<br><br>
<div class="container rounded">
    <%-- Notification--%>
    <div class="card-body">
        <div class="alert alert-success">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span>
                                     <b> Success - You are successfully logged</b> </span>
        </div>
    </div>

    <form action="/s" method="post" >

        <h2>Welcome ${lecture.lectureName}</h2>

        <div class="card-body">
            <%--<h5 class="card-title">${lecture.lectureName}</h5>--%>
            <table>

            <tr><td><p> Name : ${lecture.email}</p></td></tr>
                <tr><td><p>Phone No : ${lecture.phoneNo}</p></td></tr>
                <tr><td> <p>Department : ${lecture.department}</p></td></tr>
                <tr><td><p> Date: ${date} Time: ${time}</p></td></tr>
            </table>
        </div>


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
                <label class="control-label " for="currentDate" >Date of Request</label>
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

</div>

<!--   Core JS Files   -->
<script src="indexx/js/core/jquery.min.js"></script>
<script src="indexx/js/core/popper.min.js"></script>
<script src="indexx/js/core/bootstrap.min.js"></script>
<script src="indexx/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<!-- Place this tag in your head or just before your close body tag. -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="indexx/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="indexx/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
<script src="indexx/js/black-dashboard.min.js?v=1.0.0"></script>
<!-- Black Dashboard DEMO methods, don't include it in your project! -->
<script src="indexx/demo/demo.js"></script>
<script>
    $(document).ready(function() {
        $().ready(function() {
            $sidebar = $('.sidebar');
            $navbar = $('.navbar');
            $main_panel = $('.main-panel');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');
            sidebar_mini_active = true;
            white_color = false;

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



            $('.fixed-plugin a').click(function(event) {
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .background-color span').click(function() {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data', new_color);
                }

                if ($main_panel.length != 0) {
                    $main_panel.attr('data', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data', new_color);
                }
            });

            $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
                var $btn = $(this);

                if (sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    sidebar_mini_active = false;
                    blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
                } else {
                    $('body').addClass('sidebar-mini');
                    sidebar_mini_active = true;
                    blackDashboard.showSidebarMessage('Sidebar mini activated...');
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function() {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function() {
                    clearInterval(simulateWindowResize);
                }, 1000);
            });

            $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
                var $btn = $(this);

                if (white_color == true) {

                    $('body').addClass('change-background');
                    setTimeout(function() {
                        $('body').removeClass('change-background');
                        $('body').removeClass('white-content');
                    }, 900);
                    white_color = false;
                } else {

                    $('body').addClass('change-background');
                    setTimeout(function() {
                        $('body').removeClass('change-background');
                        $('body').addClass('white-content');
                    }, 900);

                    white_color = true;
                }


            });

            $('.light-badge').click(function() {
                $('body').addClass('white-content');
            });

            $('.dark-badge').click(function() {
                $('body').removeClass('white-content');
            });
        });
    });
</script>


</body>
</html>