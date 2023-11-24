package com.xhobbe.filter;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.constant.MessageAlertConstant;
import com.xhobbe.model.User;
import com.xhobbe.utils.SessionUtils;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebFilter(urlPatterns = {"/*"})
public class AuthorizationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        
        // no-cache
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0);
        
        String url = request.getRequestURI();

        String lastPart = url.substring(url.lastIndexOf("/"));

        User user = (User) SessionUtils.getInstance().getValue(request, "user");

        if (lastPart.startsWith("/admin") && !lastPart.startsWith("/admin-login")) {
            if (user != null) {
                if (AppConstant.ADMIN.equals(user.getRole()) || AppConstant.STAFF.equals(user.getRole())) {
                    chain.doFilter(request, response);
                } else if (user.getRole().equals(AppConstant.CUSTOMER)) {
                    response.sendRedirect("./admin-login?message=notPermission");
                }
            } else {
                response.sendRedirect("./admin-login?message=notLogin");
            }
        } else if (lastPart.startsWith("/cart") || lastPart.startsWith("/order") || lastPart.startsWith("/account")) {
            if (user != null) {
                chain.doFilter(request, response);
            } else {
                response.sendRedirect("./login");
            }
        } else {
            chain.doFilter(request, response);
        }

    }

    @Override
    public void destroy() {
    }

}
