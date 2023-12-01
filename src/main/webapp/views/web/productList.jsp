<%--
    Document   : category
    Created on : Nov 16, 2023, 1:26:42 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/common/web/header.jsp"%>


<main class="main">
    <div class="page-header text-center" style="background-image: url('<c:url value='/template/web/assets/images/page-header-bg.jpg'/>')">
        <div class="container">
            <h1 class="page-title" id="page-title"><span>Shop</span></h1>
        </div><!-- End .container -->
    </div><!-- End .page-header -->
    <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
        <div class="container">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./home">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Shop</li>
            </ol>
        </div><!-- End .container -->
    </nav><!-- End .breadcrumb-nav -->

    <div class="page-content" style="min-height: 568px;">
        <div class="container">
            <div class="toolbox">
                <div class="toolbox-left">
                    <a href="#" class="sidebar-toggler"><i class="icon-bars"></i>Filters</a>
                </div><!-- End .toolbox-left -->

                <div class="toolbox-center">
                    <div class="text-gray">
                        Showing
                        <span id="currentProducts" class="font-weight-bolder"></span>
                        of
                        <span id="totalProduct" class="font-weight-bolder">
                            ${total != null ? total : 0}
                        </span>
                        Products
                    </div><!-- End .toolbox-info -->
                </div><!-- End .toolbox-center -->

                <div class="toolbox-right">
                    <div class="toolbox-sort">
                        <label for="sortby">Sort by:</label>
                        <div class="select-custom">
                            <select name="sortby" id="sortby" class="form-control">
                                <option value="price-down" selected="selected">Price down </option>
                                <option value="price-up" selected="selected">Price up</option>
                            </select>
                        </div>
                    </div><!-- End .toolbox-sort -->
                </div><!-- End .toolbox-right -->
            </div><!-- End .toolbox -->

            <div class="products">
                <div class="row justify-content-center" id="productContainer">

                    <!-- comment -->
                    <c:forEach var="item" items="${list}">     
                        <div class="col-10 col-sm-6 col-md-4 col-lg-4 col-xl-3">

                            <div class="product">
                                <figure class="product-media ${item.category != 'Laptop' ? 'px-5' : 'pt-8'}">
                                    <c:if test="${item.stockQuantity > 0}">
                                        <span class="product-label label-new">New</span>
                                    </c:if>
                                    <c:if test="${item.stockQuantity == 0}">
                                        <span class="product-label label-out">Out of stock</span>
                                    </c:if>

                                    <a href="./product?action=detail&id=${item.productId}">
                                        <img src="${item.getImageURL().get(0)}" alt="Product image" class="product-image" ${item.category != 'Laptop' ? 'style="height: 260px"' : 'style="height: 180px"'} >
                                    </a>

                                    <div class="product-action-vertical">
                                        <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>xHobbe</span></a>
                                    </div><!-- End .product-action -->

                                    <form action="cart" method="post">
                                        <div class="product-action d-flex">
                                            <input type="hidden" name="id" value="${item.productId}">
                                            <input type="hidden" name="action" value="add">
                                            <input type="hidden" name="quantity" value="1">

                                            <c:if test="${item.stockQuantity > 0}">
                                                <button type="submit" class="btn-product btn-cart mx-10" style="border: none; background-color: #f6f7fa">
                                                    <span>add to cart</span>
                                                </button>
                                            </c:if>
                                        </div><!-- End .product-action -->
                                    </form>
                                </figure><!-- End .product-media -->

                                <div class="product-body">
                                    <h3 class="product-title"><a href="./product?action=detail&id=${item.productId}" target="_blank">${item.getName()}</a></h3><!-- End .product-title -->
                                    <div class="product-price">
                                        ${item.getPrice()}$
                                    </div><!-- End .product-price -->
                                    <div class="ratings-container">
                                        <div class="ratings">
                                            <div class="ratings-val" style="width: 95%;"></div><!-- End .ratings-val -->
                                        </div><!-- End .ratings -->
                                        <span class=" text-light-emphasis font-weight-bolder">( ${item.stockQuantity} products available )</span>
                                    </div><!-- End .rating-container -->

                                    <div class="product-nav product-nav-dots">
                                        <a href="#" style="background: #cc9966;"><span class="sr-only">Color name</span></a>
                                        <a href="#" class="active" style="background: #ebebeb;"><span class="sr-only">Color name</span></a>
                                    </div><!-- End .product-nav -->
                                </div><!-- End .product-body -->
                            </div><!-- End .product -->

                        </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->


                    </c:forEach>     
                    <!-- comment -->

                </div><!-- End .products -->

                <div class="col-lg-12 load-more-container text-center d-flex  justify-content-center">
                    <button id="loadMoreBtn" class="btn btn-outline-darker btn-load-more">More Products <i class="icon-refresh"></i></button >
                </div><!-- End .load-more-container -->

                <div class="sidebar-filter-overlay"></div><!-- End .sidebar-filter-overlay -->
                <aside class="sidebar-shop sidebar-filter">
                    <div class="sidebar-filter-wrapper">
                        <div class="widget widget-clean">
                            <label><i class="icon-close"></i>Filters</label>
                            <a href="#" class="sidebar-filter-clear">Clean All</a>
                        </div><!-- End .widget -->
                        <div class="widget widget-collapsible">
                            <h3 class="widget-title">
                                <a data-toggle="collapse" href="#widget-3" role="button" aria-expanded="true" aria-controls="widget-3">
                                    Colour
                                </a>
                            </h3><!-- End .widget-title -->

                            <div class="collapse show" id="widget-3">
                                <div class="widget-body">
                                    <div class="filter-colors">
                                        <a href="#" style="background: #b87145;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #f0c04a;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #333333;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" class="selected" style="background: #cc3333;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #3399cc;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #669933;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #f2719c;"><span class="sr-only">Color Name</span></a>
                                        <a href="#" style="background: #ebebeb;"><span class="sr-only">Color Name</span></a>
                                    </div><!-- End .filter-colors -->
                                </div><!-- End .widget-body -->
                            </div><!-- End .collapse -->
                        </div><!-- End .widget -->

                        <div class="widget widget-collapsible">
                            <h3 class="widget-title">
                                <a data-toggle="collapse" href="#widget-4" role="button" aria-expanded="true" aria-controls="widget-4">
                                    Brand
                                </a>
                            </h3><!-- End .widget-title -->

                            <div class="collapse show" id="widget-4">
                                <div class="widget-body">
                                    <div class="filter-items">
                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Apple" name="brand" id="brand-1">
                                                <label class="custom-control-label" for="brand-1">Apple</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Samsung" name="brand" id="brand-2">
                                                <label class="custom-control-label" for="brand-2">Samsung</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Xiaomi" name="brand" id="brand-3">
                                                <label class="custom-control-label" for="brand-3">Tommy Xiaomi</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Asus" name="brand" id="brand-4">
                                                <label class="custom-control-label" for="brand-4">Asus</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Acer" name="brand" id="brand-5">
                                                <label class="custom-control-label" for="brand-5">Acer</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Lenovo" name="brand" id="brand-6">
                                                <label class="custom-control-label" for="brand-6">Lenovo</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" value="Dell" name="brand" id="brand-7">
                                                <label class="custom-control-label" for="brand-7">Dell</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                        <div class="filter-item">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" class="custom-control-input" name="brand" value="MSI" id="brand-8">
                                                <label class="custom-control-label" for="brand-8">MSI</label>
                                            </div><!-- End .custom-radio -->
                                        </div><!-- End .filter-item -->

                                    </div><!-- End .filter-items -->
                                </div><!-- End .widget-body -->
            </div><!-- End .collapse -->
                        </div><!-- End .widget -->

            </div><!-- End .sidebar-filter-wrapper -->
                </aside><!-- End .sidebar-filter -->             </div><!-- End .container -->
        </div><!-- End .page-content -->
    </div><!-- End .page-content -->
            </main><!-- End .main -->


