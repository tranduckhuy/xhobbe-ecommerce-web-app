package com.xhobbe.service.impl;

import com.xhobbe.dao.IProductDAO;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.model.Product;
import com.xhobbe.service.IProductService;
import java.util.List;
import javax.inject.Inject;

/**
 *
 * @author ADMIN
 */
public class ProductService implements IProductService {

    @Inject
    IProductDAO productDAO;

    @Override
    public Product findOne(long id) {
        return productDAO.findOne(id);
    }

    @Override
    public Product add(Product product) {
        Long id = productDAO.add(product);

        return productDAO.findOne(id);
    }

    @Override
    public Product update(Product product) {

        productDAO.update(product);

        return productDAO.findOne(product.getProductId());
    }

    @Override
    public List<Product> findAll(FindRequest values) {
        
        return productDAO.findAll(values);
    }

    @Override
    public List<Product> findByCategory(FindRequest values) {
        
        return productDAO.findByCategory(values);
    }

    @Override
    public List<Product> findByBrandAndCategory(FindRequest values) {
        
        return productDAO.findByBrandAndCategory(values);
    }

    @Override
    public List<Product> findByName(String name) {

        return productDAO.findByName(name);
    }

    @Override
    public int getTotalItem() {
        
        return productDAO.getTotalItem();
    }
    
    @Override
    public int getTotalItem(int categoryId) {
        
        return productDAO.getTotalItem(categoryId);
    }

}
