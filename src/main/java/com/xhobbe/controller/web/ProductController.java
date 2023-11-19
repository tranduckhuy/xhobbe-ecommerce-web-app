package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.CategoryConstant;
import com.xhobbe.model.Product;
import com.xhobbe.service.IProductService;
import java.io.IOException;
import java.util.ArrayList;
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
@WebServlet(name = "product", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        
        String category = request.getParameter("category");
        
        List<Product> list = new ArrayList<>();

        int limit = 10;
        int offset = 0;
        
        if (AppConstant.ALL.equals(category)) {
            list = productService.findAll(limit, offset, "", "");
        }
        if (CategoryConstant.PHONE.equals(category)) {
            list = productService.findByCategory(limit, offset, "", "", category);
        }
        if (CategoryConstant.LAPTOP.equals(category)) {
            list = productService.findByCategory(limit, offset, "", "", category);
        }
        if (CategoryConstant.IPAD.equals(category)) {
            list = productService.findByCategory(limit, offset, "", "", category);
        }
        if (CategoryConstant.ACCESSORIES.equals(category)) {
            list = productService.findByCategory(limit, offset, "", "", category);
        }
        
        request.setAttribute(ActionConstant.LIST, list);
        
        request.getRequestDispatcher("/views/web/category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
