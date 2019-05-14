package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Message {
	private int id;
	private String title;
	private String info;
	private Date mdate;

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

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setTitle(rs.getString("title"));
			this.setInfo(rs.getString("info"));
			this.setMdate(rs.getTimestamp("mdate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Date getMdate() {
		return mdate;
	}

	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
}
