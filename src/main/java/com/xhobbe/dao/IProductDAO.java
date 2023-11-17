package com.xhobbe.dao;

import com.xhobbe.model.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IProductDAO {

    Product findOne(int id);

    Long add(Product product);

    void update(Product product);

    void delete(int id);

    List<Product> findAll();

    int getTotalItem();
}
