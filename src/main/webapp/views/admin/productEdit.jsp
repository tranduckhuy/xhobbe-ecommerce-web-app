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
                        <h2 class="fw-bold text-uppercase" style="color: #3f51b5">Add new Product</h2>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-md-6">
                    <div class="breadcrumb-wrapper mb-0">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item">
                                    <a href="#0">Devices</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    New Device
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <div><hr class="mt-1"></div>

            <!-- end row -->
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100"">
                    <div class="col-lg-10">
                        <div class="card bg-form" style="border-radius: 1rem;">
                            <div class="card-body p-4 text-center">

                                <form action="f#" method="post" enctype='multipart/form-data'>
                                    <div class="form-outline mx-auto" style="max-width: 500px;">
                                        <label class="form-label p-2" for="name">Product name</label>
                                        <input type="text" id="name" name="name" class="form-control mb-4" required/>
                                    </div>

                                    <div class="form-outline">
                                        <label class="form-label" for="description">Description</label>
                                        <textarea class="form-control mb-4" id="description" name="description" rows="5" required></textarea>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4">
                                            <select id="select" name="category" class="form-select mb-4" required>
                                                <option value="" disabled selected>Choose category</option>
                                                <option value="1">Phone</option>
                                                <option value="2">Laptop</option>
                                                <option value="3">iPad</option>
                                                <option value="4">Accessories</option>
                                                <option value="5">Others</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="number" class="form-control mb-5" id="price" name="price" placeholder="Price" required min="0"/>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="number" class="form-control mb-5" id="quantity" name="quantity" placeholder="Stock Quantity" required min="0"/>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-6">
                                            <input type="file" class="form-control mb-5" id="productImage1" name="productImage1" required/>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="file" class="form-control mb-5" id="productImage2" name="productImage2" required/>
                                        </div>
                                    </div>

                                    <button class="btn btn-primary px-4" type="submit">Add</button>
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