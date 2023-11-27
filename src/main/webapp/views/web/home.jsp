<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 16/11/2023
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>

<main class="main">
    <div class="intro-slider-container mb-5">
        <div class="intro-slider owl-carousel owl-theme owl-nav-inside owl-light" data-toggle="owl"
             data-owl-options='{
             "dots": true,
             "nav": false, 
             "responsive": {
             "1200": {
             "nav": true,
             "dots": false
             }
             }
             }'>
            <div class="intro-slide" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/slider/slide-1.png'/>);">
                <div class="container intro-content">
                    <div class="row justify-content-end">
                        <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                            <h3 class="intro-subtitle text-third">Deals and Promotions</h3>
                            <!-- End .h3 intro-subtitle -->
                            <h1 class="intro-title">Beats by</h1>
                            <h1 class="intro-title">Dre Studio 3</h1><!-- End .intro-title -->

                            <div class="intro-price">
                                <sup class="intro-old-price">$349,95</sup>
                                <span class="text-third">
                                    $279<sup>.99</sup>
                                </span>
                            </div><!-- End .intro-price -->

                            <a href="./product?action=list&category=all" class="btn btn-primary btn-round">
                                <span>Shop More</span>
                                <i class="icon-long-arrow-right"></i>
                            </a>
                        </div><!-- End .col-lg-11 offset-lg-1 -->
                    </div><!-- End .row -->
                </div><!-- End .intro-content -->
            </div><!-- End .intro-slide -->

            <div class="intro-slide" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/slider/slide-2.png'/>);">
                <div class="container intro-content">
                    <div class="row justify-content-end">
                        <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                            <h3 class="intro-subtitle text-primary">New Arrival</h3><!-- End .h3 intro-subtitle -->
                            <h1 class="intro-title">Apple iPad Pro <br>12.9 Inch, 64GB </h1>
                            <!-- End .intro-title -->

                            <div class="intro-price">
                                <sup>Today:</sup>
                                <span class="text-primary">
                                    $999<sup>.99</sup>
                                </span>
                            </div><!-- End .intro-price -->

                            <a href="./product?action=list&category=all" class="btn btn-primary btn-round">
                                <span>Shop More</span>
                                <i class="icon-long-arrow-right"></i>
                            </a>
                        </div><!-- End .col-md-6 offset-md-6 -->
                    </div><!-- End .row -->
                </div><!-- End .intro-content -->
            </div><!-- End .intro-slide -->
        </div><!-- End .intro-slider owl-carousel owl-simple -->

        <span class="slider-loader"></span><!-- End .slider-loader -->
    </div><!-- End .intro-slider-container -->

    <div class="container">
        <h2 class="title text-center mb-4">Explore Popular Categories</h2><!-- End .title text-center -->

        <div class="cat-blocks-container">
            <div class="row">
                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Laptop" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/1.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Laptop</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Phone" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/3.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Smart Phones</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Accessories" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/6.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Smart Watches</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Accessories" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/2.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Camera</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Accessories" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/4.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Headphone</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

                <div class="col-6 col-sm-4 col-lg-2">
                    <a href="./product?action=list&category=Accessories" class="cat-block">
                        <figure>
                            <span>
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/cats/5.png'/>" alt="Category image">
                            </span>
                        </figure>

                        <h3 class="cat-block-title">Audio</h3><!-- End .cat-block-title -->
                    </a>
                </div><!-- End .col-sm-4 col-lg-2 -->

            </div><!-- End .row -->
        </div><!-- End .cat-blocks-container -->
    </div><!-- End .container -->

    <div class="mb-4"></div><!-- End .mb-4 -->

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="banner banner-overlay banner-overlay-light">
                    <a href="#">
                        <img src="<c:url value='/template/web/assets/images/demos/demo-4/banners/banner-1.png'/>" alt="Banner">
                    </a>

                    <div class="banner-content">
                        <h4 class="banner-subtitle"><a href="#">Smart Offer</a></h4><!-- End .banner-subtitle -->
                        <h3 class="banner-title"><a href="#">Save $150 <strong>on Samsung <br>Galaxy
                                    Note9</strong></a></h3><!-- End .banner-title -->
                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                    </div><!-- End .banner-content -->
                </div><!-- End .banner -->
            </div><!-- End .col-md-4 -->

            <div class="col-md-6 col-lg-4">
                <div class="banner banner-overlay banner-overlay-light">
                    <a href="#">
                        <img src="<c:url value='/template/web/assets/images/demos/demo-4/banners/banner-2.jpg'/>" alt="Banner">
                    </a>

                    <div class="banner-content">
                        <h4 class="banner-subtitle"><a href="#">Time Deals</a></h4><!-- End .banner-subtitle -->
                        <h3 class="banner-title"><a href="#"><strong>Bose SoundSport</strong> <br>Time Deal -30%</a>
                        </h3><!-- End .banner-title -->
                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                    </div><!-- End .banner-content -->
                </div><!-- End .banner -->
            </div><!-- End .col-md-4 -->

            <div class="col-md-6 col-lg-4">
                <div class="banner banner-overlay banner-overlay-light">
                    <a href="#">
                        <img src="<c:url value='/template/web/assets/images/demos/demo-4/banners/banner-3.png'/>" alt="Banner">
                    </a>

                    <div class="banner-content">
                        <h4 class="banner-subtitle"><a href="#">Clearance</a></h4><!-- End .banner-subtitle -->
                        <h3 class="banner-title"><a href="#"><strong>GoPro - Fusion 360</strong> <br>Save $70</a>
                        </h3><!-- End .banner-title -->
                        <a href="#" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                    </div><!-- End .banner-content -->
                </div><!-- End .banner -->
            </div><!-- End .col-lg-4 -->
        </div><!-- End .row -->
    </div><!-- End .container -->

    <div class="mb-3"></div><!-- End .mb-5 -->

    <div class="container new-arrivals">
        <div class="heading heading-flex mb-3">
            <div class="heading-left">
                <h2 class="title">New Arrivals</h2><!-- End .title -->
            </div><!-- End .heading-left -->

            <div class="heading-right">
                <ul class="nav nav-pills nav-border-anim justify-content-center" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="new-all-link" data-toggle="tab" href="#new-all-tab"
                           role="tab" aria-controls="new-all-tab" aria-selected="true">All</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="new-computers-link" data-toggle="tab" href="#new-computers-tab"
                           role="tab" aria-controls="new-laptop-tab" aria-selected="false">Laptop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="new-phones-link" data-toggle="tab" href="#new-phones-tab" role="tab"
                           aria-controls="new-phones-tab" aria-selected="false">Tablets & Cell Phones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="new-watches-link" data-toggle="tab" href="#new-watches-tab"
                           role="tab" aria-controls="new-watches-tab" aria-selected="false">Smartwatches</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="new-acc-link" data-toggle="tab" href="#new-acc-tab" role="tab"
                           aria-controls="new-acc-tab" aria-selected="false">Accessories</a>
                    </li>
                </ul>
            </div><!-- End .heading-right -->
        </div><!-- End .heading -->

        <div class="tab-content tab-content-carousel just-action-icons-sm">
            <div class="tab-pane p-0 fade show active" id="new-all-tab" role="tabpanel"
                 aria-labelledby="new-all-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <span class="product-label label-circle label-sale">Sale</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-4.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Cell Phone</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Google - Pixel 3 XL 128GB</a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$35.41</span>
                                <span class="old-price">Was $41.67</span>
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 10 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" class="active" style="background: #edd2c8;"><span class="sr-only">Color
                                        name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane p-0 fade" id="new-tv-tab" role="tabpanel" aria-labelledby="new-tv-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <span class="product-label label-circle label-sale">Sale</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-4.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Cell Phone</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Google - Pixel 3 XL 128GB</a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$35.41</span>
                                <span class="old-price">Was $41.67</span>
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 10 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" class="active" style="background: #edd2c8;"><span class="sr-only">Color
                                        name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-5.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">TV & Home Theater</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Samsung - 55" Class LED 2160p
                                    Smart</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 5 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane p-0 fade" id="new-computers-tab" role="tabpanel"
                 aria-labelledby="new-computers-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-5.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">TV & Home Theater</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Samsung - 55" Class LED 2160p
                                    Smart</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 5 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <span class="product-label label-circle label-sale">Sale</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-4.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Cell Phone</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Google - Pixel 3 XL 128GB</a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$35.41</span>
                                <span class="old-price">Was $41.67</span>
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 10 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" class="active" style="background: #edd2c8;"><span class="sr-only">Color
                                        name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane p-0 fade" id="new-phones-tab" role="tabpanel" aria-labelledby="new-phones-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-5.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">TV & Home Theater</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Samsung - 55" Class LED 2160p
                                    Smart</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 5 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <span class="product-label label-circle label-sale">Sale</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-4.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Cell Phone</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Google - Pixel 3 XL 128GB</a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$35.41</span>
                                <span class="old-price">Was $41.67</span>
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 10 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" class="active" style="background: #edd2c8;"><span class="sr-only">Color
                                        name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane p-0 fade" id="new-watches-tab" role="tabpanel" aria-labelledby="new-watches-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <span class="product-label label-circle label-sale">Sale</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-4.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Cell Phone</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Google - Pixel 3 XL 128GB</a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$35.41</span>
                                <span class="old-price">Was $41.67</span>
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 10 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" class="active" style="background: #edd2c8;"><span class="sr-only">Color
                                        name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
            <div class="tab-pane p-0 fade" id="new-acc-tab" role="tabpanel" aria-labelledby="new-acc-link">
                <div class="owl-carousel owl-full carousel-equal-height carousel-with-shadow" data-toggle="owl"
                     data-owl-options='{
                     "nav": true, 
                     "dots": true,
                     "margin": 20,
                     "loop": false,
                     "responsive": {
                     "0": {
                     "items":2
                     },
                     "480": {
                     "items":2
                     },
                     "768": {
                     "items":3
                     },
                     "992": {
                     "items":4
                     },
                     "1200": {
                     "items":5
                     }
                     }
                     }'>
                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-5.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">TV & Home Theater</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Samsung - 55" Class LED 2160p
                                    Smart</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 5 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-top">Top</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-1.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Laptops</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">MacBook Pro 13" Display,
                                    i5</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $1,199.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-2.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Audio</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Bose - SoundLink Bluetooth
                                    Speaker</a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $79.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 6 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->

                    <div class="product product-2">
                        <figure class="product-media">
                            <span class="product-label label-circle label-new">New</span>
                            <a href="product-centered.html">
                                <img src="<c:url value='/template/web/assets/images/demos/demo-4/products/product-3.jpg'/>" alt="Product image"
                                     class="product-image">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist" title="Add to wishlist"></a>
                            </div><!-- End .product-action -->

                            <div class="product-action">
                                <a href="./cart" class="btn-product btn-cart" title="Add to cart"><span>add to
                                        cart</span></a>
                                <a href="<c:url value='/template/web/popup/quickView.jsp'/>" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                            </div><!-- End .product-action -->
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">Tablets</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title"><a href="product-centered.html">Apple - 11 Inch iPad Pro with
                                    Wi-Fi 256GB </a></h3><!-- End .product-title -->
                            <div class="product-price">
                                $899.99
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->

                            <div class="product-nav product-nav-dots">
                                <a href="#" style="background: #edd2c8;"><span class="sr-only">Color name</span></a>
                                <a href="#" style="background: #eaeaec;"><span class="sr-only">Color name</span></a>
                                <a href="#" class="active" style="background: #333333;"><span class="sr-only">Color
                                        name</span></a>
                            </div><!-- End .product-nav -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </div><!-- End .owl-carousel -->
            </div><!-- .End .tab-pane -->
        </div><!-- End .tab-content -->
    </div><!-- End .container -->

    <div class="mb-6"></div><!-- End .mb-6 -->

    <div class="container">
        <div class="cta cta-border mb-5" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/bg-1.jpg'/>);">
            <img src="<c:url value='/template/web/assets/images/demos/demo-4/camera.png'/>" alt="camera" class="cta-img">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="cta-content">
                        <div class="cta-text text-right text-white">
                            <p>Shop Today’s Deals <br><strong>Awesome Made Easy. HERO7 Black</strong></p>
                        </div><!-- End .cta-text -->
                        <a href="#" class="btn btn-primary btn-round"><span>Shop Now - $429.99</span><i
                                class="icon-long-arrow-right"></i></a>
                    </div><!-- End .cta-content -->
                </div><!-- End .col-md-12 -->
            </div><!-- End .row -->
        </div><!-- End .cta -->
    </div><!-- End .container -->

    <div class="container">
        <hr class="mb-0">
        <div class="owl-carousel mt-5 mb-5 owl-simple" data-toggle="owl" data-owl-options='{
             "nav": false, 
             "dots": false,
             "margin": 30,
             "loop": false,
             "responsive": {
             "0": {
             "items":2
             },
             "420": {
             "items":3
             },
             "600": {
             "items":4
             },
             "900": {
             "items":5
             },
             "1024": {
             "items":6
             }
             }
             }'>
            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/1.png'/>" alt="Brand Name">
            </a>

            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/2.png'/>" alt="Brand Name">
            </a>

            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/3.png'/>" alt="Brand Name">
            </a>

            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/4.png'/>" alt="Brand Name">
            </a>

            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/5.png'/>" alt="Brand Name">
            </a>

            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/6.png'/>" alt="Brand Name">
            </a>
            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/7.png'/>" alt="Brand Name">
            </a>
            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/8.png'/>" alt="Brand Name">
            </a>
            <a href="#" class="brand">
                <img src="<c:url value='/template/web/assets/images/brands/9.png'/>" alt="Brand Name">
            </a>
        </div><!-- End .owl-carousel -->
    </div><!-- End .container -->

    <div class="icon-boxes-container bg-transparent">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="icon-box icon-box-side">
                        <span class="icon-box-icon text-dark">
                            <i class="icon-rocket"></i>
                        </span>
                        <div class="icon-box-content">
                            <h3 class="icon-box-title">Free Shipping</h3><!-- End .icon-box-title -->
                            <p>Orders $50 or more</p>
                        </div><!-- End .icon-box-content -->
                    </div><!-- End .icon-box -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="icon-box icon-box-side">
                        <span class="icon-box-icon text-dark">
                            <i class="icon-rotate-left"></i>
                        </span>

                        <div class="icon-box-content">
                            <h3 class="icon-box-title">Free Returns</h3><!-- End .icon-box-title -->
                            <p>Within 30 days</p>
                        </div><!-- End .icon-box-content -->
                    </div><!-- End .icon-box -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="icon-box icon-box-side">
                        <span class="icon-box-icon text-dark">
                            <i class="icon-info-circle"></i>
                        </span>

                        <div class="icon-box-content">
                            <h3 class="icon-box-title">Get 20% Off 1 Item</h3><!-- End .icon-box-title -->
                            <p>when you sign up</p>
                        </div><!-- End .icon-box-content -->
                    </div><!-- End .icon-box -->
                </div><!-- End .col-sm-6 col-lg-3 -->

                <div class="col-sm-6 col-lg-3">
                    <div class="icon-box icon-box-side">
                        <span class="icon-box-icon text-dark">
                            <i class="icon-life-ring"></i>
                        </span>

                        <div class="icon-box-content">
                            <h3 class="icon-box-title">We Support</h3><!-- End .icon-box-title -->
                            <p>24/7 amazing services</p>
                        </div><!-- End .icon-box-content -->
                    </div><!-- End .icon-box -->
                </div><!-- End .col-sm-6 col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .icon-boxes-container -->
</main><!-- End .main -->

<%@ include file="/common/web/footer.jsp"%>