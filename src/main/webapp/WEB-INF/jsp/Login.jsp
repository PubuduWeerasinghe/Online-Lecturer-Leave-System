<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="if" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>
<html xmlns:th="http://www.w3.org/1999/xhtml" xmlns:sf="http://www.w3.org/1999/xhtml" lang="en">

<head>
    <title>Login V17</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="home/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="home/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="home/lib/animate/animate.min.css" rel="stylesheet">
    <link href="home/lib/venobox/venobox.css" rel="stylesheet">
    <link href="home/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="home/css/style.css" rel="stylesheet">

</head>
<body>

<header id="header">
    <div class="container">

        <div id="logo" class="pull-left">

        </div>

        <nav id="nav-menu-container">
            <%--<ul class="nav-menu">--%>
                <%----%>
                <%--<li class="menu-active"><a href="/Adminlog">Admin Login</a></li>--%>
                <%--<li><a href="/Leclog">Lectures Login</a></li>--%>

            <%--</ul>--%>
        </nav><!-- #nav-menu-container -->
    </div>
</header><!-- #header -->

<div class="limiter">
    <div class="container-login100">
        <span class="wrap-login100">
            <form class="login100-form validate-form" action="/ALog" method="post">



					<span class="login100-form-title p-b-34">
						Admin Login
					</span>

                <span class="login100-form-title p-b-34">
                <span class="label label-danger">${loginError}</span>
                </span>


                <div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
                    <input id="first-name" class="input100" type="email" name="email" placeholder="Email" required>
                    <span class="focus-input100"></span>
                </div>
                <div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
                    <input class="input100" type="password" name="password" placeholder="Password" required>
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Sign in
                    </button>
                </div>
                <%--<c:if test="${logError != null}">--%>
                    <%--<div class="col-xs-6">--%>
                        <%--<label class="control-label " for="lectureName">Lecture Name:</label>--%>
                    <%--</div>--%>
                     <%--</c:if>--%>

                <div class="w-full text-center p-t-27 p-b-239">
						<span class="txt1">

						</span>

                    <a href="#" class="txt2">

                    </a>
                </div>

                <div class="w-full text-center">
                    <a href="#" class="txt3">

                    </a>
                </div>
            </form>

            <div class="login100-more" style="background-image: url('images/cis.jpeg');"></div>

        </div>
    </div>
</div>



<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<script>
    $(".selection-2").select2({
        minimumResultsForSearch: 20,
        dropdownParent: $('#dropDownSelect1')
    });
</script>
<!--===============================================================================================-->
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>

<!-- JavaScript Libraries -->
<script src="home/lib/jquery/jquery.min.js"></script>
<script src="home/lib/jquery/jquery-migrate.min.js"></script>
<script src="home/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="home/lib/easing/easing.min.js"></script>
<script src="home/lib/superfish/hoverIntent.js"></script>
<script src="home/lib/superfish/superfish.min.js"></script>
<script src="home/lib/wow/wow.min.js"></script>
<script src="home/lib/venobox/venobox.min.js"></script>
<script src="home/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Form JavaScript File -->
<script src="home/contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="home/js/main.js"></script>

</body>
</html>