package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Notice {
	private int id;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private String noticeDeliver;

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeDeliver() {
		return noticeDeliver;
	}

	public void setNoticeDeliver(String noticeDeliver) {
		this.noticeDeliver = noticeDeliver;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setNoticeTitle(rs.getString("notice_title"));
			this.setNoticeContent(rs.getString("notice_content"));
			this.setNoticeDate(rs.getTimestamp("notice_date"));
			this.setNoticeDeliver(rs.getString("notice_deliver"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
