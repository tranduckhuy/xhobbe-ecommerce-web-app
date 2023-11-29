package com.xhobbe.dao.impl;

import com.xhobbe.constant.AppConstant;
import com.xhobbe.dao.IProductDAO;
import com.xhobbe.findRequest.FindRequest;
import com.xhobbe.mapper.ProductMapper;
import com.xhobbe.mapper.RowMapper;
import com.xhobbe.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

    // query for Product to get additional imageURL
    private List<Product> queryProduct(String sql, RowMapper<Product> rowMapper, Object... parameters) {
        List<Product> results = new ArrayList<>();

        try ( Connection conn = super.getConnection();  PreparedStatement ps = conn.prepareStatement(sql)) {
            super.setParameter(ps, parameters);

            try ( ResultSet rs = ps.executeQuery();) {
                while (rs.next()) {
                    Product product = rowMapper.mapRow(rs);
                    product.setImageURL(queryImages(rs.getLong(1)));
                    results.add(product);
                }
            }
            return results;
        } catch (SQLException e) {
            e.printStackTrace();
            return Collections.EMPTY_LIST;
        }
    }

    private List<String> queryImages(Long id) {

        String sqlImage = "SELECT pi.imageUrl FROM product AS p "
                + "JOIN productImage AS pi ON p.productId = pi.productId "
                + "WHERE p.productId = ?";

        try ( Connection conn = getConnection();  PreparedStatement ps = conn.prepareStatement(sqlImage)) {
            List<String> imageURL = new ArrayList<>();
            ps.setLong(1, id);
            try ( ResultSet rs = ps.executeQuery();) {
                while (rs.next()) {
                    imageURL.add(rs.getString(1));
                }
            }
            return imageURL;
        } catch (SQLException e) {
            e.printStackTrace();
            return Collections.EMPTY_LIST;
        }
    }

    @Override
    public Product findOne(long id) {
        StringBuilder sql = new StringBuilder("SELECT productId, name, description, brandName, price, categoryName, p.categoryId, p.brandId, stockQuantity, createdAt ");
        sql.append("FROM product AS p ");
        sql.append("JOIN category AS c ON p.categoryId = c.categoryId ");
        sql.append("JOIN brand AS b ON p.brandId = b.brandId ");
        sql.append("WHERE p.productId = ?");
        List<Product> listProduct = (List<Product>) this.queryProduct(sql.toString(), new ProductMapper(), id);

        return listProduct.isEmpty() ? null : listProduct.get(0);
    }

    @Override
    public Long add(Product product) {
        StringBuilder sql = new StringBuilder("INSERT INTO product ");
        sql.append("(name, description, brandId, price, categoryId, stockQuantity) ");
        sql.append("VALUES (?, ?, ?, ?, ?, ?)");

        long id = super.insert(sql.toString(), product.getName(), product.getDescription(), product.getBrandId(),
                product.getPrice(), product.getCategoryId(), product.getStockQuantity());

        String sqlImage = " INSERT INTO productImage (productId, imageUrl) VALUES (?, ?)";

        for (String imageURL : product.getImageURL()) {
            super.insert(sqlImage, id, imageURL);
        }

        return id;
    }

    @Override
    public void update(Product product) {
        StringBuilder sql = new StringBuilder("UPDATE product SET ");
        sql.append("name = ?, description = ?, brandId = ?, price = ?, categoryId = ?, stockQuantity = ? ");
        sql.append("WHERE productId = ?");

        super.update(sql.toString(), product.getName(), product.getDescription(), product.getBrandId(),
                product.getPrice(), product.getCategoryId(), product.getStockQuantity(), product.getProductId());

        // Delete old images of the product
        String sqlImage = "DELETE FROM productImage WHERE productId = ?";
        super.update(sqlImage, product.getProductId());

        // Insert new Images of the product
        sqlImage = " INSERT INTO productImage (productId, imageUrl) VALUES (?, ?)";
        for (String imageURL : product.getImageURL()) {
            super.insert(sqlImage, product.getProductId(), imageURL);
        }
    }

    @Override
    public List<Product> findAll(FindRequest values) {
        StringBuilder sql = new StringBuilder("SELECT productId, name, description, brandName, price, categoryName, p.categoryId, p.brandId, stockQuantity, createdAt ");
        sql.append("FROM product AS p ");
        sql.append("JOIN category AS c ON p.categoryId = c.categoryId ");
        sql.append("JOIN brand AS b ON p.brandId = b.brandId ");

        if ("".equals(values.getOrderBy()) || "".equals(values.getSortBy())) {
        } else {
            sql.append("ORDER BY ").append(values.getOrderBy()).append(" ").append(values.getSortBy()).append(" ");
        }

        sql.append("LIMIT ? OFFSET ? ");

        List<Product> listProduct = (List<Product>) this.queryProduct(sql.toString(), new ProductMapper(),
                values.getLimit(), values.getOffset());

        return listProduct.isEmpty() ? Collections.EMPTY_LIST : listProduct;
    }

    @Override
    public List<Product> findByCategory(FindRequest values) {
        StringBuilder sql = new StringBuilder("SELECT productId, name, description, brandName, price, categoryName, p.categoryId, p.brandId, stockQuantity, createdAt ");
        sql.append("FROM product AS p ");
        sql.append("JOIN category AS c ON p.categoryId = c.categoryId AND c.categoryName = ? ");
        sql.append("JOIN brand AS b ON p.brandId = b.brandId ");

        if ("".equals(values.getOrderBy()) || "".equals(values.getSortBy())) {
        } else {
            sql.append("ORDER BY ").append(values.getOrderBy()).append(" ").append(values.getSortBy()).append(" ");
        }

        sql.append("LIMIT ? OFFSET ? ");

        List<Product> listProduct = (List<Product>) this.queryProduct(sql.toString(), new ProductMapper(),
                values.getCategory(), values.getLimit(), values.getOffset());

        return listProduct.isEmpty() ? Collections.EMPTY_LIST : listProduct;
    }

    @Override
    public List<Product> findByBrandAndCategory(FindRequest values) {
        StringBuilder sql = new StringBuilder("SELECT productId, name, description, brandName, price, categoryName, p.categoryId, p.brandId, stockQuantity, createdAt ");
        sql.append("FROM product AS p ");
        sql.append("JOIN category AS c ON p.categoryId = c.categoryId ");
        
        if (!AppConstant.ALL.equals(values.getCategory())) {
            sql.append("AND c.categoryName = '").append(values.getCategory()).append("' ");
        }
        
        sql.append(" JOIN brand AS b ON p.brandId = b.brandId AND b.brandName = ? ");

        if ("".equals(values.getOrderBy()) || "".equals(values.getSortBy())) {
        } else {
            sql.append("ORDER BY ").append(values.getOrderBy()).append(" ").append(values.getSortBy()).append(" ");
        }
        
        if (values.getLimit() != 0 || values.getOffset() != 0) {
            sql.append("LIMIT ").append(values.getLimit()).append(" OFFSET ").append(values.getOffset());
        }
        
        List<Product> listProduct = (List<Product>) this.queryProduct(sql.toString(), new ProductMapper(),
                values.getBrand());

        return listProduct.isEmpty() ? Collections.EMPTY_LIST : listProduct;
    }

    @Override
    public List<Product> findByName(String name) {
        StringBuilder sql = new StringBuilder("SELECT productId, name, description, brandName, price, categoryName, p.categoryId, p.brandId, stockQuantity, createdAt ");
        sql.append("FROM product AS p ");
        sql.append("JOIN category AS c ON p.categoryId = c.categoryId ");
        sql.append("JOIN brand AS b ON p.brandId = b.brandId ");
        sql.append("WHERE name LIKE ?");
        List<Product> listProduct = (List<Product>) this.queryProduct(sql.toString(), new ProductMapper(), "%" + name + "%");

        return listProduct.isEmpty() ? Collections.EMPTY_LIST : listProduct;
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM product";
        return count(sql);
    }

    @Override
    public int getTotalItem(int categoryId) {
        String sql = "SELECT count(*) FROM product WHERE categoryId = ?";
        return count(sql, categoryId);
    }
}
