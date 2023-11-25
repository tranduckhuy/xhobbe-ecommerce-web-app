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
        <link rel="icon" type="image/png" sizes="64x64" href="<c:url value='/template/web/assets/images/icons/xhobbe-logo.png'/>">
        <meta name="apple-mobile-web-app-title" content="xHobbe">
        <meta name="application-name" content="xHobbe">
        <meta name="msapplication-TileColor" content="#cc9966">
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
        <!-- jQuery -->
        <script src="<c:url value='/template/jquery/jquery-v3.7.1.min.js'/>"></script>
        
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
                                <a href="#"><i class="fa-solid fa-bars"></i></a>
                                <ul style="white-space: nowrap">
                                    <li><a href="tel:#"><i class="icon-phone"></i>Call: +0123 456 789</a></li>
                                    <li><a href="./about">About Us</a></li>
                                    <li><a href="./contact">Contact Us</a></li>
                                    <c:if test="${user != null}">
                                        <li>
                                            <div class="header-dropdown">
                                                <a href="#" class="font-weight-bold text-success" style="font-family: initial; padding-bottom: 0">
                                                    <i class="fa-solid fa-user-tie"> </i>${user.name}
                                                </a>
                                                <div class="header-menu">
                                                    <ul>
                                                        <li><a href="#"><i class="fa-solid fa-gear"></i> Setting</a></li>
                                                        <li><a href="./login?action=logout"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                                                    </ul>
                                                </div><!-- End .header-menu -->
                                            </div><!-- End .header-dropdown -->
                                        </li>
                                    </c:if>
                                    <c:if test="${user == null}">
                                        <li style="font-weight: 600;"><a href="./login" ><i class="icon-user"></i>Login</a></li>
                                    </c:if>
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
                            <form action="product" method="get">
                                <div class="header-search-wrapper search-wrapper-wide">
                                    <label for="search" class="sr-only">Search</label>
                                    <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
                                    <input type="hidden" class="form-control" name="action" required value="search">
                                    <input type="search" class="form-control" name="search" id="search" placeholder="Search product ..." required>
                                </div><!-- End .header-search-wrapper -->
                            </form>
                        </div><!-- End .header-search -->
                    </div>

                    <div class="header-right">

                        <div class="wishlist">
                            <a href="./cart" title="Cart">
                                <div class="icon">
                                    <i class="icon-shopping-cart" style="font-size: 30px;"></i>
                                    <span class="wishlist-count badge">2</span>
                                </div>
                                <p style="font-weight: 600; font-size: 12px;">Cart</p>
                            </a>
                        </div><!-- End .compare-dropdown -->
                        
                        <div class="wishlist">
                            <a href="./order" title="Order">
                                <div class="icon">
                                    <i class="fa-solid fa-truck" style="font-size: 23px;"></i>
                                    <span class="wishlist-count badge">3</span>
                                </div>
                                <p style="font-weight: 600; font-size: 12px;">Order</p>
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
                                        <li><a href="./product?action=list&category=Phone">Phones</a></li>
                                        <li><a href="./product?action=list&category=Laptop">Laptops</a></li>
                                        <li><a href="./product?action=list&category=IPad">iPad</a></li>
                                        <li><a href="./product?action=list&category=Accessories">Accessories</a></li>
                                    </ul><!-- End .menu-vertical -->
                                </nav><!-- End .side-nav -->
                            </div><!-- End .dropdown-menu -->
                        </div><!-- End .category-dropdown -->
                    </div><!-- End .header-left -->

                    <div class="header-center">
                        <nav class="main-nav">
                            <ul class="menu sf-arrows">
                                <li class="${category == null ? 'active' : ''} ">
                                    <a href="/XHobbeWebApp/">Home</a>
                                </li>
                                <li class="${category eq 'all' ? 'active' : ''} ">
                                    <a href="./product?action=list&category=all">Shop</a>
                                </li>
                                <li class="${category eq 'Phone' ? 'active' : ''} ">
                                    <a href="./product?action=list&category=Phone">Phones</a>
                                </li>
                                <li class="${category eq 'Laptop' ? 'active' : ''} ">
                                    <a href="./product?action=list&category=Laptop">Laptops</a>
                                </li>
                                <li class="${category eq 'IPad' ? 'active' : ''} ">
                                    <a href="./product?action=list&category=IPad">iPad</a>
                                </li>
                                <li class="${category eq 'Accessories' ? 'active' : ''} ">
                                    <a href="./product?action=list&category=Accessories">Accessories</a>
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