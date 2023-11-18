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
                        <h2>Orders Detail</h2>
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
                                <li class="breadcrumb-item active" aria-current="page">
                                    Order Detail
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
                    <div class="card-style mb-30">
                        <h6 class="mb-10">Order detail table</h6>
                        <p class="text-sm mb-20">
                            Yee...
                        </p>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-center">
                                            <h6>Product Name</h6>
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
                                        <th class="text-center">
                                            <h6>Product Image</h6>
                                        </th>
                                    </tr>
                                    <!-- end table row-->
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="min-width text-center">
                                            <p>iPhone 15 Pro Max</p>
                                        </td>
                                        <td class="min-width text-center">
                                            <p>2</p>
                                        </td>
                                        <td class="min-width text-center">
                                            1000$
                                        </td>
                                        <td class="min-width text-center">
                                            2000$
                                        </td>
                                        <td class="min-width d-flex product justify-content-center">
                                            <div class="product-image">
                                                <img src="<c:url value='/template/admin/assets/images/lead/lead-3.png'/>" alt="" />
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- end table row -->

                                    <tr>
                                        <td class="min-width text-center">
                                            <p>iPhone 15 Pro Max</p>
                                        </td>
                                        <td class="min-width text-center">
                                            <p>2</p>
                                        </td>
                                        <td class="min-width text-center">
                                            1000$
                                        </td>
                                        <td class="min-width text-center">
                                            2000$
                                        </td>
                                        <td class="min-width d-flex product justify-content-center">
                                            <div class="product-image">
                                                <img src="<c:url value='/template/admin/assets/images/lead/lead-3.png'/>" alt="" />
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- end table row -->
                                </tbody>
                            </table>
                            <!-- end table -->
                        </div>
                    </div>
                    <!-- end card -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- ========== tables-wrapper end ========== -->
    </div>
    <!-- end container -->
</section>
<!-- ========== table components end ========== -->

<%@include file="/common/admin/footer.jsp" %>
