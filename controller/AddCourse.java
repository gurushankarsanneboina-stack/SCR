package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.CourseDAO;
import com.vcube.model.Course;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddCourse")
public class AddCourse extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cname = request.getParameter("cname");
        String ctype = request.getParameter("ctype");
        String duration = request.getParameter("duration");
        double fee = Double.parseDouble(request.getParameter("fee"));

        Course course = new Course(cname, ctype, duration, fee);
        CourseDAO courseDAO = new CourseDAO();

        boolean status = courseDAO.addCourse(course);

        if (status) {
            response.sendRedirect("courses.jsp");
        } else {
            response.sendRedirect("addcourse.jsp");
        }
    }
}
