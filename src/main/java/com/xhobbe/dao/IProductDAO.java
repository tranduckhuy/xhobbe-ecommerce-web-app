package com.xhobbe.dao;

import com.xhobbe.model.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface IProductDAO {

    Product findOne(Long id);

    Long save(Product newModel);

    void update(Product updateNew);

    void delete(long id);

    List<Product> findAll();

    int getTotalItem();
}
