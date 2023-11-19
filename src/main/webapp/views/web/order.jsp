<%-- 
    Document   : order
    Created on : Nov 16, 2023, 12:12:59 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>

<main class="main">
    <div class="page-header text-center" style="background-image: url('<c:url value='/template/web/assets/images/page-header-bg.jpg'/>')">
        <div class="container">
            <h1 class="page-title">Order<span>Shop</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./home">Home</a></li>
                <li class="breadcrumb-item"><a href="./product?category=all">Shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">Order</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-tabs" id="tabs-2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="tab-5-tab" data-toggle="tab" href="#tab-5" role="tab" aria-controls="tab-5" aria-selected="true">All</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-6-tab" data-toggle="tab" href="#tab-6" role="tab" aria-controls="tab-6" aria-selected="false">Pending</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-7-tab" data-toggle="tab" href="#tab-7" role="tab" aria-controls="tab-7" aria-selected="false">Shipped</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab-8-tab" data-toggle="tab" href="#tab-8" role="tab" aria-controls="tab-8" aria-selected="false">Delivered</a>
                        </li>
                    </ul>
                    <div class="tab-content tab-content-border" id="tab-content-2">
                        <div class="tab-pane fade show active" id="tab-5" role="tabpanel" aria-labelledby="tab-5-tab">
                            <table class="table table-cart table-mobile">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Order date</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="in-stock">Pending</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="in-stock">Shipped</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="out-of-stock">Delivered</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                </tbody>
                            </table><!-- End .table table-wishlist -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="tab-6" role="tabpanel" aria-labelledby="tab-6-tab">
                            <table class="table table-cart table-mobile">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Order date</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="in-stock">Pending</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                </tbody>
                            </table><!-- End .table table-wishlist -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="tab-7" role="tabpanel" aria-labelledby="tab-7-tab">
                            <table class="table table-cart table-mobile">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Order date</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="in-stock">Shipped</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                </tbody>
                            </table><!-- End .table table-wishlist -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="tab-8" role="tabpanel" aria-labelledby="tab-8-tab">
                            <table class="table table-cart table-mobile">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Order date</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="#">
                                                        <img src="<c:url value='/template/web/assets/images/products/table/product-1.jpg'/>" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="#">Beige knitted elastic runner shoes</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="stock-col"><span class="out-of-stock">Delivered</span></td>
                                        <td class="price-col">$84.00</td>
                                        <td class="quantity-col">
                                            1
                                        </td>
                                        <td class="total-col">$84.00</td>
                                        <td class="order-col"><span>16/10/2003</span></td>
                                    </tr>
                                </tbody>
                            </table><!-- End .table table-wishlist -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .col-md-6 -->
            </div><!-- End .row --> 


            <div class="wishlist-share mt-4">
                <div class="social-icons social-icons-sm mb-2">
                    <label class="social-label">Share on:</label>
                    <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                    <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                    <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                    <a href="#" class="social-icon" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
                    <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                </div><!-- End .soial-icons -->
            </div><!-- End .wishlist-share -->
        </div><!-- End .container -->
    </div><!-- End .page-content -->
</main><!-- End .main -->

<%@ include file="/common/web/footer.jsp"%>
