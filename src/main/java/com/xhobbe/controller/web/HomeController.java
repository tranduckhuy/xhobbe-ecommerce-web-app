
package com.xhobbe.controller.web;

import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
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
    
@WebServlet(name = "home", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    @Inject
    ICartService cartService;
    
    @Inject
    IOrderService orderService;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        
        if (user != null) {
            request.setAttribute("totalCart", cartService.getTotalItemByUserId(user.getUserId()));
            request.setAttribute("totalOrder", orderService.getTotalItemByStatus(1));
        }
        
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }


}