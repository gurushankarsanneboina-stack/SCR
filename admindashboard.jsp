<%@ page language="java"%>
<%
if(session.getAttribute("admin")==null){
    response.sendRedirect("adminlogin.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard</title>
</head>
<body>

<h2>Welcome Admin</h2>

<ul>
    <li><a href="addcourse.jsp">Add Course</a></li>
    <li><a href="../LogoutServlet">Logout</a></li>
</ul>

</body>
</html>
