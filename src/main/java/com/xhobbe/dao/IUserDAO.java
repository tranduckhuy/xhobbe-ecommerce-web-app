
package com.xhobbe.dao;

import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.User;
import java.util.List;

/**
 *
 * @author hoang
 */
public interface IUserDAO extends GenericDAO<User> {

    User findOne(String email);
    
    User findByEmailAndPassword(String email, String password);

    List<User> findByRole(FindRequest values);
    
    Long add(User user);

    void update(User user);

    void delete(long id);

    List<User> findAll(int limit, int offset);
    
    void active(User user);

    int countTotalItem();
    
    int countTotalItemByRoleId(int roleId);
}
