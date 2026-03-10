package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.model.Student;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    protected void doPost(HttpServletRequest req, HttpServletResponse res)
	            throws IOException {

	        Student s = new Student();
	        s.setName(req.getParameter("name"));
	        s.setEmail(req.getParameter("email"));
	        s.setPassword(req.getParameter("password"));

	        StudentDAO.register(s);
	        res.sendRedirect("loginjsp.jsp");
	    }
	}