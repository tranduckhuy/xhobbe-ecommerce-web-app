package com.xhobbe.utils;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author ADMIN
 */
public class SessionUtils {

    private static SessionUtils sessionUtil = null;

    public static SessionUtils getInstance() {
        if (sessionUtil == null) {
            sessionUtil = new SessionUtils();
        }
        return sessionUtil;
    }

    public void putValue(HttpServletRequest request, String key, Object value) {
        request.getSession().setAttribute(key, value);
    }

    public Object getValue(HttpServletRequest request, String key) {
        return request.getSession().getAttribute(key);
    }

    public void removeValue(HttpServletRequest request, String key) {
        request.getSession().removeAttribute(key);
    }
}
