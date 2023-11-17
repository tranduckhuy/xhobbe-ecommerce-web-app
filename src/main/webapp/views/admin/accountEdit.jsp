<%-- 
    Document   : accountForm
    Created on : Nov 17, 2023, 11:58:15 AM
    Author     : ADMIN
--%>

<%-- 
    Document   : addProduct
    Created on : Nov 16, 2023, 9:59:59 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/admin/header.jsp" %>

<section class="section">
    <div class="container-fluid">
        <!-- ========== title-wrapper start ========== -->
        <div class="pt-30">
            <div class="row align-items-center mb-3">
                <div class="col-md-6">
                    <div class="title">
                        <h2 class="fw-bold text-uppercase" style="color: #3f51b5">Edit account</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-0">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="#0">Account Manager</a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#0">Admin</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Edit
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <div><hr class="mt-1"></div>

            <!-- end row -->
            <div class="container h-100 mt-5">
                <div class="row d-flex justify-content-center align-items-center h-100"">
                    <div class="col-lg-8">
                        <div class="card bg-form" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <form action="f#" method="post" enctype='multipart/form-data'>
                                    <div class="form-outline row">
                                        <label class="col-form-label col-lg-3" for="name">Username</label>
                                        <div class="col-lg-9">
                                            <input type="text" id="name" name="name" class="form-control mb-4" required/>
                                        </div>
                                    </div>

                                    <div class="form-outline row">
                                        <label class="col-form-label col-lg-3" for="email">Email</label>
                                        <div class="col-lg-9">
                                            <input type="text" id="email" name="email" class="form-control mb-4" required/>
                                        </div>
                                    </div>

                                    <div class="form-outline row">
                                        <label class="col-form-label col-lg-3" for="phone">Phone</label>
                                        <div class="col-lg-9">
                                            <input type="tel" id="phone" name="phone" class="form-control mb-4" required/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-outline row">
                                        <label class="col-form-label col-lg-3" for="address">Address</label>
                                        <div class="col-lg-9">
                                            <input type="text" id="address" name="address" class="form-control mb-4" required/>
                                        </div>
                                    </div>

                                    <div class="form-outline row">
                                        <label class="col-form-label col-lg-3" for="phone">Role</label>
                                        <div class="col-lg-9">
                                            <select id="select" name="role" class="form-select mb-4" required>
                                                <option value="" disabled selected>Choose role</option>
                                                <option value="1">Admin</option>
                                                <option value="2">Staff</option>
                                                <option value="3">Customer</option>
                                            </select>
                                        </div>
                                    </div>

                                    <a href="#" class="btn btn-primary px-4" type="submit">Edit</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <!-- ========== title-wrapper end ========== -->
    </div>
    <!-- end container -->
</section>

<section class="lg-bg">

</section>

<%@include file="/common/admin/footer.jsp" %>