
package com.xhobbe.utils;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author ADMIN
 */
public class OrderUtils {
    
    public static Order getParamAndCreateOrder(HttpServletRequest request) {
        String phone = request.getParameter("phone").trim();
        String address = request.getParameter("address").trim();
        double shipping = UtilsValidType.getDouble(request.getParameter("shipping"));
        double total = UtilsValidType.getDouble(request.getParameter("total"));
        
        if (phone.isEmpty() || address.isEmpty() || shipping == -1 || total == -1) {
            return null;
        }
        
        Order order = new Order();
        order.setCustomerPhone(phone);
        order.setAddress(address);
        order.setTotal(total);
        
        return order;
    }
    
    public static double getTotalIcomeOfYear(List<Double> incomes) {
        double total = 0;
        for (Double d : incomes) {
            total += d;
        }
        return Math.round(total * 100.0) / 100.0;
    }

    public static String getOrderElement(Order order) {
        String orderAction = "";
        String statusAlert = "status-btn active-btn";
        if (AppConstant.PENDING.equals(order.getStatus())) {
            orderAction = "<a href=\"./admin-order?action=changeStatus&&id=" + order.getOrderId() + "\" class=\"btn btn-primary\" title=\"Delivery\">\n"
                    + "       <i class=\"fa-solid fa-truck\"></i>\n"
                    + "   </a>\n";
        } else if (AppConstant.SHIPPED.equals(order.getStatus())) {
            statusAlert = "status-btn close-btn";
            orderAction = "<a href=\"./admin-order?action=changeStatus&id=" + order.getOrderId() + "\" class=\"btn btn-primary\" title=\"Delivered\">\n"
                    + "       <i class=\"fa-solid fa-circle-check\"></i>\n"
                    + "   </a>\n";
        } else {
            statusAlert = "status-btn success-btn";
        }

        return "                                        <tr>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                <p>" + order.getCustomerName() + "</p>\n"
                + "                                            </td>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                <p><a href=\"#0\">" + order.getCustomerPhone() + "</a></p>\n"
                + "                                            </td>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                <p>" + order.getAddress() + "</p>\n"
                + "                                            </td>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                " + order.getTotal() + "$\n"
                + "                                            </td>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                <span class=\"" + statusAlert + "\">" + order.getStatus() + "</span>\n"
                + "                                            </td>\n"
                + "                                            <td class=\"min-width text-center\">\n"
                + "                                                <p>" + order.getOrderDate() + "</p>\n"
                + "                                            </td>\n"
                + "                                            <td>\n"
                + "                                                <div class=\"action d-flex gap-4 justify-content-center\">\n"
                +                                                       orderAction
                + "                                                    <a href=\"./admin-order?action=detail&id=" + order.getOrderId() + "\" class=\"btn btn-success\" title=\"Detail\">\n"
                + "                                                        <i class=\"fa-solid fa-box\"></i>\n"
                + "                                                    </a>\n"
                + "                                                    <a href=\"javascript:void(0);\" onclick=\"confirmDelete(" + order.getOrderId() + ", 'order')\" class=\"btn btn-danger\" title=\"Refuse\">\n"
                + "                                                        <i class=\"lni lni-trash-can action-hover\" ></i>\n"
                + "                                                    </a>\n"
                + "                                                </div>\n"
                + "                                            </td>\n"
                + "                                        </tr>\n";
    }
    
    
    public static String getOrderElementWeb(Order order) {
        String statusAlert = "pending-color";
        if (AppConstant.SHIPPED.equals(order.getStatus())) {
            statusAlert = "shipped-color";
        } else if (AppConstant.DELIVERED.equals(order.getStatus())) {
            statusAlert = "delivered-color";
        }
        
        return "<tr>\n" +
"                   <td class=\"text-center order-description\">\n" +
"                       " + order.getCustomerPhone() + "\n" +
"                       </td>\n" +
"                    <td class=\"text-center order-description\" ><span class=\"" + statusAlert + "\">" + order.getStatus() + "</span></td>\n" +
"                    <td class=\"text-center order-description text-primary\" >" + order.getAddress() + "</td>\n" +
"                    <td class=\"text-center order-description\" >" + order.getTotal() + "$</td>\n" +
"                    <td class=\"text-center order-description\" style=\"min-width: 150px;\"><span>" + order.getOrderDate() + "</span></td>\n" +
"                    <td style=\"max-width: 50px;\">\n" +
"                        <div class=\"text-center\">\n" +
"                            <a href=\"./order-detail?action=detail&id=" + order.getOrderId() + "\" class=\"btn-success\" title=\"Detail\" style=\"padding: 5px 12px\">\n" +
"                                <i class=\"fa-solid fa-box\"></i>\n" +
"                            </a>\n" +
"                        </div>\n" +
"                    </td>\n" +
"               </tr>";
    }
}

