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
            <div class="intro-slide" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/slider/slide-intro.jpg'/>);">
            </div><!-- End .intro-slide -->

            <div class="intro-slide" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/slider/slide-1.jpg'/>);">
                <div class="container intro-content">
                    <div class="row justify-content-end">
                        <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                            <h3 class="intro-subtitle text-third">Deals and Promotions</h3>
                            <!-- End .h3 intro-subtitle -->
                            <h1 class="intro-title">Beats by</h1>
                            <h1 class="intro-title">iPhone 15 & iPad Air</h1><!-- End .intro-title -->

                            <div class="intro-price">
                                <sup class="intro-old-price">$1098.99</sup>
                                <span class="text-third">
                                    $798<sup>.99</sup>
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
                            <h1 class="intro-title">Apple AirPods Pro <br>2nd Generation </h1>
                            <!-- End .intro-title -->

                            <div class="intro-price">
                                <sup>Today:</sup>
                                <span class="text-primary">
                                    $198<sup>.99</sup>
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

            <div class="intro-slide" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/slider/slide-3.png'/>);">
                <div class="container intro-content">
                    <div class="row justify-content-end">
                        <div class="col-auto col-sm-7 col-md-6 col-lg-5">
                            <h3 class="intro-subtitle text-primary">New Arrival</h3><!-- End .h3 intro-subtitle -->
                            <h1 class="intro-title">Acer Nitro 5 <br>Gaming Laptop </h1>
                            <!-- End .intro-title -->

                            <div class="intro-price">
                                <sup>Today:</sup>
                                <span class="text-primary">
                                    $799<sup>.99</sup>
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
                        <img src="<c:url value='/template/web/assets/images/demos/demo-4/banners/banner-1.jpg'/>" alt="Banner">
                    </a>

                    <div class="banner-content">
                        <h4 class="banner-subtitle"><a href="#">Smart Offer</a></h4><!-- End .banner-subtitle -->
                        <h3 class="banner-title"><a href="./product?action=list&category=Phone">Save $150 <strong>on Samsung <br>Galaxy
                                    S23</strong></a></h3><!-- End .banner-title -->
                        <a href="./product?action=list&category=Phone" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
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
                        <h3 class="banner-title"><a href="./product?action=list&category=Accessories"><strong>Apple AirPods Max</strong> <br>Time Deal -30%</a>
                        </h3><!-- End .banner-title -->
                        <a href="./product?action=list&category=Accessories" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
                    </div><!-- End .banner-content -->
                </div><!-- End .banner -->
            </div><!-- End .col-md-4 -->

            <div class="col-md-6 col-lg-4">
                <div class="banner banner-overlay banner-overlay-light">
                    <a href="#">
                        <img src="<c:url value='/template/web/assets/images/demos/demo-4/banners/banner-3.jpg'/>" alt="Banner">
                    </a>

                    <div class="banner-content">
                        <h4 class="banner-subtitle"><a href="#">Clearance</a></h4><!-- End .banner-subtitle -->
                        <h3 class="banner-title"><a href="./product?action=list&category=Accessories"><strong>Apple Watch SE</strong> <br>Save $70</a>
                        </h3><!-- End .banner-title -->
                        <a href="./product?action=list&category=Accessories" class="banner-link">Shop Now<i class="icon-long-arrow-right"></i></a>
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
                </ul>
            </div><!-- End .heading-right -->
        </div><!-- End .heading -->

        <div class="tab-content tab-content-carousel just-action-icons-sm style-image">
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
                    <c:if test="${not empty list}">
                        <c:set var="firstProduct" value="${list[0]}" />
                        <div class="product product-2">
                            <figure class="product-media px-4 ${firstProduct.category != 'Laptop' ? 'pt-3' : 'pt-9'}">
                                <c:if test="${firstProduct.stockQuantity > 0}">
                                    <span class="product-label label-circle label-top">Top</span>
                                </c:if>
                                <c:if test="${firstProduct.stockQuantity == 0}">
                                    <span class="product-label label-circle label-top">Sold Out</span>
                                </c:if>

                                <a href="./product?action=detail&id=${firstProduct.productId}">
                                    <img src="${firstProduct.getImageURL().get(0)}" alt="Product image"
                                         class="product-image product-image-edit">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                                </div><!-- End .product-action -->

                                <form action="cart" method="post">
                                    <div class="product-action">

                                        <input type="hidden" name="id" value="${firstProduct.productId}">
                                        <input type="hidden" name="action" value="add">
                                        <input type="hidden" name="quantity" value="1">
                                        <c:if test="${firstProduct.stockQuantity > 0}">
                                            <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                                <span>add to cart</span>
                                            </button>
                                        </c:if>
                                        <c:if test="${firstProduct.stockQuantity == 0}">
                                            <a class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa;">
                                                <span>Out of stock</span>
                                            </a>
                                        </c:if>

                                        <a href="./home?action=quickView&id=${firstProduct.productId}" class="btn-product btn-quickview"
                                           title="Quick view"><span>quick view</span></a>
                                    </div><!-- End .product-action -->
                                </form>
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">${firstProduct.category}</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title">
                                    <a href="./product?action=detail&id=${firstProduct.productId}">
                                        ${firstProduct.name}
                                    </a>
                                </h3><!-- End .product-title -->
                                <div class="product-price">
                                    $${firstProduct.price}
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 4 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->

                        <c:set var="secondProduct" value="${list[1]}" />
                        <div class="product product-2">
                            <figure class="product-media px-4 ${secondProduct.category != 'Laptop' ? 'pt-3' : 'pt-9'}">
                                <c:if test="${secondProduct.stockQuantity == 0}">
                                    <span class="product-label label-circle label-top">Sold Out</span>
                                </c:if>
                                <c:if test="${secondProduct.stockQuantity > 0}">
                                    <span class="product-label label-circle label-new">New</span>
                                </c:if>
                                <a href="./product?action=detail&id=${secondProduct.productId}">
                                    <img src="${secondProduct.getImageURL().get(0)}" alt="Product image"
                                         class="product-image product-image-edit">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                                </div><!-- End .product-action -->

                                <form action="cart" method="post">
                                    <div class="product-action">

                                        <input type="hidden" name="id" value="${secondProduct.productId}">
                                        <input type="hidden" name="action" value="add">
                                        <input type="hidden" name="quantity" value="1">
                                        <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                            <span>add to cart</span>
                                        </button>

                                        <a href="./home?action=quickView&id=${secondProduct.productId}" class="btn-product btn-quickview"
                                           title="Quick view"><span>quick view</span></a>
                                    </div><!-- End .product-action -->
                                </form>
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">${secondProduct.category}</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title">
                                    <a href="./product?action=detail&id=${secondProduct.productId}">
                                        ${secondProduct.name}
                                    </a></h3>
                                <!-- End .product-title -->
                                <div class="product-price">
                                    $${secondProduct.price}
                                </div><!-- End .product-price -->
                                <div class="ratings-container">
                                    <div class="ratings">
                                        <div class="ratings-val" style="width: 60%;"></div><!-- End .ratings-val -->
                                    </div><!-- End .ratings -->
                                    <span class="ratings-text">( 6 Reviews )</span>
                                </div><!-- End .rating-container -->
                            </div><!-- End .product-body -->
                        </div><!-- End .product -->
                        <c:set var="thirdProduct" value="${list[2]}" />
                        <div class="product product-2">
                            <figure class="product-media px-4 ${thirdProduct.category != 'Laptop' ? 'pt-3' : 'pt-9'}">
                                <c:if test="${thirdProduct.stockQuantity > 0}">
                                    <span class="product-label label-circle label-new">New</span>
                                </c:if>
                                <c:if test="${thirdProduct.stockQuantity == 0}">
                                    <span class="product-label label-circle label-top">Sold Out</span>
                                </c:if>
                                <a href="./product?action=detail&id=${thirdProduct.productId}">
                                    <img src="${thirdProduct.getImageURL().get(0)}" alt="Product image"
                                         class="product-image product-image-edit">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                                </div><!-- End .product-action -->
                                <form action="cart" method="post">
                                    <div class="product-action">
                                        <form action="cart" method="post">
                                            <input type="hidden" name="id" value="${thirdProduct.productId}">
                                            <input type="hidden" name="action" value="add">
                                            <input type="hidden" name="quantity" value="1">
                                            <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                                <span>add to cart</span>
                                            </button>
                                        </form>
                                        <a href="./home?action=quickView&id=${thirdProduct.productId}" class="btn-product btn-quickview"
                                           title="Quick view"><span>quick view</span></a>
                                    </div><!-- End .product-action -->
                                </form>
                            </figure><!-- End .product-media -->

                            <div class="product-body">
                                <div class="product-cat">
                                    <a href="#">${thirdProduct.category}</a>
                                </div><!-- End .product-cat -->
                                <h3 class="product-title">
                                    <a href="./product?action=detail&id=${thirdProduct.productId}">
                                        ${thirdProduct.name}
                                    </a>
                                </h3><!-- End .product-title -->
                                <div class="product-price">
                                    $${thirdProduct.price}
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

                        <c:set var="fourthProduct" value="${list[3]}" />
                        <div class="product product-2">
                            <figure class="product-media px-4 ${fourthProduct.category != 'Laptop' ? 'pt-3' : 'pt-9'}">
                                <c:if test="${fourthProduct.stockQuantity > 0}">
                                    <span class="product-label label-circle label-top">Top</span>
                                </c:if>
                                <c:if test="${fourthProduct.stockQuantity == 0}">
                                    <span class="product-label label-circle label-top">Sold Out</span>
                                </c:if>
                                <span class="product-label label-circle label-sale">Sale</span>
                                <a href="./product?action=detail&id=${fourthProduct.productId}">
                                    <img src="${fourthProduct.getImageURL().get(0)}" alt="Product image"
                                         class="product-image product-image-edit">
                                </a>

                                <div class="product-action-vertical">
                                    <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                                </div><!-- End .product-action -->
                                <form action="cart" method="post">
                                    <div class="product-action">

                                        <input type="hidden" name="id" value="${fourthProduct.productId}">
                                        <input type="hidden" name="action" value="add">
                                        <input type="hidden" name="quantity" value="1">
                                        <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                            <span>add to cart</span>
                                        </button>
                                </form>
                                <a href="./home?action=quickView&id=${fourthProduct.productId}" class="btn-product btn-quickview"
                                   title="Quick view"><span>quick view</span></a>
                        </div><!-- End .product-action -->
                        </form>
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">${fourthProduct.category}</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title">
                                <a href="./product?action=detail&id=${fourthProduct.productId}">
                                    ${fourthProduct.name}
                                </a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                <span class="new-price">$${fourthProduct.price}</span>
                                <span class="old-price" style="font-size: 13px; text; text-decoration: line-through;">Was $${fourthProduct.price + 99}</span>
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

                    <c:set var="fifthProduct" value="${list[4]}" />
                    <div class="product product-2">
                        <figure class="product-media px-4 ${fifthProduct.category != 'Laptop' ? 'pt-3' : 'pt-9'}">
                            <c:if test="${fifthProduct.stockQuantity > 0}">
                                <span class="product-label label-circle label-top">Top</span>
                            </c:if>
                            <c:if test="${fifthProduct.stockQuantity == 0}">
                                <span class="product-label label-circle label-top">Sold Out</span>
                            </c:if>
                            <a href="./product?action=detail&id=${fifthProduct.productId}">
                                <img src="${fifthProduct.getImageURL().get(0)}" alt="Product image"
                                     class="product-image product-image-edit">
                            </a>

                            <div class="product-action-vertical">
                                <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                            </div><!-- End .product-action -->
                            <form action="cart" method="post">
                                <div class="product-action">
                                    <input type="hidden" name="id" value="${fifthProduct.productId}">
                                    <input type="hidden" name="action" value="add">
                                    <input type="hidden" name="quantity" value="1">
                                    <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                        <span>add to cart</span>
                                    </button>
                                    <a href="./home?action=quickView&id=${fifthProduct.productId}" class="btn-product btn-quickview"
                                       title="Quick view"><span>quick view</span></a>
                                </div><!-- End .product-action -->
                            </form>
                        </figure><!-- End .product-media -->

                        <div class="product-body">
                            <div class="product-cat">
                                <a href="#">${fifthProduct.category}</a>
                            </div><!-- End .product-cat -->
                            <h3 class="product-title">
                                <a href="./product?action=detail&id=${fifthProduct.productId}">
                                    ${fifthProduct.name}
                                </a>
                            </h3><!-- End .product-title -->
                            <div class="product-price">
                                $${fifthProduct.price}
                            </div><!-- End .product-price -->
                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                                <span class="ratings-text">( 4 Reviews )</span>
                            </div><!-- End .rating-container -->
                        </div><!-- End .product-body -->
                    </div><!-- End .product -->
                </c:if>
            </div><!-- End .owl-carousel -->
        </div><!-- .End .tab-pane -->
    </div><!-- End .tab-content -->
