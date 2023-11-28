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

    <div class="login-page bg-image pt-4 pb-4 pt-md-6 pb-md-6 pt-lg-4 pb-lg-12" style="background-image: url('<c:url value='/template/web/assets/images/backgrounds/login-bg.svg.png'/>')">
        <div class="container">
            <div class="form-box">
                <c:choose>
                    <c:when test="${message eq 'success'}">
                        <div class="alert alert-success text-center" role="alert">
                            Great job! Your action was successful.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'fail'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Error: Unable to complete the requested action.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'notCorrect'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Email or password is not correct!
                        </div>
                    </c:when>
                    <c:when test="${message eq 'notLogin'}">
                        <div class="alert alert-warning text-center" role="alert">
                            Please sign in to access this feature.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'emailExist'}">
                        <div class="alert alert-danger text-center" role="alert">
                            Email already exists. Please use a different email address.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'activeEmail'}">
                        <div class="alert alert-warning text-center" role="alert">
                            Please check your email and follow the instructions to activate your account.
                        </div>
                    </c:when>
                    <c:when test="${message eq 'notActive'}">
                        <div class="alert alert-warning text-center" role="alert">
                            Account not active. Please check your email for activation!.
                        </div>
                    </c:when>
                </c:choose>
                <div class="form-tab">
                    <ul class="nav nav-pills nav-fill" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="signin-tab-2" data-toggle="tab" href="#signin-2" role="tab" aria-controls="signin-2" aria-selected="false">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="register-tab-2" data-toggle="tab" href="#register-2" role="tab" aria-controls="register-2" aria-selected="true">Register</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="signin-2" role="tabpanel" aria-labelledby="signin-tab-2">
                            <form id="form-signin" method="post">
                                <input type="hidden" id="action-signin" name="action">
                                <div class="form-group">
                                    <label for="singin-email-2">Your email address *</label>
                                    <input type="email" class="form-control" id="singin-email-2" name="singin-email" placeholder="Ex: acb@gmail.com">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="singin-password-2">Password *</label>
                                    <input type="password" class="form-control" id="singin-password-2" name="singin-password">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->
                                <div class="d-flex justify-content-center mt-3 mb-2" > <!-- Add text-center class here -->
                                    <div class="g-recaptcha" id="recaptcha" data-sitekey="6LcTHtQoAAAAAEir6px0o-hcQiOCMi50ojtxuvrd"></div>
                                </div>
                                <div class="form-footer">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>LOG IN</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>

                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="signin-remember-2">
                                        <label class="custom-control-label" for="signin-remember-2">Remember Me</label>
                                    </div><!-- End .custom-checkbox -->

                                    <a href="#" class="forgot-link">Forgot Your Password?</a>
                                </div> <!-- End .form-footer -->
                            </form>
                            <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&state=state_parameter_passthrough_value&access_type=offline&response_type=code&include_granted_scopes=true&redirect_uri=http://localhost:8080/XHobbeWebApp/LoginGoogleHandler&client_id=968629766334-ib9g601qejl32aqv0sep9dnvklnskt9d.apps.googleusercontent.com"
                                           class="btn btn-login btn-g">
                                            <i class="icon-google"></i>
                                            Login With Google
                                        </a>
                                    </div><!-- End .col-6 -->
                                    <div class="col-sm-6">
                                        <a href="#!" class="btn btn-login btn-f">
                                            <i class="icon-facebook-f"></i>
                                            Login With Facebook
                                        </a>
                                    </div><!-- End .col-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .form-choice -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane fade" id="register-2" role="tabpanel" aria-labelledby="register-tab-2">
                            <form id="form-register" method="post">
                                <input type="hidden" id="action-register" name="action">
                                <div class="form-group">
                                    <label for="register-name" class="font-weight-bolder">Your name *</label>
                                    <input type="text" class="form-control" id="register-name" name="register-name" placeholder="Ex: Huy Đẹp Trai, Jon-Doe, ,..."
                                           value="${not empty newUser ? newUser.name : ''}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="register-email-2" class="font-weight-bolder">Your email address *</label>
                                    <input type="email" class="form-control" id="register-email-2" name="register-email" placeholder="Ex: acb@gmail.com"
                                           value="${not empty newUser ? newUser.email : ''}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="form-group">
                                    <label for="register-phone" class="font-weight-bolder">Your phone number *</label>
                                    <input type="text" class="form-control" id="register-phone" name="register-phone" placeholder="Must be 10 digits. Ex: 0987678979"
                                           value="${not empty newUser ? newUser.phone : ''}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="register-password-2" class="font-weight-bolder">Password *</label>
                                        <input type="password" class="form-control" id="register-password-2" name="register-password" placeholder="More than 6 character">
                                        <span class="form-message"></span>
                                    </div><!-- End .form-group -->

                                    <div class="form-group col-md-6">
                                        <label for="register-confirm-password-2" class="font-weight-bolder">Confirm Password *</label>
                                        <input type="password" class="form-control" id="register-confirm-password-2" name="register-confirm-password">
                                        <span class="form-message"></span>
                                    </div><!-- End .form-group -->
                                </div>

                                <div class="form-group">
                                    <label for="register-address" class="font-weight-bolder">Your address *</label>
                                    <input type="text" class="form-control" id="register-address" name="register-address" 
                                           value="${not empty newUser ? newUser.address : ''}">
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                <div class="form-footer">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>SIGN UP</span>
                                        <i class="icon-long-arrow-right"></i>
                                    </button>

                                    <div class="custom-control custom-checkbox form-group">
                                        <input name="register-policy" type="checkbox" class="custom-control-input" id="register-policy-2">
                                        <label class="custom-control-label" for="register-policy-2">I agree to the <a href="#">privacy policy</a> *</label>
                                        <p class="form-message"></p>
                                    </div><!-- End .custom-checkbox -->
                                </div>
                            </form>
                            <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="https://accounts.google.com/o/oauth2/v2/auth?scope=email%20profile&state=state_parameter_passthrough_value&access_type=offline&response_type=code&include_granted_scopes=true&redirect_uri=http://localhost:8080/XHobbeWebApp/LoginGoogleHandler&client_id=968629766334-ib9g601qejl32aqv0sep9dnvklnskt9d.apps.googleusercontent.com"
                                           class="btn btn-login btn-g">
                                            <i class="icon-google"></i>
                                            Login With Google
                                        </a>
                                    </div><!-- End .col-6 -->
                                    <div class="col-sm-6">
                                        <a href="#!" class="btn btn-login  btn-f">
                                            <i class="icon-facebook-f"></i>
                                            Login With Facebook
                                        </a>
                                    </div><!-- End .col-6 -->
                                </div><!-- End .row -->
                            </div><!-- End .form-choice -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .form-tab -->
            </div><!-- End .form-box -->
        </div><!-- End .container -->
    </div><!-- End .login-page section-bg -->
