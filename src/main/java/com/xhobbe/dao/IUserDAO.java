
package com.xhobbe.dao;

import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author hoang
 */
public interface IUserDAO extends GenericDAO<User> {

    User findOne(long id);

    Long add(User user);

    void update(User user);

    void delete(long id);

    List<User> findAll();

    int countTotalItem();
}
