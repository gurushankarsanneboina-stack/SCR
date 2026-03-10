<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        width: 100%;
        max-width: 430px;
        border-radius: 15px;
        animation: slideDown 0.8s ease;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    @keyframes slideDown {
        from {
            transform: translateY(-40px);
            opacity: 0;
        }
        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .form-control:focus, .form-select:focus {
        box-shadow: none;
        border-color: #764ba2;
    }

    .btn-custom {
        background: #764ba2;
        border: none;
    }

    .btn-custom:hover {
        background: #5a3f8c;
    }
</style>
</head>

<body>

<div class="card p-4">
    <h3 class="text-center mb-3 fw-bold">Login</h3>

    <!-- 🔴 ERROR MESSAGE -->
    <%
        String error = request.getParameter("error");
        if ("admin".equals(error)) {
    %>
        <div class="alert alert-danger text-center">
            Invalid Admin credentials
        </div>
    <%
        } else if ("student".equals(error)) {
    %>
        <div class="alert alert-danger text-center">
            Invalid Student credentials
        </div>
    <%
        } else if ("role".equals(error)) {
    %>
        <div class="alert alert-warning text-center">
            Please select a role
        </div>
    <%
        }
    %>

    <form action="LoginServlet" method="post">

        <!-- Role Selection -->
        <div class="mb-3">
            <label class="form-label">Login As</label>
            <select name="role" class="form-select" required>
                <option value="">-- Select Role --</option>
                <option value="student">Student</option>
                <option value="admin">Admin</option>
            </select>
        </div>

        <!-- Email / Username -->
        <div class="mb-3">
            <label class="form-label">Email / Username</label>
            <input type="text" name="username" class="form-control"
                   placeholder="Enter email or admin id" required>
        </div>

        <!-- Password -->
        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control"
                   placeholder="Enter password" required>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-custom text-white">
                Login
            </button>
        </div>
    </form>

    <p class="text-center mt-3">
        New Student?
        <a href="register.jsp" class="fw-semibold text-decoration-none">
            Register Here
        </a>
    </p>
</div>

</body>
</html>
