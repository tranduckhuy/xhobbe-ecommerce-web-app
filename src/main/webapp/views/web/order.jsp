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
                <li class="breadcrumb-item"><a href="./product?action=list&category=all">Shop</a></li>
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
                            <a class="nav-link active tab-link" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="pending-tab" data-toggle="tab" href="#Pending" role="tab" aria-controls="Pending" aria-selected="false">Pending</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="shipped-tab" data-toggle="tab" href="#Shipped" role="tab" aria-controls="Shipped" aria-selected="false">Shipped</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="Delivered-tab" data-toggle="tab" href="#Delivered" role="tab" aria-controls="Delivered" aria-selected="false">Delivered</a>
                        </li>
                    </ul>
                    <div class="tab-content tab-content-border" id="tab-content-2">
                        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                            <div class="table-wrapper table-responsive px-5">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><h6 class="order-header">Your phone</h6></th>
                                            <th class="text-center"><h6 class="order-header">Status</h6></th>
                                            <th class="text-center"><h6 class="order-header-address">Delivery address</h6></th>
                                            <th class="text-center"><h6 class="order-header">Total</h6></th>
                                            <th class="text-center"><h6 class="order-header">Order date</h6></th>
                                            <th class="text-center"><h6 class="order-header">Order Detail</h6></th>
                                        </tr>
                                    </thead>

                                    <tbody>


                                    </tbody>
                                </table>
                            </div>    
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="Pending" role="tabpanel" aria-labelledby="Pending-tab">
                            <div class="table-wrapper table-responsive px-5">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="text-center order-header">Your phone</th>
                                            <th class="text-center order-header">Status</th>
                                            <th class="text-center order-header-address">Delivery address</th>
                                            <th class="text-center order-header">Total</th>
                                            <th class="text-center order-header">Order date</th>
                                            <th class="text-center order-header">Order Detail</th>
                                        </tr>
                                    </thead>

                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="Shipped" role="tabpanel" aria-labelledby="Shipped-tab">
                            <div class="table-wrapper table-responsive px-5">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="text-center order-header">Your phone</th>
                                            <th class="text-center order-header">Status</th>
                                            <th class="text-center order-header-address">Delivery address</th>
                                            <th class="text-center order-header">Total</th>
                                            <th class="text-center order-header">Order date</th>
                                            <th class="text-center order-header">Order Detail</th>
                                        </tr>
                                    </thead>

                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="Delivered" role="tabpanel" aria-labelledby="Delivered-tab">
                            <div class="table-wrapper table-responsive px-5">
                                <table class="table table-cart">
                                    <thead>
                                        <tr>
                                            <th class="text-center order-header">Your phone</th>
                                            <th class="text-center order-header">Status</th>
                                            <th class="text-center order-header-address">Delivery address</th>
                                            <th class="text-center order-header">Total</th>
                                            <th class="text-center order-header">Order date</th>
                                            <th class="text-center order-header">Order Detail</th>
                                        </tr>
                                    </thead>

                                    <tbody>

                                    </tbody>
                                </table>
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
                </div><!-- End .soial-icons -->
            </div><!-- End .wishlist-share -->
        </div><!-- End .container -->
    </div><!-- End .page-content -->
</main><!-- End .main -->

<script>
    $(document).ready(function () {
        // Handle tab changes
        $('.tab-link').on('shown.bs.tab', function (e) {
            var tabId = $(e.target).attr('href');
            tabId = tabId.substring(1);
            fetchData(tabId);
        });

        // Initial data load for the active tab
        var initialTabId = $('.tab-link.active').attr('href');
        initialTabId = initialTabId.substring(1);
        console.log(initialTabId);
        fetchData(initialTabId);

        // Function to make AJAX request and update content
        function fetchData(tabId) {
            $.ajax({
                url: 'order?action=list&status=' + tabId,
                method: 'GET',
                success: function (data) {
                    if (data !== null) {
                        let tabElement = document.getElementById(tabId);
                        let tbodyElement = tabElement.querySelector("tbody");
                        console.log(tbodyElement);
                        tbodyElement.innerHTML = data; // Update the content of the tab
                    }

                },
                error: function () {
                    console.error('Error fetching data');
                }
            });
        }
    });
</script>

<%@ include file="/common/web/footer.jsp"%>
