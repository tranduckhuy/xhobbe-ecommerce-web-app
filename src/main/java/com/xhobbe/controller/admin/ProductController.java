package com.xhobbe.controller.admin;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.CategoryConstant;
import com.xhobbe.model.Product;
import com.xhobbe.service.IProductService;
import com.xhobbe.utils.CategoryUtils;
import com.xhobbe.utils.ProductUtils;
import com.xhobbe.utils.UtilsValidType;
import java.io.IOException;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "admin-product", urlPatterns = {"/admin-product"})
@MultipartConfig(maxFileSize = 16177215)
public class ProductController extends HttpServlet {

    @Inject
    IProductService productService;

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
                listProduct(request, response);
                break;
            case ActionConstant.ADD:
                request.getRequestDispatcher("/views/admin/productForm.jsp").forward(request, response);
                break;
            case ActionConstant.EDIT:
                getFormEdit(request, response);
                break;
            case ActionConstant.DETAIL:
                getDetailProduct(request, response);
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
                add(request, response);
                break;
            case ActionConstant.EDIT:
                postFormEdit(request, response);
                break;
            default:
                response.sendRedirect("./admin");
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String category = request.getParameter("category");

        List<Product> list;
        if (CategoryConstant.PHONE.equals(category) || CategoryConstant.LAPTOP.equals(category)
                || CategoryConstant.IPAD.equals(category) || CategoryConstant.ACCESSORIES.equals(category)) {
            list = productService.findByCategory(10, 0, "", "", category);
        } else {
            response.sendRedirect("./admin");
            return;
        }
        request.setAttribute(AppConstant.LIST, list);

        request.getRequestDispatcher("/views/admin/productList.jsp").forward(request, response);

    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {

        Product product = ProductUtils.getParamAndCreateProduct(request, ActionConstant.ADD);

        if (product != null) {
            productService.add(product);
        } else {
            response.sendRedirect("./admin-product?action=add");
            return;
        }
        response.sendRedirect("admin-product?action=list&category="+ product.getCategory());
    }

    private void getFormEdit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Long id = UtilsValidType.getLong(request.getParameter("id"));
        
        Product product = productService.findOne(id);
        
        request.setAttribute(AppConstant.PRODUCT, product);
        request.getRequestDispatcher("/views/admin/productEdit.jsp").forward(request, response);
    }
    
    private void postFormEdit(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        Long id = UtilsValidType.getLong(request.getParameter("id"));
        
        Product product = productService.findOne(id);
        
        Product editProduct = ProductUtils.getParamAndCreateProduct(request, ActionConstant.EDIT, product);
        editProduct.setProductId(id);
        
        productService.update(editProduct);
        
        response.sendRedirect("./admin-product?action=list&category=" + product.getCategory());
    }
    
    private void getDetailProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
        Long id = UtilsValidType.getLong(request.getParameter("id"));
        
        Product product = productService.findOne(id);

        request.setAttribute(AppConstant.PRODUCT, product);
        request.getRequestDispatcher("/views/web/productDetail.jsp").forward(request, response);
    }
}
