package com.xhobbe.mapper;

import java.sql.ResultSet;

public interface RowMapper<T> {

    T mapRow(ResultSet rs);
}
