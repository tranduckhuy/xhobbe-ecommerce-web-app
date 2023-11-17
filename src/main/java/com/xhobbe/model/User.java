
package com.xhobbe.model;

/**
 *
 * @author ADMIN
 */
public class User {
    
    private int userId;
    private String name;
    private String email;
    private String address;
    private String phone;
    private String password;
    private String role;

    public User() {
    }

    public User(int userId, String name, String email, String address, String phone, String password, String role) {
        this.userId = userId;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.password = password;
        this.role = role;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", name=" + name + ", email=" + email + ", address=" + address + ", phone=" + phone + ", password=" + password + ", role=" + role + '}';
    }
    
}
