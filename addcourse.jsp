<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Prevent caching
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    // Admin security check
    if (session.getAttribute("admin") == null) {
        response.sendRedirect("loginjsp.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-lg rounded-4">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Add New Course</h4>
                </div>

                <div class="card-body">

                    <!-- ✅ SUCCESS MESSAGE -->
                    <%
                        if ("1".equals(request.getParameter("success"))) {
                    %>
                        <div class="alert alert-success text-center">
                            Course added successfully!
                        </div>
                    <%
                        }
                    %>

                    <form action="AddCourse" method="post">

                        <div class="mb-3">
                            <label class="form-label">Course Name</label>
                            <input type="text" name="cname" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Course Type</label>
                            <input type="text" name="ctype" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Duration</label>
                            <input type="text" name="duration" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Fee</label>
                            <input type="number" name="fee" class="form-control" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">
                                Add Course
                            </button>
                        </div>

                    </form>
                </div>

                <div class="card-footer text-center">
                    <a href="courses.jsp" class="btn btn-link">Back to Courses</a>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>
