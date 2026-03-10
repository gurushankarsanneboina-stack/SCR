<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

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

/* Card */
.card {
    width: 100%;
    max-width: 420px;
    border-radius: 15px;
    animation: slideUp 0.8s ease;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    background: white;
    color: black;
}

/* Slide Up Animation */
@keyframes slideUp {
    from {
        transform: translateY(40px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

/* Input Focus */
.form-control:focus {
    box-shadow: none;
    border-color: #764ba2;
}

/* Buttons */
.btn-custom {
    background: #764ba2;
    color: white;
    border: none;
}
.btn-custom:hover {
    background: #5a3f8c;
}

.btn-login {
    background: white;
    color: #764ba2;
    border: 2px solid #764ba2;
}
.btn-login:hover {
    background: #764ba2;
    color: white;
}
</style>
</head>

<body>

<div class="card p-4">
    <h3 class="text-center mb-4 fw-bold">Student Registration</h3>

    <!-- Registration Form -->
    <form action="StudentRegister" method="post">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" name="name" class="form-control" placeholder="Enter your name" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" name="password" class="form-control" placeholder="Enter password" required>
        </div>
          
        <!-- Register Button -->
        <div class="d-grid mb-2">
            <button type="submit" class="btn btn-custom text-white">
                Register
            </button>
        </div>
    </form>

    <!-- Login Button -->
    <div class="d-grid mb-3">
        <a href="loginjsp.jsp" class="btn btn-login">Login</a>
    </div>

</div>
</body>
</html>
