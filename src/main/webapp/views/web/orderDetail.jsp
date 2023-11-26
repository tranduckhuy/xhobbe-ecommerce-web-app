<%-- 
    Document   : orderDetail
    Created on : Nov 25, 2023, 9:01:22 PM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/web/header.jsp" %>

<main class="main">
    <div class="page-header text-center" style="background-image: url('<c:url value='/template/web/assets/images/page-header-bg.jpg'/>')">
        <div class="container">
            <h1 class="page-title">Order Detail</h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./home">Home</a></li>
                <li class="breadcrumb-item"><a href="./product?category=all">Shop</a></li>
                <li class="breadcrumb-item"><a href="./order">Order</a></li>
                <li class="breadcrumb-item active" aria-current="page">Order Detail</li>
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
                    </ul>
                    <div class="tab-content tab-content-border" id="tab-content-2">
                        <div class="tab-pane fade show active" id="tab-5" role="tabpanel" aria-labelledby="tab-5-tab">
                            <div class="table-wrapper table-responsive">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                <h6>Product</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Quantity</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Price Order</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Total</h6>
                                            </th>                                                                                
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td class="product-col " style="min-width: 400px;">
                                                <div class="product justify-content-start px-5">
                                                    <figure class="product-media">
                                                        <a href="#">
                                                            <img src="https://firebasestorage.googleapis.com/v0/b/xhobbe-98105.appspot.com/o/productImage%2FLaptop%2Fmac-air-m2-gray-5.jpg?alt=media&token=7f344730-b397-4305-b1ed-e852960aefe4" alt="Product image">
                                                        </a>
                                                    </figure>

                                                    <h3 class="product-title">
                                                        <a href="#">iPhone 15 iPhone 15 iPhone 15 iPhone 15 iPhone 15 iPhone 15</a>
                                                    </h3><!-- End .product-title -->
                                                </div><!-- End .product -->
                                            </td>
                                            <td class=" text-center" style="max-width: 200px; min-width: 100px">
                                                <p>1</p> 
                                            </td>
                                            <td class="text-center" style="max-width: 200px; min-width: 100px">
                                                84.00$
                                            </td>
                                            <td class="text-center" style="max-width: 200px; min-width: 100px">
                                                84.00$
                                            </td>
                                        </tr>

                                    </tbody>
                                </table><!-- End .table table-wishlist -->
                            </div>    
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
                </div><!-- End .social-icons -->
            </div><!-- End .wishlist-share -->
        </div><!-- End .container -->
    </div><!-- End .page-content -->
</main><!-- End .main -->

<%@include file="/common/admin/footer.jsp" %>
