package com.vcube.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.vcube.model.Course;
import com.vcube.utility.DBconnection;

public class CourseDAO {
	
	public static boolean addCourse(Course c) {
	    try {
	        Connection con = DBconnection.getConnection();

	        String sql = "INSERT INTO course (cname, ctype, duration, fee) VALUES (?,?,?,?)";
	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, c.getCname());
	        ps.setString(2, c.getCtype());
	        ps.setString(3, c.getDuration());
	        ps.setDouble(4, c.getFee());

	        return ps.executeUpdate() > 0;

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}


	    public List<Course> getAllCourses() {
	        List<Course> list = new ArrayList<>();
	        try {
	            Connection con = DBconnection.getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM course");
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                Course c=new Course(rs.getInt(1),rs.getString(2),rs.getString(3),
	                		rs.getString(4),rs.getDouble(5));
	               list.add(c) ;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        System.out.println("--->"+list);
	        return list;
	    }
	    
	    public Course getCourseById(int cid) {
	        List<Course> list = new ArrayList<>();
	        try {
	            Connection con = DBconnection.getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM course WHERE cid=?");
	            ps.setInt(1, cid);

	            ResultSet rs = ps.executeQuery();


	            if (rs.next()) {
	                Course c=new Course(rs.getInt(1),rs.getString(2),rs.getString(3),
	                		rs.getString(4),rs.getDouble(5));
	               return c ;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        System.out.println("--->"+list);
	        return null;
	    }
	    
	    
	    public boolean deleteCourse(int cid) {

	        boolean status = false;

	        try {
	            Connection con = DBconnection.getConnection();

	            String sql = "DELETE FROM course WHERE cid = ?";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setInt(1, cid);

	            int rows = ps.executeUpdate();
	            if (rows > 0) {
	                status = true;
	            }

	            con.close();

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return status;
	    }
	    public boolean updateCourse(Course c) {

	        boolean status = false;

	        try {
	            Connection con = DBconnection.getConnection();
	            String sql = "UPDATE course SET cname=?, duration=?, fee=? WHERE cid=?";
	            PreparedStatement ps = con.prepareStatement(sql);

	            ps.setString(1, c.getCname());
	            ps.setString(2, c.getDuration());
	            ps.setDouble(3, c.getFee());
	            ps.setInt(4, c.getCid());

	            int rows = ps.executeUpdate();
	            if(rows > 0) status = true;

	            con.close();

	        } catch(Exception e) {
	            e.printStackTrace();
	        }
	        return status;
}
}

