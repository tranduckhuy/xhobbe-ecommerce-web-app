<%-- 
    Document   : login
    Created on : Nov 16, 2023, 4:46:13 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<link rel="stylesheet" href="<c:url value='/template/web/assets/css/validate/validate.css'/>">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="icon" type="image/png" sizes="64x64" href="<c:url value='/template/web/assets/images/icons/xhobbe-logo.png'/>">
        <!-- ========== All CSS files linkup ========= -->
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/bootstrap.min.css'/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/lineicons.css'/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/materialdesignicons.min.css'/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/fullcalendar.css'/>" />
        <link rel="stylesheet" href="<c:url value='/template/admin/assets/css/main.css'/>" />
    </head>
    <body>
        <!-- ======== main-wrapper start =========== -->
        <main class="container">
            <!-- ========== signin-section start ========== -->
            <section class="signin-section">
                <div class="container-fluid">
                    <!-- ========== title-wrapper start ========== -->
                    <div class="title-wrapper pt-30">
                        <div class="row align-items-center">
                            <div class="col-md-6">
                                <div class="title">
                                    <h2>ADMIN</h2>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-md-6">
                                <div class="breadcrumb-wrapper">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item active" aria-current="page">
                                                Sign in
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

                    <div class="row g-0 auth-row">
                        <div class="col-lg-6">
                            <div class="auth-cover-wrapper bg-primary-100">
                                <div class="auth-cover">
                                    <div class="title text-center">
                                        <h1 class="text-primary mb-10">Welcome Back</h1>
                                        <p class="text-medium">
                                            Sign in to your Admin account to continue
                                        </p>
                                    </div>
                                    <div class="cover-image">
                                        <img src="<c:url value='/template/admin/assets/images/auth/signin-image.svg'/>" alt="" />
                                    </div>
                                    <div class="shape-image">
                                        <img src="<c:url value='/template/admin/assets/images/auth/shape.svg'/>" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->
                        <div class="col-lg-6">
                            <div class="signin-wrapper">
                                <div class="form-wrapper">
                                    <div class="text-center">
                                        <h3 class="mb-15" style="color: #06208b">Sign In Admin</h3>
                                    </div>
                                    <c:if test="${message != null && message eq 'fail'}">
                                        <div class="alert alert-danger text-center my-3" role="alert" style="height: 35px; margin: 0; padding: 4px">
                                           Email or password is incorrect. Please try again!
                                        </div>
                                    </c:if>
                                    <c:if test="${message != null && message eq 'notLogin'}" >
                                        <div class="alert alert-danger text-center my-3" role="alert" style="height: 35px; margin: 0; padding: 4px">
                                            Please sign in to access this feature.
                                        </div>
                                    </c:if>
                                    <c:if test="${message != null && message eq 'notPermission'}">
                                        <div class="alert text-center align-items-center my-3" role="alert"
                                            style="color: white; background-color: red; height: 35px; margin: 0; padding: 4px" >
                                            Permission denied: Insufficient permissions.
                                        </div>
                                    </c:if>
                                    <form id="form-login-account" method="post">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="input-style-1 form-group">
                                                    <label>Email</label>
                                                    <input id="email" type="email" name="singin-email" placeholder="Email" />
                                                    <span class="form-message"></span>
                                                </div>
                                            </div>
                                            <!-- end col -->
                                            <div class="col-12">
                                                <div class="input-style-1 form-group">
                                                    <label>Password</label>
                                                    <input id="password" type="password" name="singin-password" placeholder="Password" />
                                                    <span class="form-message"></span>
                                                </div>
                                            </div>
                                            <!-- end col -->
                                            <div class="col-12">
                                                <div class="button-group d-flex justify-content-center flex-wrap">
                                                    <button type="submit" class="main-btn primary-btn btn-hover w-100 text-center">
                                                        Sign In
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
            </section>
            <!-- ========== signin-section end ========== -->
        </main>
        <!-- ======== main-wrapper end =========== -->
    </body>
    <!-- Validator JS File -->
    <script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>
    <script>

        //Validate regiter
        Validator({
            form: '#form-login-account',
            errorSelector: '.form-message',
            formGroupSelector: '.form-group',
            rules: [
                Validator.isRequired('#email', 'Please enter account email!'),
                Validator.isEmail('#email', 'Please enter correct email!'),

                Validator.isRequired('#password', 'Please enter account password!'),
                Validator.minLength('#password', 6)
            ]
        });
    </script>
</html>
