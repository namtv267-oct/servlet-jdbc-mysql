package map;

import java.sql.ResultSet;

public interface Mapper<T> {
T mapRow(ResultSet resultSet);
}
