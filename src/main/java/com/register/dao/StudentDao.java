package com.register.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.register.model.Student;
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

}
