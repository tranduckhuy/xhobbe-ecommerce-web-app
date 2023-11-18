/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.xhobbe.dao.impl;

import com.xhobbe.dao.IUserDAO;
import com.xhobbe.mapper.UserMapper;
import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author hoang
 */
public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    @Override
    public User findOne(long id) {
        String sql = "SELECT user.*, role.role_name WHERE userId = ? FROM user JOIN role ON user.roleId = role.roleId";
        List<User> users = query(sql, new UserMapper(), id);
        if (!users.isEmpty()) {
            return users.get(0);
        }
        return null;
    }

    @Override
    public Long add(User user) {
        String sql = "INSERT INTO user (name, email, address, phone, password, roleId) VALUES (?, ?, ?, ?, ?, ?)";
        return insert(sql, user.getName(), user.getEmail(), user.getAddress(), 
                user.getPhone(), user.getPassword(), user.getRoleId());
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE user SET name = ?, email = ?, address = ?, phone = ?, password = ?, roleId = ? WHERE userId = ?";
        update(sql, user.getUserId());
    }

    @Override
    public void delete(long id) {
        String sql = "DELETE FROM user WHERE userId = ?";
        update(sql, id);
    }

    @Override
    public List<User> findAll() {
        String sql = "SELECT user.*, role.role_name FROM user JOIN role ON user.roleId = role.roleId";
        return query(sql, new UserMapper());
    }

    @Override
    public int countTotalItem() {
        String sql = "SELECT COUNT(*) FROM user";
        return count(sql);
    }

}
