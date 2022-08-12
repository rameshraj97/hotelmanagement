<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Guest</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findguestbyid">
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" readonly="true"/>
					</div>
				</div>
				<label for="guestId">Guest_id</label>
					<div>
						<form:input path="guestId" readonly="true"/>
					</div>
				<div>
					<label for="firstName">F_name</label>
					<div>
						<form:input path="firstName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastName">L_name</label>
					<div>
						<form:input path="lastName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNo">Num_rooms</label>
					<div>
						<form:input path="phoneNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Phone_no</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">Address</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="gender">Email</label>
					<div>
						<form:radiobutton path="gender" value="Male"/>Male
						<form:radiobutton path="gender" value="Female"/>Female
					</div>
				</div>
				<div>
					<label for=" dob">Gender</label>
					<div>
						<form:input type ="date" path ="dob" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">Dob</label>
					<div>
						<form:input path="aadharNumber" readonly="true"/>
					</div>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>