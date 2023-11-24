<%-- 
    Document   : accountList
    Created on : Nov 17, 2023, 9:51:05 AM
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
                        <h2>Account</h2>
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
                                    <a href="#0">Account Manager</a>
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
                    <c:if test="${msg != null && msg eq 'success'}">
                        <div class="alert alert-success text-center" role="alert">
                            Great job! Your action was successful.
                        </div>
                    </c:if>
                    <c:if test="${msg != null && msg eq 'fail'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Error: Unable to complete the requested action.
                        </div>
                    </c:if>
                    <div class="card-style mb-30">
                        <div class="d-flex justify-content-start mb-2">
                            <a href="./admin-account?action=add" class="my-btn">
                                Add new <i class="fa-solid fa-plus"></i>
                            </a>
                        </div>
                        <div class="table-wrapper table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="name-info text-center">
                                            <h6>Name</h6>
                                        </th>
                                        <th class="email text-center">
                                            <h6>Email</h6>
                                        </th>
                                        <th class="phone text-center">
                                            <h6>Phone</h6>
                                        </th>
                                        <th class="address text-center">
                                            <h6>Address</h6>
                                        </th>
                                        <th class="role text-center">
                                            <h6>Role</h6>
                                        </th>
                                        <th class="text-center">
                                            <h6>Action</h6>
                                        </th>
                                    </tr>
                                    <!-- end table row-->
                                </thead>
                                <tbody>
                                    <c:forEach var="account" items="${list}">
                                        <tr>
                                            <td class="min-width text-center">
                                                <div class="lead-text">
                                                    <p>${account.name}</p>
                                                </div>
                                            </td>
                                            <td class="min-width text-center">
                                                <p><a href="#0">${account.email}</a></p>
                                            </td>
                                            <td class="min-width text-center">
                                                <p>${account.phone}</p>
                                            </td>
                                            <td class="min-width text-center">
                                                <p>${account.address}</p>
                                            </td>
                                            <td class="min-width text-center">
                                                <p class="${account.roleId == 1 ? 'text-primary' : 'text-secondary'} text-bold">${account.role}</p>
                                            </td>
                                            <td>
                                                <div class="action d-flex gap-2 justify-content-center">
                                                    <a href="./admin-account?action=edit&email=${account.email}" class="text-danger " title="Edit">
                                                        <i class="fa-solid fa-pencil action-hover"></i>
                                                    </a>
                                                    <a href="./admin-account?action=delete&email=${account.email}" class="text-danger" title="Delete">
                                                        <i class="lni lni-trash-can action-hover"></i>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
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

<%@include file="/common/admin/footer.jsp" %>
