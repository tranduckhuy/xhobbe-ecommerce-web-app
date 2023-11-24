package com.xhobbe.utils;

import com.xhobbe.model.User;
import java.io.IOException;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author ADMIN
 */
public class UserUtils {

    public static User getParamAndCreateUser(HttpServletRequest request) throws IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String name = request.getParameter("register-name");
        String email = request.getParameter("register-email");
        String phone = request.getParameter("register-phone");
        String password = request.getParameter("register-password");
        String confirmPassword = request.getParameter("register-confirm-password");
        String address = request.getParameter("register-address");

        if (!name.isEmpty() && !email.isEmpty() && !phone.isEmpty() && !password.isEmpty()
                && !confirmPassword.isEmpty() && !address.isEmpty()) {
            if (confirmPassword.equals(password)) {
                User user = new User();
                user.setName(name);
                user.setEmail(email);
                user.setPhone(phone);
                user.setPassword(Encode.toSHA256(password));
                user.setAddress(address);
                user.setActive(0);
                user.setRoleId(3);
                user.setActiveToken(UUID.randomUUID().toString());
                return user;
            }
        }
        return null;
    }
    
    public static User setDefaultGoogleAccount(User user) {
        
        user.setRoleId(3);
        user.setRole("CUSTOMER");
        user.setActive(1);
        user.setAddress("");
        user.setPhone("");
        user.setPassword(UUID.randomUUID().toString());
        user.setActiveToken(UUID.randomUUID().toString());
        return user;
    }
    
    public static User getUpdateUser(HttpServletRequest request, User user) throws IOException {
        
        request.setCharacterEncoding("UTF-8");
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        int roleId = UtilsValidType.getInteger(request.getParameter("role"));
        
        User userUpdate = new User();
        userUpdate.setUserId(user.getUserId());
        userUpdate.setName(name);
        userUpdate.setEmail(email);
        
        userUpdate.setAddress((address == null || !address.isEmpty()) ? address : user.getAddress());
        userUpdate.setPhone((phone == null || !phone.isEmpty()) ? phone : user.getPhone());
        userUpdate.setPassword(user.getPassword());
        userUpdate.setRoleId(roleId);
        
        return userUpdate;
    }
}
