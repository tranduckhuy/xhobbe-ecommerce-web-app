package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.CategoryConstant;
import com.xhobbe.model.Product;
import com.xhobbe.service.IProductService;
import com.xhobbe.utils.UtilsValidType;
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
@WebServlet(name = "product", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

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
            case ActionConstant.LIST:
                listProduct(request, response);
                break;
            case ActionConstant.ADD:
                request.getRequestDispatcher("/views/admin/productForm.jsp").forward(request, response);
                break;
            case ActionConstant.DETAIL:
                getDetailProduct(request, response, ActionConstant.DETAIL);
                break;
            case ActionConstant.QUICKVIEW:
                getDetailProduct(request, response, ActionConstant.QUICKVIEW);
                break;    
            default:
                response.sendRedirect("./");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    
    
    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        

        String category = request.getParameter("category");

        List<Product> list;
        
        if (null == category) {
            response.sendRedirect("./product?action=list&category=all");
            return;
        } else switch (category) {
            case AppConstant.ALL:
                list = productService.findAll(10, 0, "", "");
                break;
            case CategoryConstant.PHONE:
            case CategoryConstant.LAPTOP:
            case CategoryConstant.IPAD:
            case CategoryConstant.ACCESSORIES:
                list = productService.findByCategory(10, 0, "", "", category);
                break;
            default:
                response.sendRedirect("./product?action=list&category=all");
                return;
        }
        
        request.setAttribute(AppConstant.LIST, list);
        request.getRequestDispatcher("/views/web/productList.jsp").forward(request, response);

    }

    private void getDetailProduct(HttpServletRequest request, HttpServletResponse response, String action) throws IOException, ServletException {
        
        Long id = UtilsValidType.getLong(request.getParameter("id"));
        
        Product product = productService.findOne(id);
        
        String views = "/views/web/productDetail.jsp";
        
        if (ActionConstant.QUICKVIEW.equals(action)) {
            views = "/views/web/quickView.jsp";
        }
        request.setAttribute(AppConstant.PRODUCT, product);
        request.getRequestDispatcher(views).forward(request, response);
    }

}
