package com.vcube.dao;
import java.sql.*;

import com.vcube.utility.DBconnection;

	public class AdminDAO {

	    public static boolean login(String user, String pass) {
	        try {
	            Connection con = DBconnection.getConnection();
	            PreparedStatement ps = con.prepareStatement(
	                "SELECT * FROM admin WHERE username=? AND password=?");
	            ps.setString(1, user);
	            ps.setString(2, pass);
	            ResultSet rs = ps.executeQuery();
	            return rs.next();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return false;
	    }
	}


