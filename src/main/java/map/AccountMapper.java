package map;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.AccountModels;

public class AccountMapper implements Mapper<AccountModels> {

	@Override
	public AccountModels mapRow(ResultSet resultSet) {
		AccountModels newAccount = new AccountModels();
		try {
			newAccount.setId(resultSet.getLong("id"));
			newAccount.setUsermail(resultSet.getString("usermail"));
			newAccount.setPassword(resultSet.getString("password"));
			newAccount.setRole(resultSet.getInt("role"));
			newAccount.setFullname(resultSet.getString("fullname"));
			newAccount.setPhoneNumber(resultSet.getString("phonenumber"));
			return newAccount;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

}
