package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
	private String userName;
	private String userPassword;
	private int userClass;
	private String email;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public int getUserClass() {
		return userClass;
	}

	public void setUserClass(int userClass) {
		this.userClass = userClass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setUserName(rs.getString("username"));
			this.setUserPassword(rs.getString("userpassword"));
			this.setUserClass(rs.getInt("userclass"));
			this.setEmail(rs.getString("email"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
