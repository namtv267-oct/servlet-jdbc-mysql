package dao;

import java.util.List;

import model.AccountModels;

public interface IAccountDAO extends ICRUD<AccountModels> {
	void createAccount(AccountModels account);

	AccountModels getByEmail(String email);
	List<AccountModels> getByName(String name);
}
