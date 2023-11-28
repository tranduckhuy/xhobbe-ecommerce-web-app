
package com.xhobbe.mapper;

import com.xhobbe.model.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

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
            
            // Time
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Timestamp timeCreated = rs.getTimestamp("createdAt");
            user.setCreatedAt(sdf.format(timeCreated));
            
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}
