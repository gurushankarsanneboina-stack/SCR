package com.vcube.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.vcube.dao.CourseDAO;

@WebServlet("/DeleteCourseServlet")
public class DeleteCourseServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int cid = Integer.parseInt(request.getParameter("cid"));

        CourseDAO dao = new CourseDAO();
        dao.deleteCourse(cid);

        // Redirect back to admin course list
        response.sendRedirect("courses.jsp");
    }
}
