/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.xhobbe.utils;

/**
 *
 * @author Lmao
 */
public class UtilsValidType {
    public static int isInteger(String parameter) {
        int value = -1; 
        try {
            value = Integer.parseInt(parameter.trim());
            return value;
        } catch (NumberFormatException e) {
            return value;
        }
    }

    public static boolean isDouble(String parameter) {
        try {
            Double.valueOf(parameter);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
    
    public static long getLong(String parameter) {
        try {
            return Long.parseLong(parameter);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public static boolean isBoolean(String parameter) {
        return parameter.equalsIgnoreCase("true") || parameter.equalsIgnoreCase("false");
    }
    
//     public static boolean isString(String parameter) {
//        return !isInteger(parameter) && !isDouble(parameter) && !isLong(parameter) && !isBoolean(parameter);
//    }
}
