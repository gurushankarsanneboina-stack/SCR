<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
if (session.getAttribute("admin") == null) {
	response.sendRedirect("adminlogin.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(135deg, #667eea, #764ba2);
	min-height: 100vh;
}

.navbar {
	animation: fadeDown 0.8s ease;
}

.dashboard-card {
	animation: fadeUp 0.9s ease;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

@
keyframes fadeDown {from { opacity:0;
	transform: translateY(-20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
@
keyframes fadeUp {from { opacity:0;
	transform: translateY(30px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
.btn-custom {
	background: #764ba2;
	border: none;
	color: #fff;
}

.btn-custom:hover {
	background: #5a3f8c;
}
</style>
</head>

<body>

	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark px-4">
		<span class="navbar-brand fw-bold">Admin Dashboard</span>

		<div class="ms-auto">
			<a href="../LogoutServlet" class="btn btn-danger btn-sm"> Logout
			</a>
		</div>
	</nav>

	<!-- CONTENT -->
	<div
		class="container d-flex justify-content-center align-items-center mt-5">
		<div class="card dashboard-card p-4 text-center"
			style="max-width: 420px;">
			<h3 class="fw-bold mb-3">Welcome Admin 🎓</h3>
			<p class="text-muted">Manage your courses easily</p>
			<a href="courses.jsp" class="btn btn-custom w-100 mb-3"> View
				Courses </a> <a href="../LogoutServlet"
				class="btn btn-outline-danger w-100"> Logout </a>
		</div>
	</div>

</body>
</html>
