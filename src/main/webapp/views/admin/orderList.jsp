<%-- 
    Document   : orderList
    Created on : Nov 17, 2023, 9:52:02 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/admin/header.jsp" %>

<section class="table-components">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="d-flex title gap-4">
                        <h2>Orders</h2>
                        <form class="form-inline my-2 my-lg-0 d-flex gap-2">
                            <input class="form-control mr-sm-2" type="search" id="searchValue" name="searchValue" placeholder="Search">
                            <input type="hidden" name="searchField" id="searchField"/>
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>

                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Orders</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- ========== title-wrapper end ========== -->

        <!-- ========== tables-wrapper start ========== -->
        <div class="tables-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" id="tabs-2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active tab-link" id="pendingTab" data-bs-toggle="tab" href="#pending" role="tab" aria-controls="tab-5" aria-selected="true">Pending</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="shippedTab" data-bs-toggle="tab" href="#shipped" role="tab" aria-controls="tab-6" aria-selected="false">Shipped</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="deliveredTab" data-bs-toggle="tab" href="#delivered" role="tab" aria-controls="tab-7" aria-selected="false">Delivered</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="allTab" data-bs-toggle="tab" href="#all" role="tab" aria-controls="tab-8" aria-selected="false">All</a>
                        </li>
                    </ul>

                    <div class="tab-content tab-content-border" id="tab-content">

                        <!-- Pending tab -->
                        <div class="tab-pane fade show active" id="pending" role="tabpanel" aria-labelledby="pending-tab">


                        </div>
                        <!-- End. Pending tab -->

                        <!-- Shipped tab -->
                        <div class="tab-pane fade" id="shipped" role="tabpanel" aria-labelledby="shipped-tab">

                        </div>
                        <!-- End. Shipped tab -->

                        <!-- Delivered tab -->
                        <div class="tab-pane fade" id="delivered" role="tabpanel" aria-labelledby="delivered-tab">

                        </div>
                        <!-- End. Delivered tab -->

                        <!--status All tab -->
                        <div class="tab-pane fade" id="all" role="tabpanel" aria-labelledby="all-tab">

                        </div>
                        <!-- .End .tab-pane -->

                    </div><!-- End .tab-content -->
                </div><!-- End .col-md-6 -->
            </div><!-- End .row --> 
        </div><!-- End .page-content -->
        <!-- ========== tables-wrapper end ========== -->

    </div>
    <!-- end container -->
</section>

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
                url: 'admin-order?action=list&status=' + tabId,
                method: 'GET',
                success: function (data) {
                    let tagAppend = document.getElementById(tabId);
                    console.log(tagAppend);
                    tagAppend.innerHTML = data; // Update the content of the tab
                },
                error: function () {
                    console.error('Error fetching data');
                }
            });
        }
    });
</script>

<!-- ========== table components end ========== -->

<%@include file="/common/admin/footer.jsp" %>
