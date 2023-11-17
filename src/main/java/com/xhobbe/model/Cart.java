
package com.xhobbe.model;

/**
 *
 * @author ADMIN
 */
public class Cart {
    
    private long cartId;
    private String productName;
    private double price;
    private int quantity;
    private double total;

    public Cart() {
    }

    public Cart(long cartId, String productName, double price, int quantity, double total) {
        this.cartId = cartId;
        this.productName = productName;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
    }

    public long getCartId() {
        return cartId;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "ShoppingCart{" + "cartId=" + cartId + ", productName=" + productName + ", price=" + price + ", quantity=" + quantity + ", total=" + total + '}';
    }
    
}
