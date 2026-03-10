package com.vcube.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.vcube.dao.CourseDAO;
import com.vcube.model.Course;

@WebServlet("/UpdateCourseServlet")
public class UpdateCourseServelt extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int cid = Integer.parseInt(request.getParameter("cid"));
        String cname = request.getParameter("cname");
        String duration = request.getParameter("duration");
        double fee = Double.parseDouble(request.getParameter("fee"));

        Course c = new Course();
        c.setCid(cid);
        c.setCname(cname);
        c.setDuration(duration);
        c.setFee(fee);

        CourseDAO dao = new CourseDAO();
        dao.updateCourse(c);

        response.sendRedirect("courses.jsp");
    }
}
