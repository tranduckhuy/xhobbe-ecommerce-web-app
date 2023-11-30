package com.xhobbe.service;

import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IUserService {

    User findOne(String email);

    User findByEmailAndPassword(String email, String password);
    
    User changePassword(User user, String oldPassword, String newPassword);

    List<User> findByRole(FindRequest values);

    User add(User user);

    User update(User user);

    boolean delete(long id, String email);

    List<User> findAll(int limit, int offset);

    User active(User user);
        
    int countTotalItem();
    
    int countTotalItemByRoleId(int roleId);
}
