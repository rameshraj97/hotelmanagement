<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateemployee" method="post" modelAttribute="updateemployee">
				<div>
					<label for="empId">Emp_id</label>
					<div>
						<form:input path="empId" />
					</div>
				</div>
				<div>
					<label for="firstName">F_name</label>
					<div>
						<form:input path="firstName" />
					</div>
				</div>
				<div>
					<label for="lastName">L_name</label>
					<div>
						<form:input path="lastName" />
					</div>
				</div>
				<div>
					<label for="phone">Phone</label>
					<div>
						<form:input path="phone" />
					</div>
				</div>
				<label for="dob">Dob</label>
				<div>
					<form:input type="date" path="dob" />
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
					</div>
				</div>
				<div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" />
						</div>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" />
						</div>
					</div>
					<div>
						<label for="role">Role</label>
						<div>
						<form:radiobutton path="role" value="hotel receptionist." />	
						hotel receptionist.
						</div>
						<div>
							<form:radiobutton path="role" value="maintance" />	
						maintance
						</div>
						<div>
						<form:radiobutton path="role" value="assistant hotel manager" />	
					   assistant hotel manager	
						</div>
					</div>
					<div>
						<label for="dateOfJoining">Date_of_joining</label>
						<div>
							<form:input type="date" path="dateOfJoining" />
						</div>
					</div>
					<div>
						<label for="department">Department</label>
						<div>
						<form:radiobutton path="department" value="front Office" />
						front Office	
						</div>
						<div>
						<form:radiobutton path="department" value="accounts" />
					    accounts
						</div>
						<div>
						<form:radiobutton path="department" value="housekeeping" />
					   housekeeping
						</div>
					</div>
				</div>
				<div>
					<label for="manager">Manager</label>
					<div>
						<form:input path="manager" />
					</div>
					<form:button>Update Employee</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>