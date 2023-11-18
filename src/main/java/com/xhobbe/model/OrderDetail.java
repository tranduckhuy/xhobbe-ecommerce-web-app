package com.xhobbe.model;

/**
 *
 * @author ADMIN
 */
public class OrderDetail {

    private long orderDetailId;
    private long productId;
    private String productName;
    private int quantity;
    private double priceOrder;
    private double total;
    private String imageURL;

    public OrderDetail() {
    }

    public long getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(long orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPriceOrder() {
        return priceOrder;
    }

    public void setPriceOrder(double priceOrder) {
        this.priceOrder = priceOrder;
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
        return "OrderDetail{" + "orderDetailId=" + orderDetailId + ", productId=" + productId + ", productName=" + productName + ", quantity=" + quantity + ", priceOrder=" + priceOrder + ", total=" + total + ", imageURL=" + imageURL + '}';
    }
    
}
