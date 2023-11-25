package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.User;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.UserUtils;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "admin-account", urlPatterns = {"/admin-account"})
public class AccountController extends HttpServlet {

    @Inject
    IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./admin");
            return;
        }

        switch (action) {
            case ActionConstant.LIST:
                listAccount(request, response);
                break;
            case ActionConstant.ADD:
                break;
            case ActionConstant.EDIT:
                getFormEdit(request, response);
                break;
            case ActionConstant.DELETE:
                deleteAccount(request, response);
                break;    
            default:
                response.sendRedirect("./admin");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./admin");
            return;
        }

        switch (action) {
            case ActionConstant.ADD:
                break;
            case ActionConstant.EDIT:
                postFormEdit(request, response);
                break;
            default:
                response.sendRedirect("./admin");
        }
    }

    private void listAccount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        String role = request.getParameter("role");
        
        if (role == null || role.isEmpty()) {
            response.sendRedirect("./admin");
            return;
        }
            
        List<User> list;

        switch (role) {
            case AppConstant.ADMIN:
                list = userService.findByRole(1);
                break;
            case AppConstant.STAFF:
                list = userService.findByRole(2);
                break;
            case AppConstant.CUSTOMER:
                list = userService.findByRole(3);
                break;
            default:
                response.sendRedirect("./admin");
                return;
        }

        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute(AppConstant.LIST, list);
        request.getRequestDispatcher("/views/admin/accountList.jsp").forward(request, response);
    }
    
    private void getFormEdit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        
        User user = userService.findOne(email);
        
        if (user == null) {
            response.sendRedirect("./admin");
            return;
        }
        request.setAttribute("user", user);
        request.getRequestDispatcher("/views/admin/accountEdit.jsp").forward(request, response);
    }
    
    private void postFormEdit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        String email = request.getParameter("email");
        User user = userService.findOne(email);
        
        if (user == null) {
            response.sendRedirect("./admin");
            return;
        }
        
        user = UserUtils.getUpdateUser(request, user);
        
        if (userService.update(user) != null) {
            String views = "./admin-account?action=list&role=" + user.getRole() + "&msg=success";
            System.out.println(views);
            response.sendRedirect(views);
        }  else {
            response.sendRedirect("./admin-account?action=list&msg=fail");
        }
        
    }
    
    private void deleteAccount(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        
        User user = userService.findOne(email);
        
        if (user == null) {
            response.sendRedirect("./admin");
            return;
        }
        userService.delete(user.getUserId());
        response.sendRedirect("./admin-account?action=list&role=" + user.getRole() + "&msg=success");
    }

}
