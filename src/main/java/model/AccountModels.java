package model;

import java.util.Objects;

public class AccountModels {
	private Long id;

	private String usermail;
	private String password;
	private Integer role;
	private String fullname;
	private String phoneNumber;

	public AccountModels() {
		super();
	}

	public AccountModels(String usermail, String password, Integer role, String fullname, String phoneNumber) {
		super();
		this.usermail = usermail;
		this.password = password;
		this.role = role;
		this.fullname = fullname;
		this.phoneNumber = phoneNumber;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public int hashCode() {
		return Objects.hash(password, usermail);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AccountModels other = (AccountModels) obj;
		return Objects.equals(password, other.password) && Objects.equals(usermail, other.usermail);
	}
	
	

}
