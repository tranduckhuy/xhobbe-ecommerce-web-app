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
                            <a class="nav-link active" id="register-tab-2" data-toggle="tab" href="#register-2" role="tab" aria-controls="register-2" aria-selected="true">Change Password</a>
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
                                    Error: Unable to complete the requested action. </br> (Old password is not correct!)
                                </div>
                            </c:if>
                            <form action="#" method="post" id="form-new-passoword">
                                 <input type="hidden" name="action" value="newPassword">
                                <div class="form-group d-flex mb-0">
                                    <label for="show-email" class="font-italic font-weight-bold">Your email address: </label>
                                    <p class="ml-5 font-italic font-weight-bold text-success">${sessionScope.email}</p>
                                    <span class="form-message"></span>
                                </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="new-password" class="font-italic font-weight-bolder">New Password *</label>
                                        <input type="password" class="form-control" id="new-password" name="new-password">
                                        <span class="form-message"></span>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="confirm-password" class="font-italic font-weight-bolder">Confirm New Password *</label>
                                        <input type="password" class="form-control" id="confirm-password" name="confirm-password">
                                        <span class="form-message"></span>
                                    </div><!-- End .form-group -->    

                                <div class="d-flex justify-content-center mt-3">
                                    <button type="submit" class="btn btn-outline-primary-2">
                                        <span>CHANGE YOUR PASSWORD</span>
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
        form: '#form-new-passoword',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            
            Validator.isRequired('#new-password', 'Please enter your new password!'),
            Validator.minLength('#new-password', 6),

            Validator.isRequired('#confirm-password', 'Please re-enter your password!'),
            Validator.isConfirmed('#confirm-password', function () {
                return document.querySelector('#new-password').value;
            }, 'Re-entered password is incorrect!')
        ]
    });
</script>

<%@ include file="/common/login/footer.jsp"%>