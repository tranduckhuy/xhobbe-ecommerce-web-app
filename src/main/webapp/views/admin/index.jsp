<%-- 
    Document   : index.jsp
    Created on : Nov 16, 2023, 5:54:25 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/admin/header.jsp" %>

<section class="section">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="title-wrapper pt-30">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <div class="title">
                        <h2>eCommerce Dashboard</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#0">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    eCommerce
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
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon purple">
                        <i class="lni lni-cart-full"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">New Orders</h6>
                        <h3 class="text-bold mb-10">34567</h3>
                        <p class="text-sm text-success">
                            <i class="lni lni-arrow-up"></i> +2.00%
                            <span class="text-gray">(30 days)</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon success">
                        <i class="lni lni-dollar"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">Total Income</h6>
                        <h3 class="text-bold mb-10">$74,567</h3>
                        <p class="text-sm text-success">
                            <i class="lni lni-arrow-up"></i> +5.45%
                            <span class="text-gray">Increased</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon primary">
                        <i class="lni lni-credit-cards"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">Total Expense</h6>
                        <h3 class="text-bold mb-10">$24,567</h3>
                        <p class="text-sm text-danger">
                            <i class="lni lni-arrow-down"></i> -2.00%
                            <span class="text-gray">Expense</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="icon-card mb-30">
                    <div class="icon orange">
                        <i class="lni lni-user"></i>
                    </div>
                    <div class="content">
                        <h6 class="mb-10">New User</h6>
                        <h3 class="text-bold mb-10">34567</h3>
                        <p class="text-sm text-danger">
                            <i class="lni lni-arrow-down"></i> -25.00%
                            <span class="text-gray"> Earning</span>
                        </p>
                    </div>
                </div>
                <!-- End Icon Cart -->
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
        <div class="row">
            <div class="col-lg-7">
                <div class="card-style mb-30">
                    <div class="title d-flex flex-wrap justify-content-between">
                        <div class="left">
                            <h6 class="text-medium mb-10">Yearly Stats</h6>
                            <h3 class="text-bold">$245,479</h3>
                        </div>
                        <div class="right">
                            <div class="select-style-1">
                                <div class="select-position select-sm">
                                    <select class="light-bg">
                                        <option value="">Yearly</option>
                                        <option value="">Monthly</option>
                                        <option value="">Weekly</option>
                                    </select>
                                </div>
                            </div>
                            <!-- end select -->
                        </div>
                    </div>
                    <!-- End Title -->
                    <div class="chart">
                        <canvas id="Chart1" style="width: 100%; height: 400px; margin-left: -35px;"></canvas>
                    </div>
                    <!-- End Chart -->
                </div>
            </div>
            <!-- End Col -->
            <div class="col-lg-5">
                <div class="card-style calendar-card mb-30">
                    <div id="calendar-mini"></div>
                </div>
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
        <div class="row">
            <!-- End Col -->
            <div class="col-lg-12">
                <div class="card-style mb-30">
                    <div class="title d-flex flex-wrap justify-content-between align-items-center">
                        <div class="left">
                            <h6 class="text-medium mb-30">Top Selling Products</h6>
                        </div>
                        <div class="right">
                            <div class="select-style-1">
                                <div class="select-position select-sm">
                                    <select class="light-bg">
                                        <option value="">Yearly</option>
                                        <option value="">Monthly</option>
                                        <option value="">Weekly</option>
                                    </select>
                                </div>
                            </div>
                            <!-- end select -->
                        </div>
                    </div>
                    <!-- End Title -->
                    <div class="table-responsive">
                        <table class="table top-selling-table">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>
                                        <h6 class="text-sm text-medium">Products</h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">Category</h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">Price</h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">Sold</h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">Profit</h6>
                                    </th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="check-input-primary">
                                            <input class="form-check-input" type="checkbox" id="checkbox-1" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-1.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Arm Chair</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">43</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$45</p>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="check-input-primary">
                                            <input class="form-check-input" type="checkbox" id="checkbox-1" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-2.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">SOfa</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$145</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">13</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$15</p>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="check-input-primary">
                                            <input class="form-check-input" type="checkbox" id="checkbox-1" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-3.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Dining Table</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$95</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">32</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$215</p>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="check-input-primary">
                                            <input class="form-check-input" type="checkbox" id="checkbox-1" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-4.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Office Chair</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$105</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">23</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- End Table -->
                    </div>
                </div>
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->

        <div class="row">
            <!-- End Col -->
            <div class="col-lg-12">
                <div class="card-style mb-30">
                    <div class="title d-flex flex-wrap align-items-center justify-content-between">
                        <div class="left">
                            <h6 class="text-medium mb-30">Sales History</h6>
                        </div>
                        <div class="right">
                            <div class="select-style-1">
                                <div class="select-position select-sm">
                                    <select class="light-bg">
                                        <option value="">Today</option>
                                        <option value="">Yesterday</option>
                                    </select>
                                </div>
                            </div>
                            <!-- end select -->
                        </div>
                    </div>
                    <!-- End Title -->
                    <div class="table-responsive">
                        <table class="table top-selling-table">
                            <thead>
                                <tr>
                                    <th>
                                        <h6 class="text-sm text-medium">Products</h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">
                                            Category <i class="lni lni-arrows-vertical"></i>
                                        </h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">
                                            Revenue <i class="lni lni-arrows-vertical"></i>
                                        </h6>
                                    </th>
                                    <th class="min-width">
                                        <h6 class="text-sm text-medium">
                                            Status <i class="lni lni-arrows-vertical"></i>
                                        </h6>
                                    </th>
                                    <th>
                                        <h6 class="text-sm text-medium text-end">
                                            Actions <i class="lni lni-arrows-vertical"></i>
                                        </h6>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-1.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Bedroom</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <span class="status-btn close-btn">Pending</span>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="edit">
                                                <i class="lni lni-pencil"></i>
                                            </button>
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-2.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Arm Chair</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <span class="status-btn warning-btn">Refund</span>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="edit">
                                                <i class="lni lni-pencil"></i>
                                            </button>
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-3.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Sofa</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <span class="status-btn success-btn">Completed</span>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="edit">
                                                <i class="lni lni-pencil"></i>
                                            </button>
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="product">
                                            <div class="image">
                                                <img src="<c:url value='/template/admin/assets/images/products/product-mini-4.jpg'/>" alt="" />
                                            </div>
                                            <p class="text-sm">Kitchen</p>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="text-sm">Interior</p>
                                    </td>
                                    <td>
                                        <p class="text-sm">$345</p>
                                    </td>
                                    <td>
                                        <span class="status-btn close-btn">Canceled</span>
                                    </td>
                                    <td>
                                        <div class="action justify-content-end">
                                            <button class="edit">
                                                <i class="lni lni-pencil"></i>
                                            </button>
                                            <button class="more-btn ml-10 dropdown-toggle" id="moreAction1" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                <i class="lni lni-more-alt"></i>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="moreAction1">
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Remove</a>
                                                </li>
                                                <li class="dropdown-item">
                                                    <a href="#0" class="text-gray">Edit</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- End Table -->
                    </div>
                </div>
            </div>
            <!-- End Col -->
        </div>
        <!-- End Row -->
    </div>
    <!-- end container -->
</section>
<!-- ========== section end ========== -->

<%@include file="/common/admin/footer.jsp" %>