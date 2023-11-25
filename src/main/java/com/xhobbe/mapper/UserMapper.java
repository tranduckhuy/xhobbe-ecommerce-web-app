
package com.xhobbe.mapper;

import com.xhobbe.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author hoang
 */
public class UserMapper implements RowMapper<User> {

    @Override
    public User mapRow(ResultSet rs) {
        try {
            User user = new User();
            user.setUserId(rs.getInt("userId"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setAddress(rs.getString("address"));
            user.setPhone(rs.getString("phoneNumber"));
            user.setPassword(rs.getString("password"));
            user.setRole(rs.getString("roleName"));
            user.setRoleId(rs.getInt("roleId"));
            user.setRoleId(rs.getInt("roleId"));
            user.setActive(rs.getInt("active"));
            user.setCreatedAt(rs.getTimestamp("createdAt"));
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}
