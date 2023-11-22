
package com.xhobbe.utils;

/**
 *
 * @author Lmao
 */
public class UtilsValidType {
    public static int getInteger(String parameter) {
        if (parameter == null) {
            return -1;
        }
        try {
            return Integer.parseInt(parameter.trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public static double getDouble(String parameter) {
        if (parameter == null) {
            return -1;
        }
        try {
            return Double.parseDouble(parameter.trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }
    
    public static long getLong(String parameter) {
        if (parameter == null) {
            return -1;
        }
        try {
            return Long.parseLong(parameter);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public static boolean isBoolean(String parameter) {
        if (parameter == null) {
            return false;
        }
        return parameter.equalsIgnoreCase("true") || parameter.equalsIgnoreCase("false");
    }
    
//     public static boolean isString(String parameter) {
//        return !isInteger(parameter) && !isDouble(parameter) && !isLong(parameter) && !isBoolean(parameter);
//    }
}
