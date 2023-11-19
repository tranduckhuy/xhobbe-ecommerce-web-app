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
                        <h2 class="fw-bold text-uppercase" style="color: #3f51b5">Edit Product</h2>
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

                                <form action="f#" method="post" enctype='multipart/form-data' id="form-edit-product">
                                    <div class="form-outline mx-auto form-group" style="max-width: 500px;">
                                        <label class="form-label p-2" for="name">Product name</label>
                                        <input type="text" id="name" name="name" class="form-control mb-1"/>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-outline form-group">
                                        <label class="form-label" for="description">Description</label>
                                        <textarea class="form-control mb-1" id="description" name="description" rows="5"></textarea>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 form-group">
                                            <select id="select" name="category" class="form-select mb-1">
                                                <option value="" disabled selected>Choose category</option>
                                                <option value="1">Phone</option>
                                                <option value="2">Laptop</option>
                                                <option value="3">iPad</option>
                                                <option value="4">Accessories</option>
                                                <option value="5">Others</option>
                                            </select>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="number" class="form-control mb-1" id="price" name="price" placeholder="Price"/>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="number" class="form-control mb-1" id="quantity" name="quantity" placeholder="Stock Quantity"/>
                                            <span class="form-message"></span>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-6 form-group">
                                            <input type="file" class="form-control mb-1" id="productImage1" name="productImage1"/>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <input type="file" class="form-control mb-1" id="productImage2" name="productImage2"/>
                                            <span class="form-message"></span>
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

<!-- ========= Validate Javascript files linkup ======== -->
<script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>

<script>
    //Validate form add product
    Validator({
        form: '#form-edit-product',
        erroSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#name', 'Please enter product name!'),
            Validator.isNameProduct('#name', 'The name cannot contain special characters!'),

            Validator.isRequired('#description', 'Please enter product description!'),

            Validator.isRequired('#select', 'Please choose product category!'),

            Validator.isRequired('#price', 'Please enter product price!'),
            Validator.isPositive('#price', 'Please enter product price greater than 0!'),

            Validator.isRequired('#quantity', 'Please choose product quantity!'),
            Validator.isPositive('#quantity', 'Please enter product quantity greater than 0!'),

            Validator.isRequired('#productImage1', 'Please choose product image!'),
            Validator.isRequired('#productImage2', 'Please choose product image!')
        ]
    });
</script>

<%@include file="/common/admin/footer.jsp" %>