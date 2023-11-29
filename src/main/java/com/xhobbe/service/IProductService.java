
package com.xhobbe.service;

import com.xhobbe.findRequest.FindRequest;
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

    List<Product> findAll(FindRequest values);
    
    List<Product> findByCategory(FindRequest values);
    
    List<Product> findByBrandAndCategory(FindRequest values);
    
    List<Product> findByName(String name);

    int getTotalItem();
    
    int getTotalItem(int categoryId);
}
