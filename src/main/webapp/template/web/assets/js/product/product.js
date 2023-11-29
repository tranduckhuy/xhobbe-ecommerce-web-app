

$('.custom-control-input').on('click', function () {

    let url = window.location.href;
    let urlParams = new URLSearchParams(url);
    let categoryValue = urlParams.get('category');

    let selectedBrand = $('input[name="brand"]:checked').val();

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
                        "<div class='product-nav product-nav-dots'>" +
                        "<a href='#' style='background: #cc9966;'><span class='sr-only'>Color name</span></a>" +
                        "<a href='#' class='active' style='background: #ebebeb;'><span class='sr-only'>Color name</span></a>" +
                        "</div>" +
                        "</div>" +
                        "</div>" +
                        "</div>";

                productContainer.append(productCart);
            });
            let currentTotal = $('.product').length;
            console.log(currentTotal);
            $("#currentProducts").html(currentTotal);
            $("#totalProduct").html(currentTotal);
        },
        error: function (xhr) {
            // Handle errors
            console.error("Error loading more products");
        }
    });
});