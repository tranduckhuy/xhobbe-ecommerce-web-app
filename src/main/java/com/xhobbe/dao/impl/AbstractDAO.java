
package com.xhobbe.dao.impl;

import com.xhobbe.dao.GenericDAO;

/**
 *
 * @author ADMIN
 * @param <T>
 */
public class AbstractDAO<T> implements GenericDAO<T>{

    @Override
    public void update(String sql, Object... parameters) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public Long insert(String sql, Object... parameters) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public int count(String sql, Object... parameters) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
