package service;

import javax.inject.Inject;

import dao.IAccountDAO;
import dto.DTO;
import model.AccountModels;

public class AccountService implements IAccountService {
	@Inject
	private IAccountDAO accountDAO;

	@Override
	public void createAccount(AccountModels account) {
		accountDAO.createAccount(account);
	}

	@Override
	public DTO<AccountModels> isExisted(AccountModels account) {
		AccountModels ac = accountDAO.getByEmail(account.getUsermail());
		DTO<AccountModels> dto = new DTO<AccountModels>();

		if (account.equals(ac)) {
			dto.setStatus(true);
			dto.setComment("Login successful !");
			dto.setData(ac);
		} else {
			dto.setStatus(false);
			dto.setComment("Login fail !");
			dto.setData(null);
		}

		return dto;
	}

}
