
package com.xhobbe.controller.admin;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.User;
import com.xhobbe.service.IOrderService;
import com.xhobbe.service.IUserService;
import com.xhobbe.utils.OrderUtils;
import com.xhobbe.utils.SessionUtils;
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
    
@WebServlet(name = "admin", urlPatterns = {"/admin"})
public class HomeController extends HttpServlet {
    
    @Inject
    IOrderService orderService;
    
    @Inject
    IUserService userService;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
        User userSession = (User) SessionUtils.getInstance().getValue(request, "user");
        User currentUserStatus = userService.findOne(userSession.getEmail());
        
        if (currentUserStatus == null || currentUserStatus.getRoleId() != 1 && currentUserStatus.getRoleId() != 2) {
            SessionUtils.getInstance().removeValue(request, "user");
            response.sendRedirect("./");
            return;
        }
        
        request.setAttribute(AppConstant.TOTAL_INCOME, orderService.getTotalIncomeByMonth(AppConstant.GET_BY_MONTH));
        
        List<Double> incomes = orderService.getTotalIncomeByMonth(0);
        double totalOfYear = OrderUtils.getTotalIcomeOfYear(incomes);
        
        request.setAttribute(AppConstant.TOTAL_INCOME_EACH_MONTH, incomes);
        request.setAttribute(AppConstant.TOTAL_INCOME_THIS_YEAR, totalOfYear);
        request.setAttribute(AppConstant.TOTAL_ORDER, orderService.getTotalItemCurrentMonth());
        request.setAttribute(AppConstant.TOTAL_USER, userService.countTotalItem());
        
        request.setAttribute(AppConstant.NEW_ORDER, orderService.getTotalItemByStatus(AppConstant.PENDING_SHIPPED_STATUS_ID));
        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


}