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
    
    List<Product> findByCategory(int categoryId);
    
    List<Product> findByBrand(int brandId);
    
    List<Product> findByName(String name);

    int getTotalItem();
}
