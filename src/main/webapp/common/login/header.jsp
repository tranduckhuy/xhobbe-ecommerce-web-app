<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>xHobbe</title>

        <!-- Favicon -->
        <link rel="icon" type="image/png" sizes="64x64" href="<c:url value='/template/web/assets/images/icons/xhobbe-logo.png'/>">
        <meta name="apple-mobile-web-app-title" content="xHobbe">
        <meta name="application-name" content="xHobbe">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="theme-color" content="#ffffff">
        <link rel="stylesheet" href="<c:url value='/template/web/assets/vendor/line-awesome/line-awesome/line-awesome/css/line-awesome.min.css'/>">
        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/bootstrap.min.css'/>">
        <!-- Main CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/style.css'/>">
        <!-- Validate CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/validate/validate.css'/>">
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
                                    <li><a href="./about">About Us</a></li>
                                    <li><a href="./contact">Contact Us</a></li>
                                    <c:if test="${user != null}">
                                        <li>
                                            <a href="#" class="font-weight-bold text-success" style="font-family: initial; padding-bottom: 0">
                                                <i class="fa-solid fa-user-tie"> </i>${user.name}
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${user == null}">
                                        <li><a href="./login"><i class="icon-user"></i>Login</a></li>
                                    </c:if>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-top -->
        </header>