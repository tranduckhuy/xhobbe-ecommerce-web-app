<%-- 
    Document   : header
    Created on : Nov 15, 2023, 5:36:27 PM
    Author     : ADMIN
--%>
<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>xHobbe</title>
        <!-- fontawsome -->
        <script src="https://kit.fontawesome.com/24eee81337.js" crossorigin="anonymous"></script>
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
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/plugins/owl-carousel/owl.carousel.css'/>">
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/plugins/magnific-popup/magnific-popup.css'/>">
        <!-- Main CSS File -->
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/style.css'/>">
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/skins/skin-demo-4.css'/>">
        <link rel="stylesheet" href="<c:url value='/template/web/assets/css/demos/demo-4.css'/>">
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
                                    <li><a href="./views/web/about.jsp">About Us</a></li>
                                    <li><a href="./views/web/contact.jsp">Contact Us</a></li>
                                    <li><a href="./views/web/login.jsp"><i class="icon-user"></i>Login</a></li>
                                </ul>
                            </li>
                        </ul><!-- End .top-menu -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-top -->

            <div class="header-middle">
                <div class="container">
                    <div class="header-left">
                        <button class="mobile-menu-toggler">
                            <span class="sr-only">Toggle mobile menu</span>
                            <i class="icon-bars"></i>
                        </button>

                        <a href="#" class="logo">
                            <img src="<c:url value='/template/web/assets/images/demos/demo-4/xhobbe-high-resolution-logo.png'/>" alt="Molla Logo" style="width: 160px; height: 50px;">
                        </a>
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <div class="header-search header-search-extended header-search-visible d-none d-lg-block">
                            <a href="#" class="search-toggle" role="button"><i class="icon-search"></i></a>
                            <form action="#" method="get">
                                <div class="header-search-wrapper search-wrapper-wide">
                                    <label for="search" class="sr-only">Search</label>
                                    <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
                                    <input type="search" class="form-control" name="search" id="search" placeholder="Search product ..." required>
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->
                    </div>

                    <div class="header-right">

                        <div class="wishlist">
                            <a href="./views/web/cart.jsp" title="Order">
                                <div class="icon">
                                    <i class="icon-shopping-cart" style="font-size: 22px;"></i>
                                    <span class="wishlist-count badge">2</span>
                                </div>
                                <p>Order</p>
                            </a>
                        </div><!-- End .compare-dropdown -->
                        
                        <div class="wishlist">
                            <a href="./views/web/order.jsp" title="Order">
                                <div class="icon">
                                    <i class="fa-solid fa-truck" style="font-size: 22px;"></i>
                                    <span class="wishlist-count badge">3</span>
                                </div>
                                <p>Order</p>
                            </a>
                        </div><!-- End .compare-dropdown -->
                    </div><!-- End .header-right -->
                </div><!-- End .container -->
            </div><!-- End .header-middle -->

            <div class="header-bottom sticky-header">
                <div class="container">
                    <div class="header-left">
                        <div class="dropdown category-dropdown">
                            <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static" title="Browse Categories">
                                Browse Categories <i class="icon-angle-down"></i>
                            </a>

                            <div class="dropdown-menu">
                                <nav class="side-nav">
                                    <ul class="menu-vertical sf-arrows">
                                        <li class="item-lead"><a href="#">Daily offers</a></li>
                                        <li class="item-lead"><a href="#">Gift Ideas</a></li>
                                        <li><a href="#">Phones</a></li>
                                        <li><a href="#">Laptops</a></li>
                                        <li><a href="#">iPad</a></li>
                                        <li><a href="#">Accessories</a></li>
                                    </ul><!-- End .menu-vertical -->
                                </nav><!-- End .side-nav -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .category-dropdown -->
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="megamenu-container active">
                                    <a href="/XHobbeWebApp/">Home</a>
                                </li>
                                <li>
                                    <a href="./product?category=all">Shop</a>
                                </li>
                                <li>
                                    <a href="./product?category=phone">Phones</a>
                                </li>
                                <li>
                                    <a href="./product?category=laptop">Laptops</a>
                                </li>
                                <li>
                                    <a href="./product?category=iPad">iPad</a>
                                </li>
                                <li>
                                    <a href="./product?category=accessories">Accessories</a>
                                </li>
                            </ul><!-- End .menu -->
                        </nav><!-- End .main-nav -->
                    </div><!-- End .header-center -->

                    <div class="header-right">
                        <i class="la la-lightbulb-o"></i><p>Clearance<span class="highlight">&nbsp;Up to 30% Off</span></p>
                    </div>
                </div><!-- End .container -->
            </div><!-- End .header-bottom -->
        </header><!-- End .header -->