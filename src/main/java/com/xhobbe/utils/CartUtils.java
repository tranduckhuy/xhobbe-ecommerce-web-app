package com.xhobbe.utils;

import com.xhobbe.model.Cart;

/**
 *
 * @author ADMIN
 */
public class CartUtils {

    public static Cart getCart(long userId, long productId, int quantity) {
        Cart cart = new Cart();
        cart.setProductId(productId);
        cart.setUserId(userId);
        cart.setQuantity(quantity);
        return cart;
    }

    public static long[] getListCartIds(String[] cartIds) {
        if (cartIds == null || cartIds.length == 0) {
            return new long[0];
        }

        int length = cartIds.length;
        long[] cartIdsLong = new long[length];

        for (int i = 0; i < length; i++) {
            long currentLong = UtilsValidType.getLong(cartIds[i]);
            if (currentLong == -1) {
                return new long[0];
            }
            cartIdsLong[i] = currentLong;
        }

        return cartIdsLong;
    }
}
