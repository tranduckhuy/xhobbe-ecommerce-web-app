package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
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
@WebServlet(name = "order", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
//        request.getRequestDispatcher("/views/web/orderDetail.jsp").forward(request, response);
        String action = request.getParameter("action");

        if (action == null) {
            response.sendRedirect("./");
            return;
        }

        switch (action) {
            case ActionConstant.LIST:
                listProduct(request, response);
                break;
            case ActionConstant.DETAIL:
                getDetailProduct(request, response);
                break;
            case ActionConstant.SEARCH:
                getSearchProduct(request, response);
                break;
            case ActionConstant.EDIT:
                listProduct(request, response);
                break;
            default:
                response.sendRedirect("/views/web/order.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/order.jsp").forward(request, response);
    }

    private void getDetailProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/orderDetail.jsp").forward(request, response);
    }

    private void getSearchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/web/order.jsp").forward(request, response);
    }
}
