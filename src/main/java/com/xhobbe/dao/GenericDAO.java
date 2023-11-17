package com.xhobbe.dao;

/**
 *
 * @author ADMIN
 * @param <T>
 */
public interface GenericDAO<T> {

    void update(String sql, Object... parameters);

    Long insert(String sql, Object... parameters);

    int count(String sql, Object... parameters);
}
