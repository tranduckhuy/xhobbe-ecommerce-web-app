package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.dao.impl.ProductDAO;
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
@WebServlet(name = "admin-product", urlPatterns = {"/admin-product"})
public class ProductController extends HttpServlet {

    @Inject
    IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String action = request.getParameter("action");

        
        switch (action) {
            case ActionConstant.DELETE:
                delete(request, response);
                break;
            case ActionConstant.LIST:
                listProduct(request, response);
                break;
            default:
                throw new AssertionError();
        }
//        if (ActionConstant.EDIT.equals(action)) {
//            views = "/views/admin/productEdit.jsp";
//        }
//        if (ActionConstant.ADD.equals(action)) {
//            views = "/views/admin/productForm.jsp";
//        }

        


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    
    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{ 
        List<Product> list = productService.findAll(10, 0, "", "");
        request.setAttribute("listP", list);
        
        request.getRequestDispatcher("/views/admin/productList.jsp").forward(request, response);
        
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            long productId = UtilsValidType.getLong(request.getParameter("id"));
            System.out.println("product id =" + productId);
            if (productId == -1L) {
                response.sendError(404);
                return;
            }

//            Product product = productService.findOne(productId);
//            if (product == null) {
//                response.sendError(404);
//                return;
//            }
            productService.delete(productId);

        } catch (IOException e) {
            e.printStackTrace();
        }
        response.sendRedirect("./admin-product");
    }
    
    
}
