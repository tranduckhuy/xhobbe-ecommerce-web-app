<%-- 
    Document   : footer
    Created on : Nov 15, 2023, 5:36:32 PM
    Author     : ADMIN
--%>

<%@include file="/common/taglib.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<footer class="footer">
    <div class="cta bg-image bg-dark pt-4 pb-5 mb-0" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/bg-5.jpg'/>);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-8 col-lg-6">
                    <div class="cta-heading text-center">
                        <h3 class="cta-title text-white">Get The Latest Deals</h3><!-- End .cta-title -->
                        <p class="cta-desc text-white">and receive <span class="font-weight-normal">$20 coupon</span> for first shopping</p><!-- End .cta-desc -->
                    </div><!-- End .text-center -->

                    <form action="#">
                        <div class="input-group input-group-round">
                            <input type="email" class="form-control form-control-white" placeholder="Enter your Email Address" aria-label="Email Adress" required>
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit"><span>Subscribe</span><i class="icon-long-arrow-right"></i></button>
                            </div><!-- .End .input-group-append -->
                        </div><!-- .End .input-group -->
                    </form>
                </div><!-- End .col-sm-10 col-md-8 col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .cta -->
    <div class="footer-middle">
        <div class="container">
            <div class="row text-center">
                <div class="col-sm-6 offset-sm-3 col-lg-3 offset-lg-0">
                    <div class="widget text-justify">
                        <div class="d-flex justify-content-center">
                            <img src="<c:url value='/template/web/assets/images/demos/demo-4/xhobbe-high-resolution-logo.png'/>" class="footer-logo" alt="Footer Logo" width="150" height="30">
                        </div>
                        <p>Explore the future with phones, laptops, iPads, and accessories, all curated for you at unbeatable prices. Elevate your tech game at xHobbe – where innovation meets simplicity!</p>

                        <div class="widget-call mt-2 text-center">
                            <i class="icon-phone"></i>
                            Got Question? Call us 24/7
                            <a href="tel:#">+0123 456 789</a>
                        </div><!-- End .widget-call -->
                    </div><!-- End .widget about-widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 offset-sm-3 col-lg-3 offset-lg-0">
                    <div class="widget">
                        <h4 class="widget-title">Useful Links</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="./about">About xHobbe</a></li>
                            <li><a href="#!">Our Services</a></li>
                            <li><a href="#!">How to shop on xHobbe</a></li>
                            <li><a href="#!">FAQ</a></li>
                            <li><a href="./contact">Contact us</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 offset-sm-3 col-lg-3 offset-lg-0">
                    <div class="widget">
                        <h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="#!">Payment Methods</a></li>
                            <li><a href="#!">Money-back guarantee!</a></li>
                            <li><a href="#!">Returns</a></li>
                            <li><a href="#!">Shipping</a></li>
                            <li><a href="#!">Terms and conditions</a></li>
                            <li><a href="#!">Privacy Policy</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 offset-sm-3 col-lg-3 offset-lg-0">
                    <div class="widget">
                        <h4 class="widget-title">My Account</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="./login">Sign In</a></li>
                            <li><a href="./cart">View Cart</a></li>
                            <li><a href="./order">My Orders</a></li>
                            <li><a href="#!">Track My Order</a></li>
                            <li><a href="#!">Help</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .footer-middle -->

    <div class="footer-bottom">
        <div class="container">
            <p class="footer-copyright">Copyright © 2023 XHobbe Store. All Rights Reserved.</p><!-- End .footer-copyright -->
            <figure class="footer-payments">
                <img src="<c:url value='/template/web/assets/images/payments.png'/>" alt="Payment methods" width="272" height="20">
            </figure><!-- End .footer-payments -->
        </div><!-- End .container -->
    </div><!-- End .footer-bottom -->
</footer><!-- End .footer -->
</div><!-- End .page-wrapper -->
<button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

<!-- Mobile Menu -->
<div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

