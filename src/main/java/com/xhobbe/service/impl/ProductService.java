package com.xhobbe.service.impl;

import com.xhobbe.dao.IProductDAO;
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
    public List<Product> findAll(int limit, int offset, String orderBy, String sortBy) {
        
        return productDAO.findAll(limit, offset, sortBy, sortBy);
    }

    @Override
    public List<Product> findByCategory(int limit, int offset, String orderBy, String sortBy, String categoryName) {
        
        return productDAO.findByCategory(limit, offset, sortBy, sortBy, categoryName);
    }

    @Override
    public List<Product> findByBrand(int limit, int offset, String orderBy, String sortBy, String brandName) {
        
        return productDAO.findByBrand(limit, offset, sortBy, sortBy, brandName);
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
