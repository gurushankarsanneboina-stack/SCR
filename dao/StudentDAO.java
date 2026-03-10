package com.vcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vcube.model.Student;
import com.vcube.utility.DBconnection;

public class StudentDAO {
	public static boolean register(Student s) {
		try {
			Connection con = DBconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO student(name,email,password) VALUES(?,?,?)");
			ps.setString(1, s.getName());
			ps.setString(2, s.getEmail());
			ps.setString(3, s.getPassword());
			return ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static Student login(String username, String password) {
		Student s = null;
		try {
			Connection con = DBconnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE email=? AND password=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				s = new Student();
				s.setSid(rs.getInt("sid"));
				s.setName(rs.getString("name"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
}
