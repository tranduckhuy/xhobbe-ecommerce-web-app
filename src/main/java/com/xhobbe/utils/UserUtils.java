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
        user.setActive(1);
        user.setAddress("");
        user.setPhone("");
        user.setPassword(UUID.randomUUID().toString());
        user.setActiveToken(UUID.randomUUID().toString());
        return user;
    }
}
