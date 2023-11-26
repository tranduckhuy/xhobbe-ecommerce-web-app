<%-- 
    Document   : productList
    Created on : Nov 17, 2023, 9:26:41 AM
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
                        <h2>Products</h2>
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
                                    <a href="#0">Product List</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Tables
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
                        <div class="d-flex justify-content-start mb-2">
                            <a href="./admin-product?action=add" class="my-btn">
                                Add new <i class="fa-solid fa-plus"></i>
                            </a>
                        </div>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="name-info text-center">
                                            <h6 class="">Name</h6>
                                        </th>
                                        <th class="description text-center">
                                            <h6>Description</h6>
                                        </th>
                                        <th class="category text-center">
                                            <h6>Category</h6>
                                        </th>
                                        <th class="price text-center">
                                            <h6>Price</h6>
                                        </th>
                                        <th class="price text-center">
                                            <h6>Stock</h6>
                                        </th>
                                        <th class="image-product text-center">
                                            <h6>Images</h6>
                                        </th>
                                        <th class="text-center">
                                            <h6>Action</h6>
                                        </th>
                                    </tr>
                                    <!-- end table row-->
                                </thead>
                                <tbody>
                                    <c:forEach var="product" items="${list}">
                                        <tr>
                                            <td class="min-width text-center" >
                                                <div class="lead-text font-weight-bold">
                                                    <strong class="text-primary">${product.name}</strong>
                                                </div>
                                            </td>
                                            <td class="min-width text-center description-small">
                                                <c:choose>
                                                    <c:when test="${fn:length(product.description) > 30}">
                                                        <p>${fn:substring(product.description, 0, 30)}...</p>
                                                    </c:when>
                                                        <c:otherwise>
                                                        <p>${product.description}</p>
                                                        </c:otherwise>
                                                    </c:choose>
                                            </td>
                                            <td class="min-width text-center">
                                                <strong>${product.category}</strong>
                                            </td>
                                            <td class="min-width text-center">
                                                <strong class="text-info">${product.price}$</strong>
                                            </td>
                                            <td class="min-width text-center">
                                                <strong class="text-info-emphasis">${product.stockQuantity}</strong>
                                            </td>
                                            <td class="min-width d-flex gap-2 product justify-content-center">
                                                <div class="product-image">
                                                    <img src="<c:url value='${product.getImageURL().get(0)}'/>" alt="" />
                                                </div>
                                                <div class="product-image">
                                                    <img src="<c:url value='${product.getImageURL().get(1)}'/>" alt="" />
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                <div class="action d-flex gap-4 justify-content-center">
                                                    <a href="./admin-product?action=edit&id=${product.productId}" class="text-danger " title="Edit">
                                                        <i class="fa-solid fa-pencil action-hover"></i>
                                                    </a>
                                                    <a href="./admin-product?action=detail&id=${product.productId}" "class="text-danger" target="_blank" title="Detail">
                                                        <i class="fa-solid fa-up-right-and-down-left-from-center"></i>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- end table row -->
                                    </c:forEach>
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

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- SweetAlert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<%@include file="/common/admin/footer.jsp" %>
