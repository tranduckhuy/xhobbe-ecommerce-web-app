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
    public List<User> findByRole(int roleId) {
        String sql = "SELECT u.*, r.roleName FROM user AS u JOIN role AS r ON u.roleId = r.roleId WHERE u.roleId = ? ";
        return query(sql, new UserMapper(), roleId);
    }

    @Override
    public Long add(User user) {
        String sql = "INSERT INTO user (name, email, address, phoneNumber, password, roleId, active, activeToken) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, user.getName(), user.getEmail(), user.getAddress(),
                user.getPhone(), user.getPassword(), user.getRoleId(), user.getActive(),user.getActiveToken());
    }

    @Override
    public void update(User user) {
        String sql = "UPDATE user SET name = ?, email = ?, address = ?, phoneNumber = ?, password = ?, roleId = ? WHERE userId = ?";
        update(sql, user.getName(), user.getEmail(), user.getAddress(),
                user.getPhone(), user.getPassword(), user.getRoleId(), user.getUserId());
    }

    @Override
    public void delete(long id) {
        String sql = "DELETE FROM user WHERE userId = ?";
        update(sql, id);
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
    public void active(User user) {
        String sql = "UPDATE user SET active = ? WHERE userId = ?";
        update(sql, 1, user.getUserId());
    }

}
