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
                                    <a href="#!">Account Manager</a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="./admin-account?action=list&role=${userEdit.role}">${userEdit.role}</a>
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
                                <div class="d-flex gap-3 mb-4 justify-content-center">
                                    <p class=""><strong>Email:</strong></p>
                                    <p type="text" class=""><strong class="text-success">${userEdit.email}</strong></p>
                                    <span class="form-message"></span>
                                </div>
                                <form method="post" id="form-edit-account">
                                    <div class="form-outline row form-group">
                                        <label class="col-form-label col-lg-3" for="name">User name</label>
                                        <div class="col-lg-9">
                                            <input type="text" id="name" name="name" class="form-control mb-2" value="${userEdit.name}"
                                                   placeholder="Ex: Jon Doe, Jon-Doe, Kiersten F. Latham, Pat O'Brien,..."/>
                                        </div>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-outline row form-group">
                                        <label class="col-form-label col-lg-3" for="phone">Phone</label>
                                        <div class="col-lg-9">
                                            <input type="tel" id="phone" name="phone" class="form-control mb-2" value="${userEdit.phone}" placeholder="Must be 10 digits. Ex: 0123456789"/>
                                        </div>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-outline row form-group">
                                        <label class="col-form-label col-lg-3" for="address">Address</label>
                                        <div class="col-lg-9">
                                            <input type="text" id="address" name="address" value="${userEdit.address}" class="form-control mb-2"/>
                                        </div>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-outline row form-group">
                                        <label class="col-form-label col-lg-3" for="role">Role</label>
                                        <div class="col-lg-9">
                                            <select id="select" name="role" class="form-select mb-2">
                                                <option value="" disabled selected>Choose role</option>
                                                <option value="1" <c:if test="${1 eq userEdit.roleId}">selected</c:if> >Admin</option>
                                                <option value="2" <c:if test="${2 eq userEdit.roleId}">selected</c:if> >Staff</option>
                                                <option value="3" <c:if test="${3 eq userEdit.roleId}">selected</c:if> >Customer</option>
                                                </select>
                                            </div>
                                            <span class="form-message"></span>
                                        </div>
                                        <button type="submit" class="btn btn-primary px-4">
                                            <span>Edit</span>
                                        </button>
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

    <!-- Validator JS File -->
    <script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>
<script>

    //Validate regiter
    Validator({
        form: '#form-edit-account',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#name', 'Please enter account name!'),

            Validator.isRequired('#select', 'Please choose account role!')
        ]
    });
</script>

<%@include file="/common/admin/footer.jsp" %>