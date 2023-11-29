

$('.custom-control-input').on('click', function () {

    let url = window.location.href;
    let urlParams = new URLSearchParams(url);
    let categoryValue = urlParams.get('category');

    var selectedBrand = $('input[name="brand"]:checked').val();

    let productContainer = $("#productContainer");
    console.log(productContainer);
    productContainer.html("");
    console.log(productContainer);

    $.ajax({
        type: 'GET',
        url: './product?action=search',
        data: {
            brand: selectedBrand,
            category: categoryValue
        },
        success: function (data) {
            // Append moreProducts to productContainer
            $.each(data, function (index, product) {
                // Append moreProducts to productContainer
                let productCart = "<div class='col-sm-10 col-md-4 col-lg-4 col-xl-3'>" +
                        "<div class='product'>" +
                        "<figure class='product-media'>" +
                        "<span class='product-label label-new'>New</span>" +
                        "<a href='./product?action=detail&id=" + product.productId + "' target='_blank'>" +
                        "<img src='" + product.imageURL[0] + "' alt='Product image' class='product-image' style='height: 260px'>" +
                        "</a>" +
                        "<div class='product-action-vertical'>" +
                        "<a href='#' class='btn-product-icon btn-wishlist btn-expandable'><span>xHobbe</span></a>" +
                        "</div><!-- End .product-action -->" +
                        "<form action='cart' method='post'>" +
                        "<div class='product-action d-flex'>" +
                        "<input type='hidden' name='id' value='" + product.productId + "'>" +
                        "<input type='hidden' name='action' value='add'>" +
                        "<input type='hidden' name='quantity' value='1'>" +
                        "<button type='submit' class='btn-product btn-cart mx-10' style='border: none; background-color: #f6f7fa'><span>add to cart</span></button>" +
                        "</div>" +
                        "</form>" +
                        "</figure><!-- End .product-media -->" +
                        "<div class='product-body'>" +
                        "<h3 class='product-title'><a href='./product?action=detail&id=" + product.productId + "' target='_blank'>" + product.name + "</a></h3>" +
                        "<div class='product-price'>" +
                        product.price + "$" +
                        "</div>" +
                        "<div class='ratings-container'>" +
                        "<div class='ratings'>" +
                        "<div class='ratings-val' style='width: 0%;'></div>" +
                        "</div>" +
                        "<span class='ratings-text'>( 0 Reviews )</span>" +
                        "</div>" +
                        "<div class='product-nav product-nav-dots'>" +
                        "<a href='#' style='background: #cc9966;'><span class='sr-only'>Color name</span></a>" +
                        "<a href='#' class='active' style='background: #ebebeb;'><span class='sr-only'>Color name</span></a>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";
                
                console.log(productCart);
                productContainer.append(productCart);
                let currentTotal = $('.product').length;
                $("#currentProducts").html(currentTotal);
            });
        },
        error: function (xhr) {
            // Handle errors
            console.error("Error loading more products");
        }
    });
});