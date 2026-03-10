package com.vcube.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.vcube.dao.AdminDAO;
import com.vcube.dao.StudentDAO;
import com.vcube.model.Student;

@WebServlet("/LoginServlet")
public class studentlogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String role = request.getParameter("role");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println("ROLE = [" + role + "]");
		System.out.println("USE RNAME = " + username);

		HttpSession session = request.getSession(true);

		// ADMIN LOGIN
		if (role != null && role.trim().equalsIgnoreCase("admin")) {

			boolean isAdmin = AdminDAO.login(username, password);
			System.out.println("IS ADMIN = " + isAdmin);
			System.out.println(password);
			if (isAdmin) {
				
				session.setAttribute("admin", username);
				RequestDispatcher rd = request.getRequestDispatcher("AdminDash.jsp")	;
				rd.forward(request, response);
				
			} else {
//				response.sendRedirect("loginjsp.jsp");\
				System.out.println("no response ###################################3");
			}
		}
		// STUDENT LOGIN
		else if (role != null && role.trim().equalsIgnoreCase("student")) {

			Student student = StudentDAO.login(username, password);

			if (student != null) {
				session.setAttribute("student", student);
				response.sendRedirect("dashboard.jsp");
			} else {
				response.sendRedirect("loginjsp.jsp?error=student");
			}

		}
		// ROLE NOT SELECTED
		else {
			response.sendRedirect(request.getContextPath() + "/loginjsp.jsp?error=role");
		}
	}
}

