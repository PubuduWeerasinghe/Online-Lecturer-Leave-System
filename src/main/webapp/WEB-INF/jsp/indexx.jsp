<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="indexx/img/apple-icon.png">
    <link rel="icon" type="image/png" href="indexx/img/favicon.png">

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript" src="webjars/jquery/2.2.3 /jquery.min.js"></script>--%>

    <%--<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript" src="webjars/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>--%>
    <%--<link rel="stylesheet" href="webjars/bootstrap/3.2.0/css/bootstrap-theme.min.css"/>--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <title>
        Leave System
    </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- Nucleo Icons -->
    <link href="/indexx/css/nucleo-icons.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="/indexx/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/indexx/demo/demo.css" rel="stylesheet" />


    <style>

        .modal-body{
            color: #0e84f8;
        }

        .modal-body1{
            background-color: #222a42;
        }
        .wrapper1{
            background-color: #0e84f8;
        }

    </style>
</head>

<body class="aaa">
<div class="wrapper1">
    <div class="sidebar">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red"
      -->
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="javascript:void(0)" class="simple-text logo-normal">
                    Leave System
                </a>

            </div>
            <ul class="nav">
                <li class="active ">
                    <a href="Lecturerdetails">
                        <i class="tim-icons icon-single-02"></i>
                        <p>Lecturers Details</p>
                    </a>
                </li>
                <li>
                    <a href="leave">
                        <i class="tim-icons icon-email-85"></i>
                        <p>Leave Requests</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <div class="navbar-toggle d-inline">
                        <button type="button" class="navbar-toggler">
                            <span class="navbar-toggler-bar bar1"></span>
                            <span class="navbar-toggler-bar bar2"></span>
                            <span class="navbar-toggler-bar bar3"></span>
                        </button>
                        <a class="navbar-brand" href="javascript:void(0)">User Profile</a>
                    </div>
                    <a class="navbar-brand" href="javascript:void(0)"></a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>
                <div class="collapse navbar-collapse" id="navigation">
                    <ul class="navbar-nav ml-auto">
                        <li class="search-bar input-group">
                            <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i class="tim-icons icon-zoom-split"></i>
                                <span class="d-lg-none d-md-block">Search</span>
                            </button>
                        </li>

                        <li class="dropdown nav-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <div class="photo">
                                    <img src="indexx/img/anime3.png" alt="Profile Photo">
                                </div>
                                <b class="caret d-none d-lg-block d-xl-block"></b>
                                <p class="d-lg-none">
                                    Log out
                                </p>
                            </a>
                            <ul class="dropdown-menu dropdown-navbar">
                                <li class="nav-link">
                                    <a href="/logout" class="nav-item dropdown-item">Log out</a>
                                </li>
                            </ul>
                        </li>
                        <li class="separator d-lg-none"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tim-icons icon-simple-remove"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Navbar -->
        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="card ">

                        <div class="container">
                            <br>

                            <%-- Notification--%>
                            <div class="card-body">
                                <div class="alert alert-success">
                                    <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
                                        <i class="tim-icons icon-simple-remove"></i>
                                    </button>
                                    <span>
                                     <b>${message}</b>
                                    </span>
                                </div>
                            </div>

                            <!-- Trigger the modal with a button -->
                            <form class="form-horizontal" id="Form" action="save" method="post">
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><i class="tim-icons icon-single-02">   Add new lecturer</i></button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <p>
                                            <h4 class="modal-title">Add A New Lectuer</h4>
                                            </p>
                                        </div>
                                        <div class="modal-body1">
                                            <br>

                                            <div class="form-group">
                                                <div class="col-sm-6">
                                                    <input type="hidden" class="form-control" id="lectureId" placeholder="Enter Lecture ID" name="lectureId">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Lecture Id:</p>
                                                    <input type="text" class="form-control" id="lecId" placeholder="Enter Lecture Id" name="lecId" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Name:</p>
                                                    <input type="text" class="form-control" id="lectureName" placeholder="Enter Lecture Name" name="lectureName" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Designation:</p>
                                                    <input type="text" class="form-control" id="designation" placeholder="Enter Designation" name="designation" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Department:</p>
                                                    <select class="form-control" id="department" name="department">
                                                        <option selected>CIS</option>
                                                        <option>PST</option>
                                                        <option>NR</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Email:</p>
                                                    <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Password:</p>
                                                    <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Phone No:</p>
                                                    <input type="text" class="form-control" id="phoneNo" placeholder="Enter Phone Number" name="phoneNo" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <p>Gender:</p>
                                                    <label class="radio-inline"><input type="radio" name="radio" id="gender" value="Male" checked><p>Male</p></label>
                                                    <label class="radio-inline"><input type="radio" name="radio" id="gender1" value="Female"><p>Female</p></label>
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
                       </div>

                        <div class="card-header">
                            <h4 class="card-title"> Lecture Details</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table tablesorter " id="" >
                                    <thead class=" text-primary">
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
                                            <td><a href="/edit/${list.lectureId}"><i class="tim-icons icon-pencil"></i></a> </td>
                                            <td><a href="#myModal"><i class="tim-icons icon-trash-simple" data-toggle="modal" data-target="#modal"></i></a>

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
                </div>

            </div>
        </div>

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