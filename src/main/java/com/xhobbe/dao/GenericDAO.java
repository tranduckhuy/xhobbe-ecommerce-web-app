package com.xhobbe.dao;

import com.xhobbe.mapper.RowMapper;
import java.util.List;

/**
 *
 * @author ADMIN
 * @param <T>
 */
public interface GenericDAO<T> {

    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);

    void update(String sql, Object... parameters);

    Long insert(String sql, Object... parameters);

    int count(String sql, Object... parameters);
}
