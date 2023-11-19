package com.xhobbe.service.impl;

import com.xhobbe.dao.IUserDAO;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public User findOne(String email, String phone) {
        return userDAO.findOne(email, phone);
    }

    @Override
    public User findByEmailAndPassword(String email, String password) {
        return userDAO.findByEmailAndPassword(email, password);
    }

    @Override
    public List<User> findByRole(int roleId) {
        return userDAO.findByRole(roleId);
    }

    @Override
    public Long add(User user) {
        return userDAO.add(user);
    }

    @Override
    public void update(User user) {
        userDAO.update(user);
    }

    @Override
    public void delete(long id) {
        userDAO.delete(id);
    }

    @Override
    public List<User> findAll(int limit, int offset) {
        return userDAO.findAll(limit, offset);
    }

    @Override
    public int countTotalItem() {
        return userDAO.countTotalItem();
    }
}
