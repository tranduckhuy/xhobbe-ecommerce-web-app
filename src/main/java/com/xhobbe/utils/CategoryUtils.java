
package com.xhobbe.utils;

/**
 *
 * @author ADMIN
 */
public class CategoryUtils {   
    
    public static int getCategoryId(String category) {
        
        switch(category) {
            case "Phone": return 1;
            case "Laptop": return 2;
            case "iPad": return 3;
            case "Accessories": return 4;
            default: return 1;
        }
    }
}