<script>

    // Get the full URL
            let url = window.location.href;
            // Use URLSearchParams to extract parameters
            let urlParams = new URLSearchParams(url);
            // Get the value of the 'category' parameter     
             let categoryValue = urlParams.get('category');
            // set title
            if (categoryValue !== 'all') {         console.log($('#page-title'));
            $('#page-title').html('List of ' + categoryValue + 's');
            } else {
    $('#page-title').html('List all Devices');
            }
            $(document).ready(function () {

            let currentTotal = $('.product').length;
            $("#currentProducts").html(currentTotal);
    var total = ${total};
            console.log("Total: " + total);
            console.log("CurTotal: " + currentTotal);
    var loadMoreBtn = $("#loadMoreBtn");
            if (currentTotal === total) {
    loadMoreBtn.hide();
            } else {
    loadMoreBtn.show();
    }
            // Attach a click event to the "Load More" button
                    loadMoreBtn.click(function () {
                            // Make an AJAX request to the servlet with parameters
                    let currentTotal = $('.product').length;
                    $("#currentProducts").html(currentTotal);
    $.ajax({
                    url: "product?action=loadMore",
                    data: {
                    currentTotal: currentTotal,
                    category: categoryValue
            },
                    cache: false,
            type: "get",
            success: function (data) {
                    // Update the product container with the new products
                    let productContainer = $("#productContainer");
                            $.each(data, function (index, product) {
            // Append moreProducts to productContainer
            let productCart = "<div class='col-sm-10 col-md-4 col-lg-4 col-xl-3'>" +
                    "<div class='product'>" +
                    "<figure class='product-media ";
                    if (product.category !== 'Laptop') {
                        productCart += "px-5 '>";
                    } else {
                        productCart += "pt-8 '> ";
                    }
                    if (product.stockQuantity > 0) {
                        productCart += "<span class='product-label label-new'>New</span>";
                    } else if (product.stockQuantity === 0) {
                        productCart += "<span class='product-label label-out'>Out of stock</span>";
                    }
                    productCart += "<a href='./product?action=detail&id=" + product.productId + "' target='_blank'>" +
                    "<img src='" + product.imageURL[0] + "' alt='Product image' class='product-image' ";
            
                    if (product.category !== 'Laptop') {
                       productCart += "style='height: 260px'> ";
                    } else {
                        productCart += "style='height: 180px'> "; 
                    }
                            
                    productCart += "<div class='product-action-vertical'>" +
                    "<a href='#' class='btn-product-icon btn-wishlist btn-expandable'><span>xHobbe</span></a>" +
                    "</div><!-- End .product-action -->" +
                    "<form action='cart' method='post'>" +
                    "<div class='product-action d-flex'>" +
                    "<input type='hidden' name='id' value='" + product.productId + "'>" +
                    "<input type='hidden' name='action' value='add'>" +
                    "<input type='hidden' name='quantity' value='1'> ";
                    if (product.stockQuantity > 0) {
                        productCart += "<button type='submit' class='btn-product btn-cart mx-10' style='border: none; background-color: #f6f7fa'>";
                        productCart += "<span>add to cart</span></button>";
                    }
                    productCart += "</div>" +
                    "</form>" +
                    "</figure><!-- End .product-media -->" +

                                "<div class='product-body'>" +
                                    "<h3 class='product-title'><a href='./product?action=detail&id=" + product.productId + "' target='_blank'>" + product.name + "</a></h3>" +
                                    "<div class='product-price'>" +
                                        product.price + "$" +
                                    "</div>" +
                                    "<div class='ratings-container'>" +
                                        "<div class='ratings'>" +
                                            "<div class='ratings-val' style='width: 95%;'></div>" +
                                        "</div>" +
                                        "<span class=' text-light-emphasis'>(" + product.stockQuantity + " products available )</span>" +
                                    "</div>" +
                                    "<div class='product-nav product-nav-dots'>"+
                                        "<a href='#' style='background: #cc9966;'><span class='sr-only'>Color name</span></a>"+
                                        "<a href='#' class='active' style='background: #ebebeb;'><span class='sr-only'>Color name</span></a>"+
                                    "</div>"+
                                "</div>"+
                            "</div>"+
                        "</div>"

                        productContainer.append(productCart);
                        currentTotal = $('.product').length;
                        $("#currentProducts").html(currentTotal);
                        if (currentTotal === total) {
                            loadMoreBtn.hide();
                        } else {
                            loadMoreBtn.show();
                        }
                    });
                },
            error: function (xhr) {
                // Handle errors
                console.error("Error loading more products");
            }
            });
        });
    });

</script>

<script src="<c:url value='/template/web/assets/js/product/product.js'/>"></script>

<%@ include file="/common/web/footer.jsp"%>