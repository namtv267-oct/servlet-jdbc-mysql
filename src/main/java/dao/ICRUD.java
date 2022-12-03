package dao;

import java.util.List;

import map.Mapper;

public interface ICRUD<T> {
	 void query(String sql, Object... parameters);
	List<T> get(String sql, Mapper<T> map, Object... parameters);
}