</div><!-- End .container -->

<div class="mb-6"></div><!-- End .mb-6 -->

<div class="container">
    <div class="cta cta-border mb-5" style="background-image: url(<c:url value='/template/web/assets/images/demos/demo-4/bg-1.jpg'/>);">
        <img src="<c:url value='/template/web/assets/images/demos/demo-4/acer-nitro.png'/>" alt="camera" class="cta-img">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="cta-content">
                    <div class="cta-text text-right text-white">
                        <p>Shop Today’s Deals <br><strong>Awesome Made Easy. Acer Nitro</strong></p>
                    </div><!-- End .cta-text -->
                    <a href="./product?action=list&category=all" class="btn btn-primary btn-round"><span>Shop Now - $939,40</span><i
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
        <a href="https://www.apple.com" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/1.png'/>" alt="Brand Name" >
        </a>

        <a href="https://www.samsung.com/global/galaxy/" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/2.png'/>" alt="Brand Name">
        </a>

        <a href="https://www.acer.com/us-en" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/3.png'/>" alt="Brand Name">
        </a>

        <a href="https://www.asus.com/" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/4.png'/>" alt="Brand Name">
        </a>

        <a href="https://www.lenovo.com/us/en/" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/5.png'/>" alt="Brand Name">
        </a>

        <a href="https://www.dell.com/en-vn" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/6.png'/>" alt="Brand Name">
        </a>
        <a href="https://www.msi.com/" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/7.png'/>" alt="Brand Name">
        </a>
        <a href="https://www.mi.com/" class="brand" target="_blank">
            <img src="<c:url value='/template/web/assets/images/brands/8.png'/>" alt="Brand Name">
        </a>
        <a href="https://www.nokia.com/" class="brand" target="_blank">
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

<script>
    $(document).ready(function () {
        var introSlider = $('.intro-slider');
        var slideTime = 2200; // Thời gian giữa các slide (đơn vị mili giây)

        introSlider.owlCarousel({
            items: 1,
            loop: true,
            autoplay: true, // Chạy tự động
            autoplayTimeout: slideTime + 3000,
            autoplaySpeed: 2000, // Điều chỉnh giá trị này để giảm tốc độ (đơn vị mili giây, ở đây là 0.8 giây)
            autoplayHoverPause: true, // Dừng khi di chuột qua slider
            dots: true,
            nav: false
//            animateOut: 'fadeOut' // Hiệu ứng trượt khi chuyển ra khỏi slide
        });
    });
</script>

<%@ include file="/common/web/footer.jsp"%>