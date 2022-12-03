package dao;

import java.util.List;

import javax.inject.Inject;

import map.Mapper;
import model.AccountModels;

public class AccountDAO extends AbstractDAO<AccountModels> implements IAccountDAO {
	@Inject
	private Mapper<AccountModels> accountMap;

	public void createAccount(AccountModels account) {
		StringBuilder sql = new StringBuilder("INSERT INTO accounts ");
		sql.append("(usermail, password, role, fullname, phonenumber )");
		sql.append("VALUES (?,?,?,?,?)");
		query(sql.toString(), account.getUsermail(), account.getPassword(), account.getRole(), account.getFullname(),
				account.getPhoneNumber());
	}

	@Override
	public AccountModels getByEmail(String email) {
		StringBuilder sql = new StringBuilder("SELECT * FROM accounts ");
		sql.append("WHERE usermail = ?");
		AccountModels ac = get(sql.toString(), accountMap, email).get(0);
		return ac;
	}

	@Override
	public List<AccountModels> getByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * FROM accounts");
		sql.append("WHERE name=?%");

		List<AccountModels> result = get(sql.toString(), accountMap, name);
		return result;
	}
}
