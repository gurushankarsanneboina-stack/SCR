<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.vcube.dao.CourseDAO" %>
<%@ page import="com.vcube.model.Course" %>

<%
    int cid = Integer.parseInt(request.getParameter("cid"));
    CourseDAO dao = new CourseDAO();
    Course c = dao.getCourseById(cid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Course</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
body{
    font-family:'Poppins',sans-serif;
    background:linear-gradient(135deg,#43cea2,#185a9d);
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
}
.card{
    width:480px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,.3);
}
</style>
</head>

<body>

<div class="card p-4">
    <h3 class="text-center mb-4 fw-bold">✏ Update Course</h3>

    <form action="UpdateCourseServlet" method="post">

        <!-- Hidden Course ID -->
        <input type="hidden" name="cid" value="<%= c.getCid() %>">

        <div class="mb-3">
            <label class="form-label">Course Name</label>
            <input type="text" name="cname" class="form-control"
                   value="<%= c.getCname() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Duration</label>
            <input type="text" name="duration" class="form-control"
                   value="<%= c.getDuration() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Fee</label>
            <input type="number" name="fee" class="form-control"
                   value="<%= c.getFee() %>" required>
        </div>

        <div class="d-flex justify-content-between">
            <button class="btn btn-success">Update</button>
            <a href="courses.jsp" class="btn btn-secondary">Cancel</a>
        </div>

    </form>
</div>

</body>
</html>

