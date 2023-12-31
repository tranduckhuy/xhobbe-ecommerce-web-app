
package com.xhobbe.model;

/**
 *
 * @author ADMIN
 */
public class Cart {
    
    private long cartId;
    private long userId;
    private long productId;
    private String productName;
    private double price;
    private int quantity;
    private int productQuantity;
    private double total;
    private String imageURL;
    private String createdAt;
    

    public Cart() {
    }

    public long getCartId() {
        return cartId;
    }

    public void setCartId(long cartId) {
        this.cartId = cartId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
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

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }
    
    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", userId=" + userId + ", productId=" + productId + ", productName=" + productName + ", price=" + price + ", quantity=" + quantity + ", productQuantity=" + productQuantity + ", total=" + total + ", imageURL=" + imageURL + ", createdAt=" + createdAt + '}';
    }

}
