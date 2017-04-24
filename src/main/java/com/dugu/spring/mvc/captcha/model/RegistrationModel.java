package com.dugu.spring.mvc.captcha.model;

public class RegistrationModel {

	private String sex;
	private String email;
	private String password;
	private String confirmPassword;

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "RegistrationModel [sex=" + sex + ", email=" + email
				+ ", password=" + password + ", confirmPassword="
				+ confirmPassword + "]";
	}

}
