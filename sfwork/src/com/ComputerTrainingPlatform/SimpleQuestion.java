package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SimpleQuestion {
	private int id;
	private String title;
	private String answer;
	private int difficulty;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getDifficulty() {
		return difficulty;
	}

	public void setDifficulty(int difficulty) {
		this.difficulty = difficulty;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setTitle(rs.getString("title"));
			this.setAnswer(rs.getString("answer"));
			this.setDifficulty(rs.getInt("difficulty"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
