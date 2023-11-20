package com.xhobbe.service;

import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IUserService {

    User findOne(String email, String phone);

    User findByEmailAndPassword(String email, String password);

    List<User> findByRole(int roleId);

    Long add(User user);

    void update(User user);

    void delete(long id);

    List<User> findAll(int limit, int offset);

    int countTotalItem();
}
