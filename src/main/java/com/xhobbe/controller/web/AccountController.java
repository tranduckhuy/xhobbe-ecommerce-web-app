package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.SessionUtils;
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
@WebServlet(name = "account", urlPatterns = {"/account"})
public class AccountController extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./");
            return;
        }

        switch (action) {
            case ActionConstant.EDIT:
                getEditAccount(request, response);
                break;
            case ActionConstant.CHANGE_PASSWORD:
                getChangePassword(request, response);
                break;
            case ActionConstant.FORGOT_PASSWORD:
                getForgotPassword(request, response);
                break;
            default:
                response.sendRedirect("./");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        User user = (User) SessionUtils.getInstance().getValue(request, "user");

        if (action == null || user == null) {
            response.sendRedirect("./");
            return;
        }

        switch (action) {
            case ActionConstant.EDIT:
                postEditAccount(request, response, user);
                break;
            case ActionConstant.CHANGE_PASSWORD:
                postChangePassword(request, response, user);
                break;
            case ActionConstant.FORGOT_PASSWORD:
                postForgotPassword(request, response, user);
                break;
            default:
                response.sendRedirect("./");
        }
    }

    private void getEditAccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        String message = request.getParameter("message");

        if (message != null && !message.isEmpty()) {
            request.setAttribute(AppConstant.MESSSAGE, message);
        }
        request.getRequestDispatcher("/views/web/customerEdit.jsp").forward(request, response);
    }

    private void postEditAccount(HttpServletRequest request, HttpServletResponse response, User user)
            throws ServletException, IOException {

        String name = request.getParameter("edit-name");
        String phone = request.getParameter("edit-phone");
        String address = request.getParameter("edit-address");

        user.setName(name);
        user.setPhone(phone);
        user.setAddress(address);

        user = userService.update(user);

        if (user != null) {
            SessionUtils.getInstance().putValue(request, "user", user);
            response.sendRedirect("./account?action=edit&message=success");
        } else {
            response.sendRedirect("./account?action=edit&message=fail");
        }
    }

    private void getChangePassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String message = request.getParameter("message");

        if (message != null && !message.isEmpty()) {
            request.setAttribute(AppConstant.MESSSAGE, message);
        }
        request.getRequestDispatcher("/views/web/customerChangePassword.jsp").forward(request, response);
    }

    private void postChangePassword(HttpServletRequest request, HttpServletResponse response, User user)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String oldPassword = request.getParameter("old-password");
        String newPassword = request.getParameter("new-password");
        String confirmPassword = request.getParameter("confirm-password");

        if (!newPassword.equals(confirmPassword)) {
            response.sendRedirect("./");
            return;
        }

        user = userService.changePassword(user, oldPassword, newPassword);

        if (user != null) {
            SessionUtils.getInstance().putValue(request, "user", user);
            response.sendRedirect("./account?action=changePassword&message=success");
        } else {
            response.sendRedirect("./account?action=changePassword&message=fail");
        }

    }

    private void getForgotPassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/customerForgotPassword.jsp").forward(request, response);
    }

    private void postForgotPassword(HttpServletRequest request, HttpServletResponse response, User user)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/customerForgotPassword.jsp").forward(request, response);
    }
}
