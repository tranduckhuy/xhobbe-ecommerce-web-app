<%-- 
    Document   : about
    Created on : Nov 16, 2023, 2:03:35 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>


<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/XHobbeWebApp/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">About us</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->
    <div class="container">
        <div class="page-header page-header-big text-center" style="background-image: url('<c:url value='/template/web/assets/images/about-header-bg.jpg'/>')">
            <h1 class="page-title text-white">About us<span class="text-white">Who we are</span></h1>
        </div><!-- End .page-header -->
    </div><!-- End .container -->

    <div class="page-content pb-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-3 mb-lg-0">
                    <h2 class="title">Our Vision</h2><!-- End .title -->
                    <p>xHobbe's vision is “to make the best products on Earth, and to leave the world better than we found it.” This corporate vision includes excellence and the net benefits of the technology company’s products. We aims for the leadership in product and delivery, and emphasis on excellence in the business organization. </p>
                </div><!-- End .col-lg-6 -->

                <div class="col-lg-6">
                    <h2 class="title">Our Mission</h2><!-- End .title -->
                    <p>Our mission is “to deliver the best technology that empowers people and enriches their lives.” xHobbe based on this corporate mission statement, which touches on the interface between people and technology. </p>
                </div><!-- End .col-lg-6 -->
            </div><!-- End .row -->

            <div class="mb-5"></div><!-- End .mb-4 -->
        </div><!-- End .container -->

        <div class="bg-light-2 pt-6 pb-5 mb-6 mb-lg-8">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 mb-3 mb-lg-0">
                        <h2 class="title">Who We Are</h2><!-- End .title -->
                        <p class="lead text-primary mb-3">"xHobbe" is a Vietnamese multinational technology company, which was launched in 2023 in Vietnam,<br>specialising in e-commerce</p><!-- End .lead text-primary -->
                        <p class="mb-2">Our shop started as a consumer-to-consumer (C2C) marketplace and business-to-consumer (B2C) hybrid model.</p>

                        <a href="./views/web/blog.jsp" class="btn btn-sm btn-minwidth btn-outline-primary-2">
                            <span>VIEW OUR NEWS</span>
                            <i class="icon-long-arrow-right"></i>
                        </a>
                    </div><!-- End .col-lg-5 -->

                    <div class="col-lg-6 offset-lg-1">
                        <div class="about-images">
                            <img src="<c:url value='/template/web/assets/images/about/img-1.jpg'/>" alt="" class="about-img-front">
                            <img src="<c:url value='/template/web/assets/images/about/img-2.jpg'/>" alt="" class="about-img-back">
                        </div><!-- End .about-images -->
                    </div><!-- End .col-lg-6 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .bg-light-2 pt-6 pb-6 -->

        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="brands-text">
                        <h2 class="title">The world's premium design brands in one destination.</h2><!-- End .title -->
                        <p>We partners with over 70 courier service providers across markets it serves to provide logistical support for users.</p>
                    </div><!-- End .brands-text -->
                </div><!-- End .col-lg-5 -->
                <div class="col-lg-7">
                    <div class="brands-display">
                        <div class="row justify-content-center">
                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/1.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/2.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/3.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/4.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/5.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/6.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/7.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/8.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->

                            <div class="col-6 col-sm-4">
                                <a href="#" class="brand">
                                    <img src="<c:url value='/template/web/assets/images/brands/9.png'/>" alt="Brand Name">
                                </a>
                            </div><!-- End .col-sm-4 -->
                        </div><!-- End .row -->
                    </div><!-- End .brands-display -->
                </div><!-- End .col-lg-7 -->
            </div><!-- End .row -->

            <hr class="mt-4 mb-6">

            <h2 class="title text-center mb-4">Meet Our Team</h2><!-- End .title text-center mb-2 -->

            <div class="row">
                <div class="col-md-3">
                    <div class="member member-anim text-center">
                        <figure class="member-media">
                            <img src="<c:url value='/template/web/assets/images/team/huydz.jpg'/>" alt="member photo" style="clip-path: inset(0 10px 0 10px);">

                            <figcaption class="member-overlay">
                                <div class="member-overlay-content">
                                    <h3 class="member-title">Trần Đức Huy<span>Leader</span></h3><!-- End .member-title -->
                                    <div class="social-icons social-icons-simple">
                                        <a href="https://www.facebook.com/tranduchuydz/" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Github" target="_blank"><i class="icon-github"></i></a>
                                        <a href="https://www.instagram.com/duchuy_1610/" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                    </div><!-- End .soial-icons -->
                                </div><!-- End .member-overlay-content -->
                            </figcaption><!-- End .member-overlay -->
                        </figure><!-- End .member-media -->
                        <div class="member-content">
                            <h3 class="member-title">Trần Đức Huy<span>Leader</span></h3><!-- End .member-title -->
                        </div><!-- End .member-content -->
                    </div><!-- End .member -->
                </div><!-- End .col-md-3 -->

                <div class="col-md-3">
                    <div class="member member-anim text-center">
                        <figure class="member-media">
                            <img src="<c:url value='/template/web/assets/images/team/member-1.jpg'/>" alt="member photo">

                            <figcaption class="member-overlay">
                                <div class="member-overlay-content">
                                    <h3 class="member-title">Hồ Trọng Nghĩa<span>Member</span></h3><!-- End .member-title -->
                                    <div class="social-icons social-icons-simple">
                                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                    </div><!-- End .soial-icons -->
                                </div><!-- End .member-overlay-content -->
                            </figcaption><!-- End .member-overlay -->
                        </figure><!-- End .member-media -->
                        <div class="member-content">
                            <h3 class="member-title">Hồ Trọng Nghĩa<span>Member</span></h3><!-- End .member-title -->
                        </div><!-- End .member-content -->
                    </div><!-- End .member -->
                </div><!-- End .col-md-3 -->

                <div class="col-md-3">
                    <div class="member member-anim text-center">
                        <figure class="member-media">
                            <img src="<c:url value='/template/web/assets/images/team/member-2.jpg'/>" alt="member photo">

                            <figcaption class="member-overlay">
                                <div class="member-overlay-content">
                                    <h3 class="member-title">Ngô Gia Hoàng<span>Member</span></h3><!-- End .member-title -->
                                    <div class="social-icons social-icons-simple">
                                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                    </div><!-- End .soial-icons -->
                                </div><!-- End .member-overlay-content -->
                            </figcaption><!-- End .member-overlay -->
                        </figure><!-- End .member-media -->
                        <div class="member-content">
                            <h3 class="member-title">Ngô Gia Hoàng<span>Member</span></h3><!-- End .member-title -->
                        </div><!-- End .member-content -->
                    </div><!-- End .member -->
                </div><!-- End .col-md-3 -->

                <div class="col-md-3">
                    <div class="member member-anim text-center">
                        <figure class="member-media">
                            <img src="<c:url value='/template/web/assets/images/team/member-3.jpg'/>" alt="member photo">

                            <figcaption class="member-overlay">
                                <div class="member-overlay-content">
                                    <h3 class="member-title">Trầm Kim Long<span>Member</span></h3><!-- End .member-title -->
                                    <div class="social-icons social-icons-simple">
                                        <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                    </div><!-- End .soial-icons -->
                                </div><!-- End .member-overlay-content -->
                            </figcaption><!-- End .member-overlay -->
                        </figure><!-- End .member-media -->
                        <div class="member-content">
                            <h3 class="member-title">Trầm Kim Long<span>Member</span></h3><!-- End .member-title -->
                        </div><!-- End .member-content -->
                    </div><!-- End .member -->
                </div><!-- End .col-md-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->

        <div class="mb-2"></div><!-- End .mb-2 -->

        <div class="about-testimonials bg-light-2 pt-6 pb-6">
            <div class="container">
                <h2 class="title text-center mb-3">What Customer Say About Us</h2><!-- End .title text-center -->

                <div class="owl-carousel owl-simple owl-testimonials-photo" data-toggle="owl" 
                     data-owl-options='{
                     "nav": false, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "1200": {
                     "nav": true
                     }
                     }
                     }'>
                    <blockquote class="testimonial text-center">
                        <img src="<c:url value='/template/web/assets/images/testimonials/user-1.jpg'/>" alt="user">
                        <p style="font-family: monospace">“ Sốp bán đồ quá chất lượng, ngon bổ rẻ, anh chị em nên mua! ”</p>
                        <cite>
                            Incognito
                            <span>King</span>
                        </cite>
                    </blockquote><!-- End .testimonial -->

                    <blockquote class="testimonial text-center">
                        <img src="<c:url value='/template/web/assets/images/testimonials/user-2.jpg'/>" alt="user">
                        <p style="font-family: monospace">“ Lại còn phải hỏi ” </br> “ Quá ngon bổ rẻ, quẹo lựa quẹo lựa!! ”</p>
                        <cite>
                            Incognito
                            <span>Customer</span>
                        </cite>
                    </blockquote><!-- End .testimonial -->
                </div><!-- End .testimonials-slider owl-carousel -->
            </div><!-- End .container -->
        </div><!-- End .bg-light-2 pt-5 pb-6 -->
    </div><!-- End .page-content -->
</main><!-- End .main -->


<%@ include file="/common/web/footer.jsp"%>

