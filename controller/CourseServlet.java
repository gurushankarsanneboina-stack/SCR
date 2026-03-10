package com.vcube.controller;

import java.io.IOException;
import java.util.List;

import com.vcube.dao.CourseDAO;
import com.vcube.model.Course;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/courses")
public class CourseServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CourseDAO dao = new CourseDAO();
        List<Course> list = dao.getAllCourses();

        request.setAttribute("courseList", list);
        RequestDispatcher rd = request.getRequestDispatcher("courses.jsp");
        rd.forward(request, response);
    }
}
