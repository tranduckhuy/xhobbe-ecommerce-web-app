package com.xhobbe.controller.web;

import com.google.gson.Gson;
import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.CategoryConstant;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.Product;
import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IProductService;
import com.xhobbe.utils.CategoryUtils;
import com.xhobbe.utils.SessionUtils;
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

    private static final String PRODUCT_URL = "./product?action=list&category=all";

    @Inject
    private IProductService productService;

    @Inject
    ICartService cartService;

    @Inject
    IOrderService orderService;

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
            case ActionConstant.DETAIL:
                getDetailProduct(request, response);
                break;
            case ActionConstant.QUICKVIEW:
                getDetailProduct(request, response);
                break;
            case ActionConstant.LOADMORE:
                loadMoreProduct(request, response);
                break;
            case ActionConstant.SEARCH:
                getSearchProduct(request, response);
                break;
            default:
                response.sendRedirect("./");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        response.sendRedirect("./");
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String category = request.getParameter("category");

        List<Product> list;

        if (null == category) {
            response.sendRedirect(PRODUCT_URL);
            return;
        } else {
            FindRequest requestValues = new FindRequest();
            requestValues.setLimit(8);
            requestValues.setOffset(0);
            switch (category) {
                case AppConstant.ALL:
                    request.setAttribute("total", productService.getTotalItem());
                    request.setAttribute("category", category);

                    list = productService.findAll(requestValues);
                    break;
                case CategoryConstant.PHONE:
                case CategoryConstant.LAPTOP:
                case CategoryConstant.IPAD:
                case CategoryConstant.ACCESSORIES:
                    request.setAttribute("total", productService.getTotalItem(CategoryUtils.getCategoryId(category)));
                    request.setAttribute("category", category);
                    requestValues.setCategory(category);
                    list = productService.findByCategory(requestValues);
                    break;
                default:
                    request.setAttribute("total", productService.getTotalItem());
                    request.setAttribute("category", category);
                    response.sendRedirect(PRODUCT_URL);
                    return;
            }
        }

        // badge alert
        User user = (User) SessionUtils.getInstance().getValue(request, "user");
        if (user != null) {
            request.setAttribute("totalCart", cartService.findByUserId(user.getUserId()).size());
            request.setAttribute("totalOrder", orderService.getTotalItemByUserIdAndStatus(
                    user.getUserId(), AppConstant.PENDING_SHIPPED_STATUS_ID));
        }

        request.setAttribute(AppConstant.LIST, list);
        request.getRequestDispatcher("/views/web/productList.jsp").forward(request, response);

    }

    private void getDetailProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Long id = UtilsValidType.getLong(request.getParameter("id"));

        Product product = productService.findOne(id);

        if (product == null) {
            response.sendRedirect(PRODUCT_URL);
            return;
        }

        request.setAttribute(AppConstant.PRODUCT, product);
        request.getRequestDispatcher("/views/web/productDetail.jsp").forward(request, response);
    }

    private void getSearchProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String brand = request.getParameter("brand");
        String category = request.getParameter("category");

        if (brand == null || brand.isEmpty() || category == null || category.isEmpty()) {
            String searchValue = request.getParameter("search");
            List<Product> list = productService.findByName(searchValue);
            request.setAttribute("total", list.size());
            request.setAttribute(AppConstant.LIST, list);
            request.getRequestDispatcher("/views/web/productList.jsp").forward(request, response);
        } else {
            FindRequest requestValues = new FindRequest();
            requestValues.setBrand(brand);
            requestValues.setCategory(category);
            List<Product> list = productService.findByBrandAndCategory(requestValues);

            String json = new Gson().toJson(list);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        }

    }

    private void loadMoreProduct(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String category = request.getParameter("category");
        int offset = UtilsValidType.getInteger(request.getParameter("currentTotal"));
        int limit = 8;

        List<Product> list;

        if (category == null || offset == -1) {
            response.sendRedirect(PRODUCT_URL);
            return;
        } else {
            FindRequest requestValues = new FindRequest();
            requestValues.setLimit(limit);
            requestValues.setOffset(offset);
            switch (category) {
                case AppConstant.ALL:
                    list = productService.findAll(requestValues);
                    break;
                case CategoryConstant.PHONE:
                case CategoryConstant.LAPTOP:
                case CategoryConstant.IPAD:
                case CategoryConstant.ACCESSORIES:
                    requestValues.setCategory(category);
                    list = productService.findByCategory(requestValues);
                    break;
                default:
                    response.sendRedirect(PRODUCT_URL);
                    return;
            }
        }

        String json = new Gson().toJson(list);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

}
