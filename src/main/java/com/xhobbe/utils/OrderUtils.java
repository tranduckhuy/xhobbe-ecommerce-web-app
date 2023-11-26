package com.xhobbe.utils;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.model.Order;

/**
 *
 * @author ADMIN
 */
public class OrderUtils {

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
                + "                    <td class=\"min-width text-center\">\n"
                + "                        <p>" + order.getCustomerName() + "</p>\n"
                + "                    </td>\n"
                + "                    <td class=\"min-width text-center\">\n"
                + "                        <p><a href=\"#0\">" + order.getCustomerPhone() + "</a></p>\n"
                + "                    </td>\n"
                + "                    <td class=\"min-width text-center\">\n"
                + "                        <p>" + order.getAddress() + "</p>\n"
                + "                    </td>\n"
                + "                    <td class=\"min-width text-center\">\n"
                + "                        " + order.getTotal() + "$\n"
                + "                    </td>\n"
                + "                    <td class=\"min-width text-center\">\n"
                + "                        <span class=\"" + statusAlert + "\">" + order.getStatus() + "</span>\n"
                + "                    </td>\n"
                + "                    <td class=\"min-width text-center\">\n"
                + "                        <p>" + order.getOrderDate() + "</p>\n"
                + "                    </td>\n"
                + "                    <td>\n"
                + "                        <div class=\"action d-flex gap-4 justify-content-center\">\n"
                +                               orderAction
                + "                            <a href=\"./admin-order?action=detail&id=" + order.getOrderId() + "\" class=\"btn btn-success\">\n"
                + "                                <i class=\"fa-solid fa-box\" title=\"Detail\"></i>\n"
                + "                            </a>\n"
                + "                            <a href=\"./admin-order?action=delete&id=" + order.getOrderId() + "\" class=\"btn btn-danger\">\n"
                + "                                <i class=\"lni lni-trash-can action-hover\" title=\"Refuse\"></i>\n"
                + "                            </a>\n"
                + "                        </div>\n"
                + "                    </td>\n"
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
"                            <a href=\"./order?action=detail" + order.getOrderId() + "\" class=\"btn-success\" style=\"padding: 5px 12px\">\n" +
"                                <i class=\"fa-solid fa-box\" title=\"Detail\"></i>\n" +
"                            </a>\n" +
"                        </div>\n" +
"                    </td>\n" +
"               </tr>";
    }
}
