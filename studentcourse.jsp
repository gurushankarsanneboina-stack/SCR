</body>.<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="com.vcube.dao.CourseDAO" %>
<%@ page import="com.vcube.model.Course" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Courses</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
        padding: 30px;
    }
    .card {
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }
    .btn-custom {
        background: #764ba2;
        border: none;
        color: white;
    }
    .btn-custom:hover {
        background: #5a3f8c;
    }
    table th {
        background-color: #764ba2;
        color: white;
    }
</style>
</head>

<body>

<div class="container">
    <div class="card p-4">

        <div class="d-flex justify-content-between align-items-center mb-4">
            <h3 class="fw-bold">Available Courses 📚</h3>
            
        </div>

        <div class="table-responsive">
            <table class="table table-bordered table-hover text-center align-middle">
                <thead>
                    <tr>
                        <th>Course Name</th>
                        <th>Duration</th>
                        <th>Fee</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    CourseDAO dao = new CourseDAO();
                    List<Course> courseList = dao.getAllCourses();
                    System.out.print(courseList);
                    System.out.print(courseList);
                    if(courseList != null && !courseList.isEmpty()) {
                        for(Course c : courseList) {
                %>
                    <tr>
                        <td><%= c.getCname() %></td>
                        <td><%= c.getDuration() %></td>
                        <td><%= c.getFee() %></td>
                        <td>
                            <form action="CourseRegister" method="post">
                                <input type="hidden" name="cid" value="<%= c.getCid() %>">
                                <button type="submit" class="btn btn-success btn-sm">
                                    Register
                                </button>
                            </form>
                        </td>
                    </tr>
                <%
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="4" class="text-danger fw-bold">
                            No Courses Available
                        </td>
                    </tr>
                <%
                    }
                %>

                </tbody>
            </table>
        </div>

    </div>
</div>

</body>
</html>
</html>