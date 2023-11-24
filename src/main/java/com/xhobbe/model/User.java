
package com.xhobbe.model;

/**
 *
 * @author ADMIN
 */
public class User {
    
    private long userId;
    private String name;
    private String email;
    private String address;
    private String phone;
    private String password;
    private String role;
    private int roleId;
    private int active;
    private String activeToken;

    public User() {
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
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

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public String getActiveToken() {
        return activeToken;
    }

    public void setActiveToken(String activeToken) {
        this.activeToken = activeToken;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", name=" + name + ", email=" + email + ", address=" + address + ", phone=" + phone + 
                ", password=" + password + ", role=" + role + ", roleId=" + roleId + ", active=" + active + ", activeToken=" + activeToken + '}';
    }
    
}