</main><!-- End .main -->

<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<!-- Validator JS File -->
<script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>

<script>

    window.onload = () => {
        const form = document.getElementById("form-signin");
        form.addEventListener("submit", (event) => {
            event.preventDefault();
            const response = grecaptcha.getResponse();
            if (response) {
                form.submit();
            } else {
            }
        });
    };

</script>

<script>

    document.getElementById('action-signin').value = 'signIn';
    document.getElementById('action-register').value = 'register';
    //Validate regiter
    Validator({
        form: '#form-register',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#register-name', 'Please enter your name!'),

            Validator.isRequired('#register-email-2', 'Please enter your email!'),
            Validator.isEmail('#register-email-2', 'Please enter correct email!'),

            Validator.isRequired('#register-phone', 'Please enter your phone number!'),
            Validator.isNumber('#register-phone', 'Please enter correct phone number!'),
            Validator.isValidLength('#register-phone', 10, 'Phone number must be 10 digits!'),

            Validator.isRequired('#register-password-2', 'Please enter your password!'),
            Validator.minLength('#register-password-2', 6),

            Validator.isRequired('#register-confirm-password-2', 'Please re-enter your password!'),
            Validator.isConfirmed('#register-confirm-password-2', function () {
                return document.querySelector('#register-password-2').value;
            }, 'Re-entered password is incorrect!'),

            Validator.isRequired('#register-address', 'Please enter your address!'),

            Validator.isRequired('#register-policy-2', 'You must agree to the privacy policy!')
        ]
    });

    //Validate signin
    Validator({
        form: '#form-signin',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#singin-email-2', 'Please enter your email!'),
            Validator.isEmail('#singin-email-2', 'Please enter correct email!'),

            Validator.isRequired('#singin-password-2', 'Please enter your password!'),
            Validator.minLength('#singin-password-2', 6),
            Validator.isRequired('#recaptcha', 'You must be verify!')
        ]
    });
</script>

<%@ include file="/common/login/footer.jsp"%>