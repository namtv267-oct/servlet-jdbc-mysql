package service;

import dto.DTO;
import model.AccountModels;

public interface IAccountService {
	void createAccount(AccountModels account);

	DTO<AccountModels> isExisted(AccountModels account);
	
}
