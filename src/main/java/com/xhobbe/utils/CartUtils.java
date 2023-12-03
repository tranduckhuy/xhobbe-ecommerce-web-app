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
        return getListLong(cartIds);
    }
    
    public static int[] getListQuantity(String[] quantityValues) {
        return getListInt(quantityValues);
    }
    
    public static long[] getListLong(String[] list) {
        if (list == null || list.length == 0) {
            return new long[0];
        }

        int length = list.length;
        long[] listLong = new long[length];

        for (int i = 0; i < length; i++) {
            long currentLong = UtilsValidType.getLong(list[i]);
            if (currentLong == -1) {
                return new long[0];
            }
            listLong[i] = currentLong;
        }

        return listLong;
    }
    
    public static int[] getListInt(String[] list) {
        if (list == null || list.length == 0) {
            return new int[0];
        }

        int length = list.length;
        int[] listLong = new int[length];

        for (int i = 0; i < length; i++) {
            int currentInt = UtilsValidType.getInteger(list[i]);
            if (currentInt == -1) {
                return new int[0];
            }
            listLong[i] = currentInt;
        }

        return listLong;
    }
}
