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
                + orderAction
                + "                                                    <a href=\"./admin-order?action=detail&id=" + order.getOrderId() + "\" class=\"btn btn-success\">\n"
                + "                                                        <i class=\"fa-solid fa-box\" title=\"Detail\"></i>\n"
                + "                                                    </a>\n"
                + "                                                    <a href=\"javascript:void(0);\" onclick=\"confirmDelete(" +order.getOrderId()+ ", 'oder')\" class=\"btn btn-danger\">\n"
                + "                                                        <i class=\"lni lni-trash-can action-hover\" title=\"Refuse\"></i>\n"
                + "                                                    </a>\n"
                + "                                                </div>\n"
                + "                                            </td>\n"
                + "                                        </tr>\n";

    }
}
