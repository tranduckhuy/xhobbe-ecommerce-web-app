<%-- 
    Document   : forgotPassword
    Created on : Nov 28, 2023, 4:16:44 PM
    Author     : Lmao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/login/header.jsp"%>

<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/XHobbeWebApp/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Forgot Password</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="login-page bg-image pt-4 pb-4 pt-md-6 pb-md-6 pt-lg-4 pb-lg-12" style="background-image: url('assets/images/backgrounds/login-bg.jpg');">
        <div class="container">
            <div class="form-box">
                <c:choose>
                    <c:when test="${message eq 'success'}">
                        <div class="alert alert-success text-center" role="alert">
                            Great job! Please check your email and follow the instructions to get OTP.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'fail'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Error: Unable to complete the requested action.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'emailNotExist'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Account not exists. Please use a different email address.
                        </div>
                    </c:when>
                </c:choose>
                <div class="form-tab">
                    <ul class="nav nav-pills nav-fill" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="register-tab-2" data-toggle="tab" href="#register-2" role="tab" aria-controls="register-2" aria-selected="true">Forgot Password</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="register-2" role="tabpanel" aria-labelledby="register-tab-2">
                            <form action="#" method="post" id="form-forgot-password">
                                <div class="form-group">
                                    <label for="edit-email-2">Enter your email address and we'll send you OTP *</label>
                                    <input type="hidden" name="action" value="submitEmail">
                                    <input type="email" class="form-control" id="forgot-email" name="forgot-email">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="d-flex justify-content-center mt-3">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>SEND</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>
                                </div><!-- End .form-footer -->
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
        form: '#form-forgot-password',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#forgot-email', 'Please enter your email!'),
            Validator.isEmail('#forgot-email', 'Please enter correct email!')
        ]
    });

    Validator({
        form: '#form-input-otp',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#otp-input', 'Please enter your otp!')
        ]
    });
</script>

<%@ include file="/common/login/footer.jsp"%>
