package com.xhobbe.controller.web;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.MessageAlertConstant;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.Encode;
import com.xhobbe.utils.SessionUtils;
import com.xhobbe.utils.UserUtils;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        

        String action = request.getParameter("action");

        if (action == null) {
            request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
            return;
        }
        if (AppConstant.LOGOUT.equals(action)) {
            logout(request, response);
        } 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./");
            return;
        }

        switch (action) {
            case AppConstant.SIGNIN:
                signIn(request, response);
                break;
            case AppConstant.REGISTER:
                register(request, response);
                break;
            default:
                response.sendRedirect("./login");
        }

    }

    private void signIn(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("singin-email");
        String password = request.getParameter("singin-password");
        password = Encode.toSHA256(password);

        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
            doGet(request, response);
        }
        User user = userService.findByEmailAndPassword(email, password);

        if (user == null) {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
            doGet(request, response);
        } else {
            SessionUtils.getInstance().putValue(request, "user", user);
            response.sendRedirect("./");
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user = UserUtils.getParamAndCreateUser(request);

        if (user != null) {
            userService.add(user);
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.SUCCESS);
        } else {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
        }
        request.getRequestDispatcher("/views/web/login.jsp").forward(request, response);
    }

    private void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        User user = (User) SessionUtils.getInstance().getValue(request, "user");

        if (user != null) {
            SessionUtils.getInstance().removeValue(request, "user");
        }
        response.sendRedirect("./");
    }

}
