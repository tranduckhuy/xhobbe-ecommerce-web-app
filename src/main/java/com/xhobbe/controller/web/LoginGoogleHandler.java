package com.xhobbe.controller.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.GoogleUtils;
import com.xhobbe.utils.SessionUtils;
import com.xhobbe.utils.UserUtils;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "LoginGoogleHandler", urlPatterns = {"/LoginGoogleHandler"})
public class LoginGoogleHandler extends HttpServlet {

    @Inject
    IUserService userSerice;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");

        if (code == null || code.isEmpty()) {
            response.sendRedirect("./login");
            return;
        }

        String accessToken = GoogleUtils.getToken(code);
        User user = GoogleUtils.getUserInfo(accessToken);

        if (user != null) {
            handleGoogleUser(user, request, response);
        } else {
            response.sendRedirect("./login");
        }
    }

    private void handleGoogleUser(User user, HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        User userCheck = userSerice.findOne(user.getEmail());

        if (userCheck != null) {
            SessionUtils.getInstance().putValue(request, "user", userCheck);
        } else {
            user = UserUtils.setDefaultGoogleAccount(user);
            userSerice.add(user);
            SessionUtils.getInstance().putValue(request, "user", user);
        }

        response.sendRedirect("./");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
