package com.xhobbe.dao.impl;

import com.xhobbe.dao.IUserDAO;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.mapper.UserMapper;
import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author hoang
 */
public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    @Override
    public User findOne(String email) {
        String sql = "SELECT u.*, r.roleName FROM user AS u JOIN role AS r ON u.roleId = r.roleId WHERE u.email = ?";
        List<User> users = query(sql, new UserMapper(), email);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User findByEmailAndPassword(String email, String password) {
        String sql = "SELECT u.*, r.roleName FROM user AS u JOIN role AS r ON u.roleId = r.roleId WHERE u.email = ? AND password = ? ";
        List<User> users = query(sql, new UserMapper(), email, password);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public List<User> findByRole(FindRequest values) {
        String sql = "SELECT u.*, r.roleName FROM user AS u JOIN role AS r ON u.roleId = r.roleId WHERE u.roleId = ? LIMIT ? OFFSET ?";
        return query(sql, new UserMapper(), values.getRoleId(), values.getLimit(), values.getOffset());
    }

    @Override
    public Long add(User user) {
        String sql = "INSERT INTO user (name, email, address, phoneNumber, password, roleId, active) VALUES (?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, user.getName(), user.getEmail(), user.getAddress(),
                user.getPhone(), user.getPassword(), user.getRoleId(), user.getActive());
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE user SET name = ?, email = ?, address = ?, phoneNumber = ?, password = ?, roleId = ? WHERE userId = ?";
        update(sql, user.getName(), user.getEmail(), user.getAddress(),
                user.getPhone(), user.getPassword(), user.getRoleId(), user.getUserId());
    }

    @Override
    public void delete(long id) {
        
        // delete all cart
        String sqlDelete = "DELETE FROM `shoppingCart` WHERE userId = ?";
        update(sqlDelete, id);
        
        // delete all `orderDetails`
        StringBuilder sql = new StringBuilder("DELETE FROM `orderDetails` AS od ");
        sql.append("WHERE od.orderId = (SELECT o.orderId FROM `user` AS u JOIN `order` AS o ON o.userId = u.userId WHERE u.userId = ?)");
        update(sql.toString(), id);
        
        // delete all `order`
        sqlDelete = "DELETE FROM `order` WHERE userId = ?";
        update(sqlDelete, id);
        
        //delete `user`
        sqlDelete = "DELETE FROM user WHERE userId = ?";
        update(sqlDelete, id);
    }

    @Override
    public List<User> findAll(int limit, int offset) {
        String sql = "SELECT u.*, r.roleName FROM user AS u JOIN role AS r ON u.roleId = r.roleId LIMIT ? OFFSET ?";
        return query(sql, new UserMapper(), limit, offset);
    }

    @Override
    public int countTotalItem() {
        String sql = "SELECT COUNT(*) FROM user";
        return count(sql);
    }
    
    @Override
    public int countTotalItemByRoleId(int roleId) {
        String sql = "SELECT COUNT(*) FROM user WHERE roleId = ?";
        return count(sql, roleId);
    }

    @Override
    public void active(User user) {
        String sql = "UPDATE user SET active = ? WHERE userId = ?";
        update(sql, 1, user.getUserId());
    }
    
}
