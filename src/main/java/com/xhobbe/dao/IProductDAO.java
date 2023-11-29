package com.xhobbe.dao;

import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IProductDAO {

    Product findOne(long id);

    Long add(Product product);

    void update(Product product);

    List<Product> findAll(FindRequest values);
    
    List<Product> findByCategory(FindRequest values);
    
    List<Product> findByBrandAndCategory(FindRequest values);
    
    List<Product> findByName(String name);

    int getTotalItem();
    
    int getTotalItem(int categoryId);
}
