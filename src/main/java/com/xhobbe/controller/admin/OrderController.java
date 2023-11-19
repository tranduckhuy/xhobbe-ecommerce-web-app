
package com.xhobbe.controller.admin;

import com.xhobbe.constant.AppConstant;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "admin-order", urlPatterns = {"/admin-order"})
public class OrderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        String views = "/views/admin/orderList.jsp";
        
        if (AppConstant.EDIT.equals(action)) {
            views = "/views/admin/orderEdit.jsp";
        }
        if (AppConstant.DETAIL.equals(action)) {
            views = "/views/admin/orderDetailList.jsp";
        }
        
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher(views).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }


}

