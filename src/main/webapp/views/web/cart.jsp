<%-- 
    Document   : cart
    Created on : Nov 16, 2023, 11:57:27 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>

<main class="main">
    <div class="page-header text-center" style="background-image: url('<c:url value='/template/web/assets/images/page-header-bg.jpg'/>')">
        <div class="container">
            <h1 class="page-title">Shopping Cart</h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <nav aria-label="breadcrumb" class="breadcrumb-nav">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./home">Home</a></li>
                <li class="breadcrumb-item"><a href="./product?category=all">Shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="page-content">
        <div class="cart">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <table class="table table-cart table-mobile">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" class="product-select-all" id="product-select-all" style="width: 100%;"></th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>

                            <tbody>
                                <c:forEach var="cart" items="${list}">
                                    <tr>
                                        <td style="width: 50px">
                                            <input type="checkbox" class="product-select" id="product-select${cart.cartId}" style="width: 100%;" value="${cart.cartId}">
                                        </td>
                                        <td class="product-col">
                                            <div class="product">
                                                <figure class="product-media">
                                                    <a href="./product?action=detail&id=${cart.productId}">
                                                        <img src="${cart.imageURL}" alt="Product image">
                                                    </a>
                                                </figure>

                                                <h3 class="product-title">
                                                    <a href="./product?action=detail&id=${cart.productId}" target="_blank">${cart.productName}</a>
                                                </h3><!-- End .product-title -->
                                            </div><!-- End .product -->
                                        </td>
                                        <td class="price-col">${cart.price}$</td>
                                        <td class="quantity-col">
                                            <div class="cart-product-quantity">
                                                <input type="number" class="form-control" value="${cart.quantity}" min="1" max="10" step="1" data-decimals="0" required>
                                            </div><!-- End .cart-product-quantity -->
                                        </td>
                                        <td class="total-col">${cart.total}$</td>
                                        <td class="remove-col"><a href="javascript:void(0);" onclick="popupDeleteCart('${cart.cartId}', 'cart')" class="btn-remove"><i class="icon-close"></i></a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table><!-- End .table table-wishlist -->

                        <div class="cart-bottom">
                            <div class="cart-discount">
                                <form action="#">
                                    <div class="input-group">
                                        <input type="text" class="form-control" required placeholder="coupon code">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-primary-2" type="submit"><i class="icon-long-arrow-right"></i></button>
                                        </div><!-- .End .input-group-append -->
                                    </div><!-- End .input-group -->
                                </form>
                            </div><!-- End .cart-discount -->

                            <a href="#!" class="btn btn-outline-dark-2"><span>UPDATE CART</span><i class="icon-refresh"></i></a>
                        </div><!-- End .cart-bottom -->
                    </div><!-- End .col-lg-9 -->
                    <aside class="col-lg-3">
                        <div class="summary summary-cart">
                            <h3 class="summary-title">Cart Total</h3><!-- End .summary-title -->
                            <table class="table table-summary">
                                <tbody>
                                    <tr class="summary-subtotal">
                                        <td>Subtotal:</td>
                                        <td><span id="sub-total-price">0.00</span>$</td>
                                    </tr><!-- End .summary-subtotal -->
                                    <tr class="summary-shipping">
                                        <td>Shipping:</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr class="summary-shipping-row">
                                        <td>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="free-shipping" name="shipping" class="custom-control-input" value="0" checked>
                                                <label class="custom-control-label" for="free-shipping">Free Shipping</label>
                                            </div><!-- End .custom-control -->
                                        </td>
                                        <td>0.00$</td>
                                    </tr><!-- End .summary-shipping-row -->

                                    <tr class="summary-shipping-row">
                                        <td>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="standart-shipping" name="shipping" class="custom-control-input" value="10.00">
                                                <label class="custom-control-label" for="standart-shipping">Standart:</label>
                                            </div><!-- End .custom-control -->
                                        </td>
                                        <td>10.00$</td>
                                    </tr><!-- End .summary-shipping-row -->

                                    <tr class="summary-shipping-row">
                                        <td>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="express-shipping" name="shipping" class="custom-control-input" value="20.00">
                                                <label class="custom-control-label" for="express-shipping">Express:</label>
                                            </div><!-- End .custom-control -->
                                        </td>
                                        <td>20.00$</td>
                                    </tr><!-- End .summary-shipping-row -->
                                    <tr class="summary-total">
                                        <td>Total:</td>
                                        <td><span id="total-price">0.00</span>$</td>
                                    </tr><!-- End .summary-total -->
                                </tbody>
                            </table><!-- End .table table-summary -->

                            <div class="summary-shipping-estimate">
                                <div class="form-group mb-2">
                                    <h6>Your phone</h6>
                                    <input type="tel" class="form-control" name="phone"  id="phone" required placeholder="Phone Number" 
                                           style="border-color: #ddd; background-color: #fff" value="${user.phone}">
                                    <span class="form-message" style="color: red"></span>
                                </div>
                                <div class="form-group">
                                    <h6>Delivery address</h6>
                                    <input type="text" class="form-control" name="address"  id="address" required placeholder="Address" 
                                           style="border-color: #ddd; background-color: #fff" value="${user.address}">
                                    <span class="form-message" style="color: red"></span>
                                </div>
                            </div><!-- End .summary-shipping-estimate -->
                            <button onclick="orderProducts()" class="btn btn-outline-primary-2 btn-order btn-block">ORDER</button>
                        </div><!-- End .summary -->
                        <a href="./product?action=list&category=all" class="btn btn-outline-dark-2 btn-block mb-3"><span>CONTINUE SHOPPING</span><i class="icon-refresh"></i></a>
                    </aside><!-- End .col-lg-3 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
        </div><!-- End .cart -->
    </div><!-- End .page-content -->
</main><!-- End .main -->

<script src="<c:url value='/template/web/assets/js/validator/validator.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/popup/popupDelete.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/jquery.min.js'/>"></script>
<script src="<c:url value='/template/admin/assets/js/sweetalert.min.js'/>"></script>

<script>
                                    // Wait for the DOM to be ready
                                    document.addEventListener('DOMContentLoaded', function () {
                                        // Function to update all product checkboxes based on the 'select all' checkbox
                                        function updateProductSelection() {
                                            var selectAllCheckbox = document.getElementById('product-select-all');
                                            var productCheckboxes = document.querySelectorAll('.product-select');
                                            productCheckboxes.forEach(function (checkbox) {
                                                checkbox.checked = selectAllCheckbox.checked;
                                            });
                                        }
                                        // Attach the updateProductSelection function to the change event of the 'select all' checkbox
                                        document.getElementById('product-select-all').addEventListener('change', updateProductSelection);
                                    });
</script>

<script>

    Validator({
        form: '#order-form',
        errorSelector: '.form-message',
        formGroupSelector: '.form-group',
        rules: [
            Validator.isRequired('#address', 'Please enter your address!'),
            Validator.minLength('#address', 18, 'Please enter your address correctly and clearly to receive the items!'),
            Validator.isRequired('#phone', 'Please enter your phone number!'),
            Validator.isNumber('#phone', 'Please enter correct phone number!')
        ]
    });
</script>

<script src="<c:url value='/template/web/assets/js/cart/cart.js'/>"></script>

<%@ include file="/common/web/footer.jsp"%>