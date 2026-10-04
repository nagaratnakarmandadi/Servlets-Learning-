package com.register.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.register.model.Student;
import com.register.model.StudentLogin;
import com.register.utility.DBConnection;

public class StudentDao implements StudentDaoInterface {
	Connection con = null;
	String status = "fail";

	@Override
	public String insertUser(Student s) {
		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?)");
			ps.setString(1, s.getUserName());
			ps.setString(2, s.getFirstName());
			ps.setString(3, s.getLastName());
			ps.setString(4, s.getPassword());
			int n = ps.executeUpdate();
			if (n > 0) {
				status = "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public String selectStudentByUser(StudentLogin s1) {
		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from register where username=? and password = ?");
			ps.setString(1, s1.getUsername());
			ps.setString(2, s1.getPassword());
			ResultSet rs = ps.executeQuery();
			int count = 0;
			while (rs.next()) {
				count++;
			}
			if (count > 0) {
				status = "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	@Override
	public List<Student> getAllStudents() {

		List<Student> students = new ArrayList<>();

		try {
			DBConnection db = new DBConnection();
			con = db.getConnection();

			PreparedStatement ps = con.prepareStatement("select username, firstname, lastname, password from register");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Student s = new Student();

				s.setUserName(rs.getString("username"));
				s.setFirstName(rs.getString("firstname"));
				s.setLastName(rs.getString("lastname"));
				s.setPassword(rs.getString("password"));

				students.add(s);
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return students;
	}

}
