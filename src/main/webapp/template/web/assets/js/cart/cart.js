document.addEventListener('DOMContentLoaded', function () {
    // Function to update total price based on selected products, quantities, and shipping
    function updateTotal() {
        var productRows = document.querySelectorAll('.table-cart tbody tr');
        var totalCartPrice = 0;
        var totalPrice = 0;

        // Calculate the subtotal based on selected products and quantities
        productRows.forEach(function (row) {
            var checkbox = row.querySelector('.product-select');
            var price = parseFloat(row.querySelector('.price-col').innerText.replace('$', ''));
            var quantity = parseInt(row.querySelector('.cart-product-quantity input').value);
            var totalProductPrice = price * quantity;

            // Update the total price for each product row
            row.querySelector('.total-col').innerText = '$' + totalProductPrice.toFixed(2);

            if (checkbox.checked) {
                totalCartPrice += totalProductPrice;
            }
        });

        // Calculate the shipping cost based on the selected shipping option
        var shippingCost = 0;
        var selectedShippingOption = document.querySelector('input[name="shipping"]:checked');
        
        // Check if subtotal is greater than zero before adding shipping cost
        if (totalCartPrice > 0 && selectedShippingOption) {
            shippingCost = parseFloat(selectedShippingOption.value);
        }

        // Update the total price in the summary by adding the shipping cost
        totalPrice = totalCartPrice + shippingCost;
        document.querySelector('.summary-total td:last-child').innerText = '$' + totalPrice.toFixed(2);

        // Update the total cart price in the summary only if a product is selected
        if (totalCartPrice > 0) {
            document.querySelector('.summary-subtotal td:last-child').innerText = '$' + totalCartPrice.toFixed(2);
        } else {
            document.querySelector('.summary-subtotal td:last-child').innerText = '$0.00';
        }
    }

    // Attach the updateTotal function to the change event of product checkboxes, quantities, and shipping options
    var productCheckboxes = document.querySelectorAll('.product-select');
    var quantityInputs = document.querySelectorAll('.cart-product-quantity input');
    var shippingOptions = document.querySelectorAll('input[name="shipping"]');

    productCheckboxes.forEach(function (checkbox) {
        checkbox.addEventListener('change', updateTotal);
    });

    quantityInputs.forEach(function (input) {
        input.addEventListener('input', updateTotal);
    });

    shippingOptions.forEach(function (option) {
        option.addEventListener('change', updateTotal);
    });

    // Function to handle 'select all' checkbox
    function updateProductSelection() {
        var selectAllCheckbox = document.getElementById('product-select-all');
        var productCheckboxes = document.querySelectorAll('.product-select');
        productCheckboxes.forEach(function (checkbox) {
            checkbox.checked = selectAllCheckbox.checked;
        });

        updateTotal();
    }

    // Attach the updateProductSelection function to the change event of the 'select all' checkbox
    document.getElementById('product-select-all').addEventListener('change', updateProductSelection);
    
    // Initial update when the page loads
    updateTotal();
});
