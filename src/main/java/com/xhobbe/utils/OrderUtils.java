
package com.xhobbe.utils;

import com.xhobbe.model.Order;

/**
 *
 * @author ADMIN
 */
public class OrderUtils {
    
    public static String getOrderElement(Order order) {
        return "<div class=\"table-wrapper table-responsive\">\n" +
"                                <table class=\"table\">\n" +
"                                    <thead>\n" +
"                                        <tr>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Customer name</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Customer phone</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Delivery address</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Total</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Status</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Order date</h6>\n" +
"                                            </th>\n" +
"                                            <th class=\"text-center\">\n" +
"                                                <h6>Action</h6>\n" +
"                                            </th>\n" +
"                                        </tr>\n" +
"                                        <!-- end table row-->\n" +
"                                    </thead>\n" +
"                                    <tbody>\n" +
"                                        <tr>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                <p>" + order.getCustomerName() + "</p>\n" +
"                                            </td>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                <p><a href=\"#0\">" + order.getCustomerPhone() + "</a></p>\n" +
"                                            </td>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                <p>" + order.getAddress() + "</p>\n" +
"                                            </td>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                " + order.getTotal() + "\n" +
"                                            </td>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                <span class=\"status-btn active-btn\">" + order.getStatus() + "</span>\n" +
"                                            </td>\n" +
"                                            <td class=\"min-width text-center\">\n" +
"                                                " + order.getOrderDate().toString() + "\n" +
"                                            </td>\n" +
"                                            <td>\n" +
"                                                <div class=\"action d-flex gap-4 justify-content-center\">\n" +
"                                                    <a href=\"./admin-order?action=delivery\" class=\"btn btn-primary\">\n" +
"                                                        <i class=\"fa-solid fa-truck\" title=\"Delivery\"></i>\n" +
"                                                    </a>\n" +
"                                                    <a href=\"./admin-order?action=detail\" class=\"btn btn-success\">\n" +
"                                                        <i class=\"fa-solid fa-box\" title=\"Detail\"></i>\n" +
"                                                    </a>\n" +
"                                                    <a href=\"./admin-order?action=delete\" class=\"btn btn-danger\">\n" +
"                                                        <i class=\"lni lni-trash-can action-hover\" title=\"Refuse\"></i>\n" +
"                                                    </a>\n" +
"                                                </div>\n" +
"                                            </td>\n" +
"                                        </tr>\n" +
"                                    </tbody>\n" +
"                                </table>\n" +
"                     </div>";
        
    }
}
