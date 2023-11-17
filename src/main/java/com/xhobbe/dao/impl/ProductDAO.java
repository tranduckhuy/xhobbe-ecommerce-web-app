
package com.xhobbe.dao.impl;

import com.xhobbe.dao.IProductDAO;
import com.xhobbe.model.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends AbstractDAO<Product> implements IProductDAO{

    @Override
    public Product findOne(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public Long save(Product newModel) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void update(Product updateNew) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public void delete(long id) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public List<Product> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public int getTotalItem() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
