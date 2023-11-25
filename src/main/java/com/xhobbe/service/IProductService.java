
package com.xhobbe.service;

import com.xhobbe.model.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IProductService {
    
    Product findOne(long id);

    Product add(Product product);

    Product update(Product product);

    List<Product> findAll(int limit, int offset, String orderBy, String sortBy);
    
    List<Product> findByCategory(int limit, int offset, String orderBy, String sortBy, String categoryName);
    
    List<Product> findByBrand(int limit, int offset, String orderBy, String sortBy, String brandName);
    
    List<Product> findByName(String name);

    int getTotalItem();
    
    int getTotalItem(int categoryId);
}
