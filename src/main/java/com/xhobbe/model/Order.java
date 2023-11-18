package com.xhobbe.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Order {

    private long orderId;
    private long userId;
    private String customerName;
    private String customerPhone;
    private String address;
    private double total;
    private int statusID;
    private String status;
    private Timestamp orderDate;
    private List<OrderDetail> listOrderDetail = new ArrayList<>();

    public Order() {
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
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

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public List<OrderDetail> getListOrderDetail() {
        return listOrderDetail;
    }

    public void setListOrderDetail(List<OrderDetail> listOrderDetail) {
        this.listOrderDetail = listOrderDetail;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", customerName=" + customerName + ", customerPhone=" + customerPhone
                + ", address=" + address + ", total=" + total + ", status=" + status + ", statusID=" + statusID
                + ", orderDate=" + orderDate + ", listOrderDetail=" + listOrderDetail + '}';
    }

}
