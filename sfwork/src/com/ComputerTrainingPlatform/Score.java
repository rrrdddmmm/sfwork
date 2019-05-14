package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Score {
	private String scoreNumber;
	private double scoreSgrade;
	private String testPaperNo;
	private int validation;

	public String getScoreNumber() {
		return scoreNumber;
	}

	public void setScoreNumber(String scoreNumber) {
		this.scoreNumber = scoreNumber;
	}

	public double getScoreSgrade() {
		return scoreSgrade;
	}

	public void setScoreSgrade(double scoreSgrade) {
		this.scoreSgrade = scoreSgrade;
	}

	public int getValidation() {
		return validation;
	}

	public void setValidation(int validation) {
		this.validation = validation;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setScoreNumber(rs.getString("score_number"));
			this.setScoreSgrade(rs.getDouble("score_sgrade"));
			this.setTestPaperNo(rs.getString("testpaperno"));
			this.setValidation(rs.getInt("validation"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public String getTestPaperNo() {
		return testPaperNo;
	}

	public void setTestPaperNo(String testPaperNo) {
		this.testPaperNo = testPaperNo;
	}
}
