package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ScoreSimple {
	private int id;
	private String title;
	private String answer;
	private String scorenumber;

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

	public String getScorenumber() {
		return scorenumber;
	}

	public void setScorenumber(String scorenumber) {
		this.scorenumber = scorenumber;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setTitle(rs.getString("title"));
			this.setAnswer(rs.getString("answer"));
			this.setScorenumber(rs.getString("score_number"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
