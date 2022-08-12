<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Employee</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findemployeebyid">
				<div>
					<label for="empId">Emp_id</label>
					<div>
						<form:input path="empId" readonly="true" />
					</div>
				</div>

				<div>
					<label for="firstName">Firstname</label>
					<div>
						<form:input path="firstName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastName">Lastname</label>
					<div>
						<form:input path="lastName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phone">Phone</label>
					<div>
						<form:input path="phone" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" readonly="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" readonly="true" />
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" readonly="true" />
						</div>
						<div>
							<label for="role">Role</label>
							<div>
								<form:input path="role" readonly="true" />
							</div>
							<div>
								<label for="dateOfjoining">Date_of_joining</label>
								<div>
									<form:input path="dateOfJoining" readonly="true" />
								</div>
								<div>
									<label for="department">Department</label>
									<div>
										<form:input path="department" readonly="true" />
									</div>
									<div>
										<label for="manager">Manager</label>
										<div>
								<form:input path="manager" readonly="true" />
							</div>
			      </form:form>
		   </div>
	</div>
</body>
</html>
