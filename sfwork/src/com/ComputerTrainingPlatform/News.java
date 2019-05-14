package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class News {
	private int id;
	private String newsTitle;
	private String newsContent;
	private String newsDeliver;
	private Date newsDate;
	
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsDeliver() {
		return newsDeliver;
	}
	public void setNewsDeliver(String newsDeliver) {
		this.newsDeliver = newsDeliver;
	}
	
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setNewsTitle(rs.getString("title"));
			this.setNewsContent(rs.getString("content"));
			this.setNewsDeliver(rs.getString("deliver"));
			this.setNewsDate(rs.getTimestamp("ndate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public Date getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
