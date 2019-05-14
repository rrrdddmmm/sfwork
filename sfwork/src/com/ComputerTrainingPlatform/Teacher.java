package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Teacher {
	private String teacherName;
	private String teacherNumber;
	private String teacherCourse;
	private String teacherStudentno;
	private String email;

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherNumber() {
		return teacherNumber;
	}

	public void setTeacherNumber(String teacherNumber) {
		this.teacherNumber = teacherNumber;
	}

	public String getTeacherCourse() {
		return teacherCourse;
	}

	public void setTeacherCourse(String teacherCourse) {
		this.teacherCourse = teacherCourse;
	}

	public String getTeacherStudentno() {
		return teacherStudentno;
	}

	public void setTeacherStudentno(String teacherStudentno) {
		this.teacherStudentno = teacherStudentno;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setTeacherNumber(rs.getString("teacher_number"));
			this.setTeacherName(rs.getString("teacher_name"));
			this.setTeacherCourse(rs.getString("teacher_course"));
			this.setTeacherStudentno(rs.getString("teacher_studentno"));
			this.setEmail(rs.getString("email"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
