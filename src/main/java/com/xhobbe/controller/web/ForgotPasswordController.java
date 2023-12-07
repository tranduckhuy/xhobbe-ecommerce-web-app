/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.MessageAlertConstant;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.Encode;
import com.xhobbe.utils.SendEmailUtils;
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
 * @author Lmao
 */
@WebServlet(name = "ForgotPasswordController", urlPatterns = {"/forgot-password"})
public class ForgotPasswordController extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/forgotPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action").trim();

        switch (action) {
            case ActionConstant.CHECK_EMAIL:
                checkEmail(request, response);
                break;
                case ActionConstant.CHECK_OTP:
                checkOtp(request, response);
                break;
                case ActionConstant.NEW_PASSWORD:
                newPassword(request, response);
                break;
            default:
                response.sendRedirect("./login");
        }

    }

    private void checkEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("forgot-email").trim();

        if (email == null || email.isEmpty()) {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
            request.getRequestDispatcher("/views/web/forgotPassword.jsp").forward(request, response);
        } else {
            User user = userService.findOne(email);
            if (user == null) {
                request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.EMAIL_NOT_EXIST);
                request.getRequestDispatcher("/views/web/forgotPassword.jsp").forward(request, response);
            } else {
                request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.SUCCESS);
                String newOTP = UserUtils.generateRandomOTP();
                SendEmailUtils.sendGetOTPMessage(email, "New OTP", newOTP);
                SessionUtils.getInstance().putValue(request, "otp", newOTP);
                SessionUtils.getInstance().putValue(request, "email", email);
                request.getRequestDispatcher("/views/web/otp.jsp").forward(request, response);
            }
        }
    }

    private void checkOtp(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String otpInput = request.getParameter("otp-input").trim();
        String otpStored = (String) SessionUtils.getInstance().getValue(request, "otp");

        if (otpInput != null && otpStored != null && otpInput.equals(otpStored)) { 
            SessionUtils.getInstance().removeValue(request, "otp");
            request.getRequestDispatcher("/views/web/newPassword.jsp").forward(request, response);
        } else {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
            request.getRequestDispatcher("/views/web/otp.jsp").forward(request, response);
        }
    }
    
    private void newPassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = (String) SessionUtils.getInstance().getValue(request, "email");

        String newPassword = request.getParameter("new-password").trim();
        String confirmPassword = request.getParameter("confirm-password").trim();

        if (newPassword != null && confirmPassword != null && newPassword.equals(confirmPassword)) {
            User user = userService.findOne(email);
            if (user != null) {
                user.setPassword(Encode.toSHA256(newPassword));
                userService.update(user);
                SessionUtils.getInstance().removeValue(request, "email");
                response.sendRedirect("./login?message=success");
            } else {
                request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
                request.getRequestDispatcher("/views/web/newPassword.jsp").forward(request, response);
            }
        } else {
            request.setAttribute(AppConstant.MESSSAGE, MessageAlertConstant.FAIL);
            request.getRequestDispatcher("/WEB-INF/views/web/newPassword.jsp").forward(request, response);
        }
    }

    

}
