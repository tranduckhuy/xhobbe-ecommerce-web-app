
package com.xhobbe.utils;

/**
 *
 * @author ADMIN
 */
public class CategoryUtils {
    
    public static String getCategoryName(int categoryId) {
        
        switch(categoryId) {
            case 1: return "Phone";
            case 2: return "Laptop";
            case 3: return "IPad";
            case 4: return "Accessories";
            default: return "Phone";
        }
    }
}
