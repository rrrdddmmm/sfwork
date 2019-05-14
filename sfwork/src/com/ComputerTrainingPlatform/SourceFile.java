package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class SourceFile {
	private int id;
	private String fileName;
	private String fileDeliver;
	private Date fileDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileDeliver() {
		return fileDeliver;
	}
	public void setFileDeliver(String fileDeliver) {
		this.fileDeliver = fileDeliver;
	}
	public Date getFileDate() {
		return fileDate;
	}
	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setFileName(rs.getString("filename"));
			this.setFileDeliver(rs.getString("filedeliver"));
			this.setFileDate(rs.getDate("filedate"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
