package com.xhobbe.utils;

import com.xhobbe.constant.AppConstant;
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

        String name = request.getParameter("register-name").trim();
        String email = request.getParameter("register-email").trim();
        String phone = request.getParameter("register-phone").trim();
        String password = request.getParameter("register-password").trim();
        String confirmPassword = request.getParameter("register-confirm-password").trim();
        String address = request.getParameter("register-address").trim();

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

        String name = request.getParameter("name").trim();
        String phone = request.getParameter("phone").trim();
        String address = request.getParameter("address").trim();
        int roleId = UtilsValidType.getInteger(request.getParameter("role"));
        
        if (user.getUserId() == 1) {
            return null;
        }
        
        User userUpdate = new User();
        userUpdate.setUserId(user.getUserId());
        userUpdate.setName(name);
        userUpdate.setEmail(user.getEmail());
        userUpdate.setAddress(address != null && !address.isEmpty() ? address : user.getAddress());
        userUpdate.setPhone(phone != null && !phone.isEmpty() ? phone : user.getPhone());
        userUpdate.setPassword(user.getPassword());
        userUpdate.setRoleId(roleId);
        userUpdate.setRole(roleId == 1 ? AppConstant.ADMIN : (roleId == 2 ? AppConstant.STAFF : AppConstant.CUSTOMER));

        return userUpdate;
    }
    
    public static String generateRandomOTP() {
        int otpLength = 6;
        String allowedDigits = "0123456789";
        StringBuilder otp = new StringBuilder();
        for (int i = 0; i < otpLength; i++) {
            int index = (int) (Math.random() * allowedDigits.length());
            otp.append(allowedDigits.charAt(index));
        }
        return otp.toString();
    }
}
