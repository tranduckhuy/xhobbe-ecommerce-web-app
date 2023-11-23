package com.xhobbe.utils;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.model.Product;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author ADMIN
 */
public class ProductUtils {

    public static Product getParamAndCreateProduct(HttpServletRequest request, String action, Product... products) throws IOException {

        String name = request.getParameter("name");
        int brand = UtilsValidType.getInteger(request.getParameter("brand"));
        String description = request.getParameter("description");
        int category = UtilsValidType.getInteger(request.getParameter("category"));
        double price = UtilsValidType.getDouble(request.getParameter("price"));
        int quantity = UtilsValidType.getInteger(request.getParameter("quantity"));
        String imageURL1 = request.getParameter("proImage1");
        String imageURL2 = request.getParameter("proImage2");

        if (ActionConstant.EDIT.equals(action)) {
            Product oldProduct = (products.length > 0) ? products[0] : new Product();

            if (imageURL1.isEmpty() && !oldProduct.getImageURL().isEmpty()) {
                imageURL1 = oldProduct.getImageURL().get(0);
            }

            if (imageURL2.isEmpty() && oldProduct.getImageURL().size() > 1) {
                imageURL2 = oldProduct.getImageURL().get(1);
            }
        }

        if (!name.isEmpty() && brand != -1 && !description.isEmpty() && category != -1 && price != -1
                && quantity != -1 && !imageURL1.isEmpty() && !imageURL2.isEmpty()) {
            Product product = new Product();
            product.setName(name);
            product.setBrandId(brand);
            product.setDescription(description);
            product.setCategoryId(category);
            product.setPrice(price);
            product.setStockQuantity(quantity);
            product.setImageURL(Arrays.asList(imageURL1, imageURL2));

            return product;
        }

        return null;
    }
}
