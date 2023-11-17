<%-- 
    Document   : login
    Created on : Nov 16, 2023, 11:00:36 AM
    Author     : ADMIN
--%>

<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>xHobbe</title>

        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/template/web/assets/images/icons/apple-touch-icon.png'/>">
        <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/template/web/assets/images/icons/favicon-32x32.png'/>">
        <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/template/web/assets/images/icons/favicon-16x16.png'/>">
        <link rel="manifest" href="<c:url value='/template/web/assets/images/icons/site.html'/>">
        <link rel="mask-icon" href="<c:url value='/template/web/assets/images/icons/safari-pinned-tab.svg'/>" color="#666666">
        <link rel="shortcut icon" href="<c:url value='/template/web/assets/images/icons/favicon.ico'/>">
        <meta name="apple-mobile-web-app-title" content="Molla">
        <meta name="application-name" content="Molla">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="msapplication-config" content="href="<c:url value='/template/web/assets/images/icons/browserconfig.xml'/>">
        <meta name="theme-color" content="#ffffff">
        <link rel="stylesheet" href="<c:url value='/template/web/assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css'/>">
        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/bootstrap.min.css'/>">
        <!-- Main CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/style.css'/>">
    </head>
    <body>
        <header class="header header-intro-clearance header-4">
            <div class="header-top">
                <div class="container">
                    <div class="header-left">
                        <div class="header-dropdown">
                            <a href="#">USD</a>
                            <div class="header-menu">
                                <ul>
                                    <li><a href="#">VND</a></li>
                                    <li><a href="#">USD</a></li>
                                </ul>
                            </div><!-- End .header-menu -->
                        </div><!-- End .header-dropdown -->

                        <div class="header-dropdown">
                            <a href="#">English</a>
                            <div class="header-menu">
                                <ul>
                                    <li><a href="#">Vietnamese</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div><!-- End .header-menu -->
                        </div><!-- End .header-dropdown -->
                    </div><!-- End .header-left -->

                    <div class="header-right">
                        <ul class="top-menu">
                            <li>
                                <a href="#">Links</a>
                                <ul>
                                    <li><a href="tel:#"><i class="icon-phone"></i>Call: +0123 456 789</a></li>
                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
                                    <li><a href="./views/web/login.jsp"><i class="icon-user"></i>Login</a></li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-top -->
        </header>
        <main class="main">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/XHobbeWebApp/">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="login-page bg-image pt-4 pb-4 pt-md-6 pb-md-6 pt-lg-4 pb-lg-12" style="background-image: url('assets/images/backgrounds/login-bg.jpg');">
                <div class="container">
                    <div class="form-box">
                        <div class="form-tab">
                            <ul class="nav nav-pills nav-fill" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="register-tab-2" data-toggle="tab" href="#register-2" role="tab" aria-controls="register-2" aria-selected="true">Edit Account</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="register-2" role="tabpanel" aria-labelledby="register-tab-2">
                                    <form action="#">
                                        <div class="form-group">
                                            <label for="register-email-2">Your email address *</label>
                                            <input type="email" class="form-control" id="register-email-2" name="register-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="register-phone">Your phone number *</label>
                                                <input type="email" class="form-control" id="register-phone" name="register-phone" required>
                                            </div><!-- End .form-group -->

                                            <div class="form-group col-md-6">
                                                <label for="old-password">Old Password *</label>
                                                <input type="password" class="form-control" id="old-password" name="old-password" required>
                                            </div><!-- End .form-group -->

                                        </div>

                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="confirm-password">Confirm Password *</label>
                                                <input type="password" class="form-control" id="confirm-password" name="confirm-password" required>
                                            </div><!-- End .form-group -->

                                            <div class="form-group col-md-6">
                                                <label for="new-password">New Password *</label>
                                                <input type="password" class="form-control" id="new-password" name="new-password" required>
                                            </div><!-- End .form-group -->
                                        </div>

                                        <div class="form-group">
                                            <label for="register-address">Your address *</label>
                                            <input type="email" class="form-control" id="register-address" name="register-address" required>
                                        </div><!-- End .form-group -->

                                        <div class="d-flex justify-content-center mt-3">
                                            <a href="#" class="btn btn-outline-primary-2">
                                                <span>CONFIRM EDIT</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </a>
                                        </div><!-- End .form-footer -->
                                    </form>
                                </div><!-- .End .tab-pane -->
                            </div><!-- End .tab-content -->
                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .container -->
            </div><!-- End .login-page section-bg -->
        </main><!-- End .main -->

        <!-- Plugins JS File -->
        <script src="<c:url value='/template/web/assets/js/jquery.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/bootstrap.bundle.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/jquery.hoverIntent.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/jquery.waypoints.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/superfish.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/owl.carousel.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/bootstrap-input-spinner.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/jquery.plugin.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/jquery.magnific-popup.min.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/jquery.countdown.min.js'/>"></script>
        <!-- Main JS File -->
        <script src="<c:url value='/template/web/assets/js/main.js'/>"></script>
        <script src="<c:url value='/template/web/assets/js/demos/demo-4.js'/>"></script>
    </body>

</html>
