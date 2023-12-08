package com.xhobbe.controller.web;

import com.xhobbe.constant.ActionConstant;
import com.xhobbe.constant.AppConstant;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.Product;
import com.xhobbe.model.User;
import com.xhobbe.service.ICartService;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IProductService;
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
@WebServlet(name = "home", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    @Inject
    ICartService cartService;

    @Inject
    IOrderService orderService;

    @Inject
    IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        User user = (User) SessionUtils.getInstance().getValue(request, "user");

        if (user != null) {
            request.setAttribute("totalCart", cartService.findByUserId(user.getUserId()).size());
            request.setAttribute("totalOrder", orderService.getTotalItemByUserIdAndStatus(
                    user.getUserId(), AppConstant.PENDING_SHIPPED_STATUS_ID));
        }
        String action = request.getParameter("action");
        if (action != null && !action.isEmpty() && ActionConstant.QUICK_VIEW.equals(action)) {
            quickView(request, response);
            return;
        }

        FindRequest requestValues = new FindRequest();
        requestValues.setLimit(5);
        requestValues.setOffset(0);
        requestValues.setOrderBy("createdAt");
        requestValues.setSortBy("DESC");
        List<Product> list = productService.findAll(requestValues);
        request.setAttribute(AppConstant.LIST, list);
        request.getRequestDispatcher("/views/web/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void quickView(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = UtilsValidType.getLong(request.getParameter("id"));

        Product product = productService.findOne(id);

        request.setAttribute(AppConstant.PRODUCT, product);
        request.getRequestDispatcher("/views/web/quickView.jsp").forward(request, response);
    }

}
