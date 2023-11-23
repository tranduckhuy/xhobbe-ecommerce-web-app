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
                                    <a href="#0">Products</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Edit Product
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
                                <form id="form-edit-product" method="post" enctype='multipart/form-data'>  
                                    <div class="row">
                                        <div class="form-outline form-group col-lg-8 row">
                                            <label class="col-form-label col-lg-4 p-2" for="name">Product name</label>
                                            <div class="col-lg-8">
                                                <input type="text" id="name" name="name" class="form-control mb-1" value="${product.name}"/>
                                            </div>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <select id="brand-select" name="brand" class="form-select mb-1">
                                                <option value="" disabled selected>Choose category</option>
                                                <option value="1" <c:if test="${'Apple' eq product.brand}">selected</c:if> >
                                                    Apple
                                                </option>
                                                <option value="2" <c:if test="${'Samsung' eq product.brand}">selected</c:if> >
                                                    Samsung
                                                </option>
                                                <option value="3" <c:if test="${'Xiaomi' eq product.brand}">selected</c:if> >
                                                    Xiaomi
                                                </option>
                                                <option value="4" <c:if test="${'Asus' eq product.brand}">selected</c:if>>
                                                    Asus
                                                </option>
                                                <option value="5" <c:if test="${'Lenovo' eq product.brand}">selected</c:if>>
                                                    Lenovo
                                                </option>
                                                <option value="6" <c:if test="${'Dell' eq product.brand}">selected</c:if> >
                                                    Dell
                                                </option>
                                                <option value="7" <c:if test="${'MSI' eq product.brand}">selected</c:if> >
                                                    MSI
                                                </option>
                                            </select>
                                            <span class="form-message"></span>
                                        </div>
                                    </div>
                                    <div class="form-outline form-group">
                                        <label class="form-label" for="description">Description</label>
                                        <textarea class="form-control mb-1" id="description" name="description" rows="5">${product.description}</textarea>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-4 form-group">
                                            <select id="category-select" name="category" class="form-select mb-1">
                                                <option value="" disabled selected>Choose category</option>
                                                <option value="1" <c:if test="${'Phone' eq product.category}">selected</c:if> >
                                                    Phone
                                                </option>
                                                <option value="2" <c:if test="${'Laptop' eq product.category}"> selected</c:if> >
                                                    Laptop
                                                </option>
                                                <option value="3" <c:if test="${'iPad' eq product.category}"> selected</c:if> >
                                                    iPad
                                                </option>
                                                <option value="4" <c:if test="${'Accessories' eq product.category}"> selected</c:if> >
                                                    Accessories
                                                </option>
                                            </select>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="number" class="form-control mb-1" id="price" min="0" name="price" placeholder="Price" value="${product.price}"/>
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-lg-4 form-group">
                                            <input type="number" class="form-control mb-1" id="quantity" min="0" name="quantity" placeholder="Stock Quantity" value="${product.stockQuantity}"/>
                                            <span class="form-message"></span>
                                        </div>
                                    </div>

                                    <div class="row">

                                        <div class="col-lg-6 form-group">
                                            <input type="file" class="form-control-file" value="upload" accept=".jpg" id="productImage1">
                                            <input name="proImage1" type="text" id="proImage1" style="display: none">
                                            <label for="productImage1" style="font-weight: bold; color: #3f5092">Product image</label>
                                            <div id="imgDiv1">
                                                <img src="<c:url value='${product.getImageURL().get(0)}'/>" alt="Product image" style="max-width: 200px; height: auto">
                                            </div>
                                            <progress value="0" max="100" id="uploader1">0%</progress>
                                        </div>
                                        <div class="col-lg-6 form-group">
                                            <input type="file" class="form-control-file" value="upload" accept=".jpg, .png" id="productImage2">
                                            <input name="proImage2" type="text" id="proImage2" style="display: none">
                                            <label for="productImage2" style="font-weight: bold; color: #3f5092">Product image</label>
                                            <div id="imgDiv2">
                                                <img src="<c:url value='${product.getImageURL().get(1)}'/>" alt="Product image" style="max-width: 200px; height: auto">
                                            </div>
                                            <progress value="0" max="100" id="uploader2">0%</progress>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-primary px-4">Edit</button>
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

<!-- ========= Firebase ======== -->
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<script src="<c:url value='/template/admin/assets/js/firebase/fireBaseUpload.js'/>"></script>

<!-- ========= CKEditor Javascript files linkup ======== -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<!--<script src="<c:url value='/template/admin/assets/ckeditor5-build-classic/ckeditor.js'/>"></script>-->

<!-- ========= Validate Javascript files linkup ======== -->
<script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>

<script>
    var editor = '';
    $(document).ready(function () {
        editor = CKEDITOR.replace('description');
    });
    
    //Validate form add product
    Validator({
        form: '#form-edit-product',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#name', 'Please enter product name!'),

            Validator.isRequired('#brand-select', 'Please enter product name!'),

            Validator.isRequired('#description', 'Please enter product description!'),

            Validator.isRequired('#category-select', 'Please choose product category!'),

            Validator.isRequired('#price', 'Please enter product price!'),
            Validator.isPositive('#price', 'Please enter product price greater than 0!'),

            Validator.isRequired('#quantity', 'Please choose product quantity!'),
            Validator.isPositive('#quantity', 'Please enter product quantity greater than 0!'),
        ]
    });
</script>

<%@include file="/common/admin/footer.jsp" %>