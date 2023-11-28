package com.xhobbe.service.impl;

import com.xhobbe.dao.IUserDAO;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.Encode;
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
    public User findOne(String email) {
        return userDAO.findOne(email);
    }

    @Override
    public User findByEmailAndPassword(String email, String password) {
        return userDAO.findByEmailAndPassword(email, password);
    }
    
    @Override
    public User changePassword(User user, String oldPassword, String newPassword) {
        
        oldPassword = Encode.toSHA256(oldPassword);
        
        if (!user.getPassword().equals(oldPassword)) {
            return null;
        }
        user.setPassword(Encode.toSHA256(newPassword));
        userDAO.update(user);
        
        return userDAO.findOne(user.getEmail());
    }

    @Override
    public List<User> findByRole(int roleId) {
        return userDAO.findByRole(roleId);
    }

    @Override
    public User add(User user) {
        // Check if the user with the given email already exists
        if (userDAO.findOne(user.getEmail()) != null) {
            return null;
        }
        // If the user doesn't exist, add them to the database
        Long id = userDAO.add(user);

        // Return the user object if the addition was successful, otherwise return null
        return (id != null) ? user : null;
    }

    @Override
    public User update(User user) {

        userDAO.update(user);

        return userDAO.findOne(user.getEmail());
    }

    @Override
    public boolean delete(long id, String email) {
        if (id == 1) {
            return false;
        }
        userDAO.delete(id);
        
        return (userDAO.findOne(email)) == null;
    }

    @Override
    public List<User> findAll(int limit, int offset) {
        return userDAO.findAll(limit, offset);
    }

    @Override
    public int countTotalItem() {
        return userDAO.countTotalItem();
    }

    @Override
    public User active(User user) {
        userDAO.active(user);
        return userDAO.findOne(user.getEmail());
    }
}
