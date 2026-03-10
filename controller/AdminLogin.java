package com.vcube.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.dao.AdminDAO;

	@WebServlet("/AdminLogin")
	public class AdminLogin extends HttpServlet {
	    protected void doPost(HttpServletRequest req, HttpServletResponse res)
	            throws IOException {
	    	System.out.println("hudsbhbsdb");
	        String user = req.getParameter("username");
	        String pass = req.getParameter("password");

	        if (AdminDAO.login(user, pass)) {
	        	System.out.println("================");
	            req.getSession().setAttribute("admin", user);
	            res.sendRedirect("AdminDash.jsp");

	        } else {
	            res.sendRedirect("adminlogin.jsp?error=1");
	        }
	    }
	}


   
	
