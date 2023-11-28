<%-- 
    Document   : login
    Created on : Nov 16, 2023, 11:00:36 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/login/header.jsp"%>

<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/XHobbeWebApp/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Login</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="login-page bg-image pt-4 pb-4 pt-md-6 pb-md-6 pt-lg-4 pb-lg-12" style="background-image: url('assets/images/backgrounds/login-bg.jpg');">
        <div class="container">
            <div class="form-box">
                <div class="form-tab">
                    <ul class="nav nav-pills nav-fill" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="register-tab-2" data-toggle="tab" href="#register-2" role="tab" aria-controls="register-2" aria-selected="true">Edit Account</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="register-2" role="tabpanel" aria-labelledby="register-tab-2">
                            <c:if test="${message eq 'success'}">
                                <div class="alert alert-success text-center" role="alert">
                                    Great job! Your action was successful.
                                </div>
                            </c:if>
                            <c:if test="${message eq 'fail'}">
                                <div class="alert alert-danger text-center" role="alert">
                                    Error: Unable to complete the requested action.
                                </div>
                            </c:if>
                            <form action="account" method="post" id="form-customer-edit-account">

                                <div class="form-group d-flex mb-0">
                                    <label class="font-italic font-weight-bold">Your email address: </label>
                                    <p class="ml-5 font-italic font-weight-bold text-success">${user.email}</p>
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="edit-name" class="font-italic font-weight-bolder">Your name *</label>
                                    <input type="text" class="form-control" id="edit-name" name="edit-name" value="${user.name}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="edit-phone" class="font-italic font-weight-bolder">Your phone number *</label>
                                        <input type="text" class="form-control" id="edit-phone" name="edit-phone" value="${user.phone}">
                                        <span class="form-message"></span>
                                    </div><!-- End .form-group -->
                                </div>

                                <div class="form-group">
                                    <label for="edit-address" class="font-italic font-weight-bolder"    >Your address *</label>
                                    <input type="text" class="form-control" id="edit-address" name="edit-address" value="${user.address}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="d-flex justify-content-center mt-3">
                                    <input type="hidden" name="action" value="edit">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>CONFIRM EDIT</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>
                                </div><!-- End .form-footer -->

                                <div class="d-flex justify-content-end mt-2">
                                    <a href="./account?action=changePassword" class="font-italic font-weight-bolder" style="text-decoration: underline">Change Your Password?</a>
                                </div>
                            </form>
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .form-tab -->
            </div><!-- End .form-box -->
        </div><!-- End .container -->
    </div><!-- End .login-page section-bg -->
</main><!-- End .main -->


<!-- Validator JS File -->
<script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>

<script>

    //Validate regiter
    Validator({
        form: '#form-customer-edit-account',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#edit-name', 'Please enter your name!'),

            Validator.isRequired('#edit-phone', 'Please enter your phone number!'),
            Validator.isNumber('#edit-phone', 'Please enter correct phone number!'),
            Validator.isValidLength('#edit-phone', 10, 'Phone number must be 10 digits!'),

            Validator.isRequired('#edit-address', 'Please enter your address!')
        ]
    });
</script>

<%@ include file="/common/login/footer.jsp"%>
