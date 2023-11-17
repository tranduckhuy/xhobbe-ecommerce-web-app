
package com.xhobbe.model;

import java.sql.Timestamp;

/**
 *
 * @author ADMIN
 */
public class Order {
    
    private long orderId;
    private String productName;
    private String customerName;
    private String customerPhone;
    private String address;
    private int quantity;
    private double total;
    private String status;
    private Timestamp orderDate;

    public Order() {
    }

    public Order(long orderId, String productName, String customerName, String customerPhone, String address, int quantity, double total, String status, Timestamp orderDate) {
        this.orderId = orderId;
        this.productName = productName;
        this.customerName = customerName;
        this.customerPhone = customerPhone;
        this.address = address;
        this.quantity = quantity;
        this.total = total;
        this.status = status;
        this.orderDate = orderDate;
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", productName=" + productName + ", customerName=" + customerName + ", customerPhone=" + customerPhone + ", address=" + address + ", quantity=" + quantity + ", total=" + total + ", status=" + status + ", orderDate=" + orderDate + '}';
    }
    
}
