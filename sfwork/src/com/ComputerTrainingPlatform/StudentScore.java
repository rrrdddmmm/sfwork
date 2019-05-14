package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentScore {
	private String ssNumber;
	private double ssScore;

	public String getSsNumber() {
		return ssNumber;
	}

	public void setSsNumber(String ssNumber) {
		this.ssNumber = ssNumber;
	}

	public double getSsScore() {
		return ssScore;
	}

	public void setSsScore(double ssScore) {
		this.ssScore = ssScore;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setSsNumber(rs.getString("ssnumber"));
			this.setSsScore(rs.getDouble("ssscore"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
