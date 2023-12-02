<%-- 
    Document   : product-detail
    Created on : Nov 16, 2023, 1:30:41 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>


<main class="main">
    <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
        <div class="container d-flex align-items-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./home">Home</a></li>
                <li class="breadcrumb-item"><a href="./product?action=list&category=all">Shop</a></li>
                <li class="breadcrumb-item active" aria-current="page">Product Detail</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="page-content">
        <div class="container">
            <div class="product-details-top mb-2">
                <div class="row">
                    <div class="col-md-6">
                        <div class="product-gallery product-gallery-vertical">
                            <div class="row">
                                <figure class="product-main-image">
                                    <img id="product-zoom" src="<c:url value='${product.getImageURL().get(0)}'/>" data-zoom-image="<c:url value='${product.getImageURL().get(0)}'/>" alt="product image">

                                    <a href="#" id="btn-product-gallery" class="btn-product-gallery">
                                        <i class="icon-arrows"></i>
                                    </a>
                                </figure><!-- End .product-main-image -->

                                <div id="product-zoom-gallery" class="product-image-gallery">
                                    <a class="product-gallery-item active" href="#" data-image="<c:url value='${product.getImageURL().get(0)}'/>" data-zoom-image="<c:url value='${product.getImageURL().get(0)}'/>">
                                        <img src="<c:url value='${product.getImageURL().get(0)}'/>" alt="product side">
                                    </a>

                                    <a class="product-gallery-item" href="#" data-image="<c:url value='${product.getImageURL().get(1)}'/>" data-zoom-image="<c:url value='${product.getImageURL().get(1)}'/>">
                                        <img src="<c:url value='${product.getImageURL().get(1)}'/>" alt="product cross">
                                    </a>
                                </div><!-- End .product-image-gallery -->
                            </div><!-- End .row -->
                        </div><!-- End .product-gallery -->
                    </div><!-- End .col-md-6 -->

                    <div class="col-md-6">
                        <div class="product-details product-details-centered">
                            <h1 class="product-title">${product.name}</h1><!-- End .product-title -->

                            <div class="ratings-container">
                                <div class="ratings">
                                    <div class="ratings-val" style="width: 95%;"></div><!-- End .ratings-val -->
                                </div><!-- End .ratings -->
                            </div><!-- End .rating-container -->
                            <div class="product-price">
                                ${product.price}$
                            </div><!-- End .product-price -->

                            <div class="product-content">
                                <c:if test="${product.brand == 'Apple'}">
                                    <p><strong>Apple </strong>Inc (Apple) designs, manufactures, and markets smartphones, tablets, personal computers, and wearable devices. The company offers software applications and related services, accessories, and third-party digital content.</p>
                                </c:if>
                                <c:if test="${product.brand == 'Samsung'}">
                                    <p>The values that define <strong>Samsung's </strong> spirit</br>
                                        <strong>Samsung </strong> believes that living by strong values is the key to good business. That’s why these core values, along with a rigorous code of conduct, are at the heart of every decision the company makes.</p>
                                    </c:if>
                                    <c:if test="${product.brand eq 'Asus'}">
                                    <p><strong>Asus </strong> is passionate about technology and driven by innovation. We dream, we dare and we strive to create an effortless and joyful digital life for everyone.</p>
                                </c:if>
                                <c:if test="${product.brand eq 'Acer'}">
                                    <p><strong>Acer, </strong> we are committed to innovating in all aspects of our technology, management, and operations, with concrete actions to ensure we make the maximum positive impact on the social community and the environment.</p>
                                </c:if>
                                <c:if test="${product.brand eq 'Xiaomi'}">
                                    <p><strong>Xiaomi </strong>  is a consumer electronics and smart manufacturing company with smartphones and smart hardware connected by an IoT platform at its core.</p>
                                </c:if>
                                <c:if test="${product.brand eq 'MSI'}">
                                    <p><strong>MSI </strong>  is a world leader in gaming, content creation, business & productivity and AIoT solutions. Bolstered by its cutting-edge R&D capabilities and customer-driven innovation, MSI has a wide-ranging global presence spanning over 120 countries.</p>
                                </c:if>
                                <c:if test="${product.brand eq 'Dell'}">
                                    <p><strong>Dell </strong>  Inc., global company that designs, develops, and manufactures personal computers (PCs) We are among the world's leading technology companies helping to transform people's lives with extraordinary capabilities.</p>
                                </c:if>
                                <c:if test="${product.brand eq 'Lenovo'}">
                                    <p><strong>Lenovo </strong>   Group of China is the world's largest maker of personal computers. Lenovo is a global technology leader that designs, develops, and manufactures innovative products for a wide range of customers.</p>
                                </c:if>
                            </div><!-- End .product-content -->


                            <div class="details-filter-row details-row-size">
                                <label>Color:</label>

                                <div class="product-nav product-nav-dots">
                                    <a href="#" class="active" style="background: #cc9966;"><span class="sr-only">Color name</span></a>
                                    <a href="#" style="background: #333333;"><span class="sr-only">Color name</span></a>
                                </div><!-- End .product-nav -->
                            </div><!-- End .details-filter-row -->

                            <div class="product-details-action">
                                <form action="cart" method="post">
                                    <div class="details-action-col">
                                        <div class="product-details-quantity">
                                            <input type="number" name="quantity" id="quantity" class="form-control" value="1" min="1" max="${product.stockQuantity}" step="1" data-decimals="0" required>
                                        </div><!-- End .product-details-quantity -->
                                        <input type="hidden" name="id" value="${product.productId}">
                                        <input type="hidden" name="action" value="add">

                                        <c:if test="${product.stockQuantity > 0}">
                                            <button type="submit" class="btn-product btn-cart"><span>add to cart</span></button>
                                        </c:if>
                                        <c:if test="${product.stockQuantity == 0}">
                                            <p href="#!" class="btn-product mx-10 px-5 py-4" style="border: none; background-color: #4d565f;">
                                                <span class="text-light"><i class="fa-solid fa-circle-xmark"></i> Out of Stock</span>
                                            </p>
                                        </c:if>
                                    </div><!-- End .details-action-col -->
                                </form>
                                <a class="text-light-emphasis font-weight-bolder" href="#!" id="review-link"> ${product.stockQuantity} available products</a>
                            </div><!-- End .product-details-action -->

                            <div class="product-details-footer">
                                <div class="col-lg-7 d-flex justify-content-around">
                                    <div class="product-cat">
                                        <span>Category:</span>
                                        <a href="#!">${product.category}</a>
                                    </div><!-- End .product-cat -->
                                    <div class=" product-cat">
                                        <span>Brand:</span>
                                        <a href="#!">${product.brand}</a>
                                    </div><!-- End .product-cat -->
                                </div>
                                <div class="col-lg-5 social-icons social-icons-sm">
                                    <span class="social-label">Share:</span>
                                    <a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
                                    <a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
                                    <a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
                                    <a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
                                </div>
                            </div><!-- End .product-details-footer -->
                        </div><!-- End .product-details -->
                    </div><!-- End .col-md-6 -->
                </div><!-- End .row -->
            </div><!-- End .product-details-top -->

            <div class="product-details-tab">
                <ul class="nav nav-pills justify-content-center" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="product-desc-link" data-toggle="tab" href="#product-desc-tab" role="tab" aria-controls="product-desc-tab" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="product-shipping-link" data-toggle="tab" href="#product-shipping-tab" role="tab" aria-controls="product-shipping-tab" aria-selected="false">Shipping & Returns</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="product-review-link" data-toggle="tab" href="#product-review-tab" role="tab" aria-controls="product-review-tab" aria-selected="false">Reviews (2)</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="product-desc-tab" role="tabpanel" aria-labelledby="product-desc-link">
                        <div class="product-desc-content">
                            <h3>Product Information</h3>
                            <p>${product.description}</p>
                        </div><!-- End .product-desc-content -->
                    </div><!-- .End .tab-pane -->
                    <div class="tab-pane fade" id="product-shipping-tab" role="tabpanel" aria-labelledby="product-shipping-link">
                        <div class="product-desc-content">
                            <h3>Delivery & returns</h3>
                            <p>We deliver to over 100 countries around the world. For full details of the delivery options we offer, please view our <a href="#">Delivery information</a><br>
                                We hope you’ll love every purchase, but if you ever need to return an item you can do so within a month of receipt. For full details of how to make a return, please view our <a href="#">Returns information</a></p>
                        </div><!-- End .product-desc-content -->
                    </div><!-- .End .tab-pane -->
                    <div class="tab-pane fade" id="product-review-tab" role="tabpanel" aria-labelledby="product-review-link">
                        <div class="reviews">
                            <h3>Reviews (2)</h3>
                            <div class="review">
                                <div class="row no-gutters">
                                    <div class="col-auto">
                                        <h4><a href="#">Samanta J.</a></h4>
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 80%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                        </div><!-- End .rating-container -->
                                        <span class="review-date">6 days ago</span>
                                    </div><!-- End .col -->
                                    <div class="col">
                                        <h4>Good, perfect size</h4>

                                        <div class="review-content">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus cum dolores assumenda asperiores facilis porro reprehenderit animi culpa atque blanditiis commodi perspiciatis doloremque, possimus, explicabo, autem fugit beatae quae voluptas!</p>
                                        </div><!-- End .review-content -->

                                        <div class="review-action">
                                            <a href="#"><i class="icon-thumbs-up"></i>Helpful (2)</a>
                                            <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                        </div><!-- End .review-action -->
                                    </div><!-- End .col-auto -->
                                </div><!-- End .row -->
                            </div><!-- End .review -->

                            <div class="review">
                                <div class="row no-gutters">
                                    <div class="col-auto">
                                        <h4><a href="#">John Doe</a></h4>
                                        <div class="ratings-container">
                                            <div class="ratings">
                                                <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
                                            </div><!-- End .ratings -->
                                        </div><!-- End .rating-container -->
                                        <span class="review-date">5 days ago</span>
                                    </div><!-- End .col -->
                                    <div class="col">
                                        <h4>Very good</h4>

                                        <div class="review-content">
                                            <p>Sed, molestias, tempore? Ex dolor esse iure hic veniam laborum blanditiis laudantium iste amet. Cum non voluptate eos enim, ab cumque nam, modi, quas iure illum repellendus, blanditiis perspiciatis beatae!</p>
                                        </div><!-- End .review-content -->

                                        <div class="review-action">
                                            <a href="#"><i class="icon-thumbs-up"></i>Helpful (0)</a>
                                            <a href="#"><i class="icon-thumbs-down"></i>Unhelpful (0)</a>
                                        </div><!-- End .review-action -->
                                    </div><!-- End .col-auto -->
                                </div><!-- End .row -->
                            </div><!-- End .review -->
                        </div><!-- End .reviews -->
                    </div><!-- .End .tab-pane -->
                </div><!-- End .tab-content -->
            </div><!-- End .product-details-tab -->
        </div><!-- End .container -->
    </div><!-- End .page-content -->
</main><!-- End .main -->


<%@ include file="/common/web/footer.jsp"%>
