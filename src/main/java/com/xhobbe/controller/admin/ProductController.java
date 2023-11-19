
package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
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
@WebServlet(name = "admin-product", urlPatterns = {"/admin-product"})
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String action = request.getParameter("action");
        
        String views = "/views/admin/productList.jsp";
        
        if (ActionConstant.EDIT.equals(action)) {
            views = "/views/admin/productEdit.jsp";
        }
        if (ActionConstant.ADD.equals(action)) {
            views = "/views/admin/productForm.jsp";
        }
        
        request.getRequestDispatcher(views).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }


}