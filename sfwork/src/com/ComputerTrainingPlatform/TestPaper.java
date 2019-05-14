package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TestPaper {
	private String tpNumber;
	private int tpSelectEasy;
	private int tpSelectNormal;
	private int tpSelectDifficulty;
	private int tpSimpleEasy;
	private int tpSimpleNormal;
	private int tpSimpleDifficulry;
	private double tpSelectScore;
	private double tpSimpleScore;

	public double getTpSelectScore() {
		return tpSelectScore;
	}

	public void setTpSelectScore(double tpSelectScore) {
		this.tpSelectScore = tpSelectScore;
	}

	public double getTpSimpleScore() {
		return tpSimpleScore;
	}

	public void setTpSimpleScore(double tpSimpleScore) {
		this.tpSimpleScore = tpSimpleScore;
	}

	public String getTpNumber() {
		return tpNumber;
	}

	public void setTpNumber(String tpNumber) {
		this.tpNumber = tpNumber;
	}

	public int getTpSelectEasy() {
		return tpSelectEasy;
	}

	public void setTpSelectEasy(int tpSelectEasy) {
		this.tpSelectEasy = tpSelectEasy;
	}

	public int getTpSelectNormal() {
		return tpSelectNormal;
	}

	public void setTpSelectNormal(int tpSelectNormal) {
		this.tpSelectNormal = tpSelectNormal;
	}

	public int getTpSelectDifficulty() {
		return tpSelectDifficulty;
	}

	public void setTpSelectDifficulty(int tpSelectDifficulty) {
		this.tpSelectDifficulty = tpSelectDifficulty;
	}

	public int getTpSimpleEasy() {
		return tpSimpleEasy;
	}

	public void setTpSimpleEasy(int tpSimpleEasy) {
		this.tpSimpleEasy = tpSimpleEasy;
	}

	public int getTpSimpleNormal() {
		return tpSimpleNormal;
	}

	public void setTpSimpleNormal(int tpSimpleNormal) {
		this.tpSimpleNormal = tpSimpleNormal;
	}

	public int getTpSimpleDifficulry() {
		return tpSimpleDifficulry;
	}

	public void setTpSimpleDifficulry(int tpSimpleDifficulry) {
		this.tpSimpleDifficulry = tpSimpleDifficulry;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setTpNumber(rs.getString("peapernumber"));
			this.setTpSelectEasy(rs.getInt("selectEasy"));
			this.setTpSelectNormal(rs.getInt("selectNormal"));
			this.setTpSelectDifficulty(rs.getInt("selectDifficulty"));
			this.setTpSimpleEasy(rs.getInt("simpleEasy"));
			this.setTpSimpleNormal(rs.getInt("simpleNormal"));
			this.setTpSimpleDifficulry(rs.getInt("simpleDifficulty"));
			this.setTpSelectScore(rs.getDouble("selectScore"));
			this.setTpSimpleScore(rs.getDouble("simpleScore"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
