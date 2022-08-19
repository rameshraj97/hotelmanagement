<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>EmployeeLogin</title>
<link
	href="https://img.freepik.com/premium-vector/modern-flat-website-login-page-templates_2095-182.jpg?size=626&ext=jpg&ga=GA1.2.467357254.1659891556"
	rel="stylesheet">
<style>
<%@includefile="views1/guestlogin.css"%>
</style>
</head>

<body>

	<div id="conteiner">
		<form:form action="userlogin" method="post" modelAttribute="employee">

			<p>Login</p>

			<label for="empId">Id</label>
			<br>
			<form:input path="empId" />
			<label for="email">Email</label>
			<br>
			<form:input path="email" />
			<form:button>Login</form:button>

			<div>
				<a href="/room/addform">Sign Up</a>
			</div>
		</form:form>
		<div>${message}</div>
		</div>
</body>

</html>