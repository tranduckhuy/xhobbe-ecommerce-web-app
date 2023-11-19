package com.xhobbe.dao;

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

    void delete(long id);

    List<Product> findAll(int limit, int offset, String orderBy, String sortBy);
    
    List<Product> findByCategory(int limit, int offset, String orderBy, String sortBy, String categoryName);
    
    List<Product> findByBrand(int limit, int offset, String orderBy, String sortBy, String brandName);
    
    List<Product> findByName(String name);

    int getTotalItem();
}
