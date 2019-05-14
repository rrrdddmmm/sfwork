package com.ComputerTrainingPlatform;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Student {
	private String studentNumber;
	private String studentName;
	private String studentSex;
	private String studentClass;
	private float studentGrade;
	private String studentCourseno;
	private String studentTestno;
	private String email;

	public String getStudentNumber() {
		return studentNumber;
	}

	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentSex() {
		return studentSex;
	}

	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}

	public String getStudentClass() {
		return studentClass;
	}

	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}

	public float getStudentGrade() {
		return studentGrade;
	}

	public void setStudentGrade(float studentGrade) {
		this.studentGrade = studentGrade;
	}

	public String getStudentCourseno() {
		return studentCourseno;
	}

	public void setStudentCourseno(String studentCourseno) {
		this.studentCourseno = studentCourseno;
	}

	public String getStudentTestno() {
		return studentTestno;
	}

	public void setStudentTestno(String studentTestno) {
		this.studentTestno = studentTestno;
	}
	
	public void initFromRs(ResultSet rs) {
		try {
			this.setStudentName(rs.getString("student_name"));
			this.setStudentNumber(rs.getString("student_number"));
			this.setStudentSex(rs.getString("student_sex"));
			this.setStudentClass(rs.getString("student_class"));
			this.setEmail(rs.getString("email"));
		} catch (SQLException e) {
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
