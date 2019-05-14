package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Course {
	private int id;
	private String courseNumber;
	private String courseTitle;
	private String courseTeacher;
	private String courseInfo;
	private int courseType;
	private String deliver;
	private String filename;
	private Date date;
	public String getCourseNumber() {
		return courseNumber;
	}

	public void setCourseNumber(String courseNumber) {
		this.courseNumber = courseNumber;
	}

	public int getCourseType() {
		return courseType;
	}

	public void setCourseType(int courseType) {
		this.courseType = courseType;
	}


	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public String getCourseTeacher() {
		return courseTeacher;
	}

	public void setCourseTeacher(String courseTeacher) {
		this.courseTeacher = courseTeacher;
	}

	public String getCourseInfo() {
		return courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}

	
	public String getDeliver() {
		return deliver;
	}

	public void setDeliver(String deliver) {
		this.deliver = deliver;
	}


	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public void initFromRs(ResultSet rs) {
		try {
			this.setId(rs.getInt("id"));
			this.setCourseNumber(rs.getString("course_number"));
			this.setCourseTitle(rs.getString("title"));
			this.setCourseTeacher(rs.getString("teacher"));
			this.setCourseInfo(rs.getString("info"));
			this.setCourseType(rs.getInt("courseType"));
			this.setDeliver(rs.getString("deliver"));
			this.setFilename(rs.getString("filename"));
			this.setDate(rs.getDate("date"));
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
