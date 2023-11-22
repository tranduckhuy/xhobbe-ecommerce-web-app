package com.xhobbe.service;

import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IUserService {

    User findOne(String email);

    User findByEmailAndPassword(String email, String password);

    List<User> findByRole(int roleId);

    User add(User user);

    User update(User user);

    void delete(long id);

    List<User> findAll(int limit, int offset);

    int countTotalItem();
}
