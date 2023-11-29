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
                <div class="col-md-8">
                    <div class="title row">
                        <div class="col-md-4"><h3 class="text-danger-emphasis">Orders Manager</h3></div>
                        <div class="col-md-8">
                            <form class="form-inline my-2 my-lg-0 d-flex gap-2">
                                <input class="form-control" type="search" id="search" name="search" placeholder="Search (Email or Phone)">
                                <input type="hidden" name="action" id="action" value="search"/>
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-4">
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
            <c:forEach var="pn" items="${productError}">
                <div class="alert alert-danger text-center my-3" role="alert" style="margin: 0; padding: 4px">
                    The number of requests to order of ${pn} has exceeded the number in stock.
                </div>
            </c:forEach>
        </div>
        <!-- ========== title-wrapper end ========== -->

        <!-- ========== tables-wrapper start ========== -->
        <div class="tables-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" id="tabs-2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active tab-link" id="pendingTab" data-bs-toggle="tab" href="#Pending" role="tab" aria-controls="tab-5" aria-selected="true">Pending</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="shippedTab" data-bs-toggle="tab" href="#Shipped" role="tab" aria-controls="tab-6" aria-selected="false">Shipped</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="deliveredTab" data-bs-toggle="tab" href="#Delivered" role="tab" aria-controls="tab-7" aria-selected="false">Delivered</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link tab-link" id="allTab" data-bs-toggle="tab" href="#all" role="tab" aria-controls="tab-8" aria-selected="false">All</a>
                        </li>
                    </ul>

                    <div class="tab-content tab-content-border" id="tab-content">

                        <!-- Pending tab -->
                        <div class="tab-pane fade show active" id="Pending" role="tabpanel" aria-labelledby="pending-tab">
                            <div class="table-wrapper table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                <h6>Customer name</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Customer phone</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Delivery address</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Total</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Status</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Order date</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Action</h6>
                                            </th>
                                        </tr>
                                        <!-- end table row-->
                                    </thead>
                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- End. Pending tab -->

                        <!-- Shipped tab -->
                        <div class="tab-pane fade" id="Shipped" role="tabpanel" aria-labelledby="shipped-tab">
                            <div class="table-wrapper table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                <h6>Customer name</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Customer phone</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Delivery address</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Total</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Status</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Order date</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Action</h6>
                                            </th>
                                        </tr>
                                        <!-- end table row-->
                                    </thead>
                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- End. Shipped tab -->

                        <!-- Delivered tab -->
                        <div class="tab-pane fade" id="Delivered" role="tabpanel" aria-labelledby="delivered-tab">
                            <div class="table-wrapper table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                <h6>Customer name</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Customer phone</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Delivery address</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Total</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Status</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Order date</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Action</h6>
                                            </th>
                                        </tr>
                                        <!-- end table row-->
                                    </thead>
                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- End. Delivered tab -->

                        <!--status All tab -->
                        <div class="tab-pane fade" id="all" role="tabpanel" aria-labelledby="all-tab">
                            <div class="table-wrapper table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                <h6>Customer name</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Customer phone</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Delivery address</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Total</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Status</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Order date</h6>
                                            </th>
                                            <th class="text-center">
                                                <h6>Action</h6>
                                            </th>
                                        </tr>
                                        <!-- end table row-->
                                    </thead>
                                    <tbody>


                                    </tbody>
                                </table>
                            </div>
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

<script src="<c:url value='/template/admin/assets/js/popup/popupDelete.js'/>"></script>

<!-- jQuery -->
<script src="<c:url value='/template/admin/assets/js/jquery.min.js'/>"></script>

<!-- SweetAlert -->
<script src="<c:url value='/template/admin/assets/js/sweetalert.min.js'/>"></script>

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

<!-- ========== table components end ========== -->

<%@include file="/common/admin/footer.jsp" %>