<div class="mobile-menu-container mobile-menu-light">
    <div class="mobile-menu-wrapper">
        <span class="mobile-menu-close"><i class="icon-close"></i></span>

        <form action="product" method="get" class="mobile-search">
            <label for="search" class="sr-only">Search</label>
            <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
            <input type="hidden" class="form-control" name="action" required value="search">
            <input type="search" class="form-control" name="search" id="mobile-search" placeholder="Search product ..." required>
        </form>

        <ul class="nav nav-pills-mobile nav-border-anim" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="mobile-menu-link" data-toggle="tab" href="#mobile-menu-tab" role="tab" aria-controls="mobile-menu-tab" aria-selected="true">Menu</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="mobile-cats-link" data-toggle="tab" href="#mobile-cats-tab" role="tab" aria-controls="mobile-cats-tab" aria-selected="false">Categories</a>
            </li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane fade show active" id="mobile-menu-tab" role="tabpanel" aria-labelledby="mobile-menu-link">
                <nav class="mobile-nav">
                    <ul class="mobile-menu">
                        <li class="active">
                            <a href="/XHobbeWebApp/">Home</a>
                        </li>
                        <li>
                            <a href="./product?action=list&category=all">Shop</a>
                        </li>
                        <li>
                            <a href="./product?action=list&category=Phone">Phones</a>
                        </li>
                        <li>
                            <a href="./product?action=list&category=Laptop">Laptops</a>
                        </li>
                        <li>
                            <a href="./product?action=list&category=IPad">iPad</a>
                        </li>
                        <li>
                            <a href="./product?action=list&category=Accessories">Accessories</a>
                        </li>
                    </ul>
                </nav><!-- End .mobile-nav -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane fade" id="mobile-cats-tab" role="tabpanel" aria-labelledby="mobile-cats-link">
                <nav class="mobile-cats-nav">
                    <ul class="mobile-cats-menu">
                        <li class="mobile-cats-lead"><a href="#">Daily offers</a></li>
                        <li class="mobile-cats-lead"><a href="#">Gift Ideas</a></li>
                        <li><a href="./product?category=phone">Phones</a></li>
                        <li><a href="./product?category=laptop">Laptops</a></li>
                        <li><a href="./product?category=iPad">iPad</a></li>
                        <li><a href="./product?category=accessories">Accessories</a></li>
                    </ul><!-- End .mobile-cats-menu -->

                </nav><!-- End .mobile-cats-nav -->
            </div><!-- .End .tab-pane -->
        </div><!-- End .tab-content -->

        <div class="social-icons">
            <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
            <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
        </div><!-- End .social-icons -->
    </div><!-- End .mobile-menu-wrapper -->
</div><!-- End .mobile-menu-container -->

<!-- Sign in / Register Modal -->
<div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="icon-close"></i></span>
                </button>

                <div class="form-box">
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill nav-border-anim" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="tab-content-5">
                            <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="singin-email">Username or email address *</label>
                                        <input type="text" class="form-control" id="singin-email" name="singin-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="singin-password">Password *</label>
                                        <input type="password" class="form-control" id="singin-password" name="singin-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>LOG IN</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="signin-remember">
                                            <label class="custom-control-label" for="signin-remember">Remember Me</label>
                                        </div><!-- End .custom-checkbox -->

                                        <a href="#" class="forgot-link">Forgot Your Password?</a>
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                <form action="#">
                                    <div class="form-group">
                                        <label for="register-email">Your email address *</label>
                                        <input type="email" class="form-control" id="register-email" name="register-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="register-password">Password *</label>
                                        <input type="password" class="form-control" id="register-password" name="register-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="register-confirm-password">Confirm Password *</label>
                                        <input type="password" class="form-control" id="register-confirm-password" name="register-password" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>SIGN UP</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="register-policy" required>
                                            <label class="custom-control-label" for="register-policy">I agree to the <a href="#">privacy policy</a> *</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->
                                </form>
                                <div class="form-choice">
                                    <p class="text-center">or sign in with</p>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login btn-g">
                                                <i class="icon-google"></i>
                                                Login With Google
                                            </a>
                                        </div><!-- End .col-6 -->
                                        <div class="col-sm-6">
                                            <a href="#" class="btn btn-login  btn-f">
                                                <i class="icon-facebook-f"></i>
                                                Login With Facebook
                                            </a>
                                        </div><!-- End .col-6 -->
                                    </div><!-- End .row -->
                                </div><!-- End .form-choice -->
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .modal-body -->
        </div><!-- End .modal-content -->
    </div><!-- End .modal-dialog -->
</div><!-- End .modal -->

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
<script src="<c:url value='/template/web/assets/js/jquery.elevateZoom.min.js'/>"></script>

<!-- Main JS File -->
<script src="<c:url value='/template/web/assets/js/main.js'/>"></script>
<script src="<c:url value='/template/web/assets/js/demos/demo-4.js'/>"></script>
</body>

</html>
