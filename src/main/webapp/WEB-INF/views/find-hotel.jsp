<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Hotel</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findhotelbyid">
				<div>
					<label for="hotelId">Hotel_id</label>
					<div>
						<form:input path="hotelId" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="hotelName">hotelName</label>
					<div>
						<form:input path="hotelName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="numberOfRooms">Num_rooms</label>
					<div>
						<form:input path="numberOfRooms" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="phoneNo">Phone_no</label>
					<div>
						<form:input path="phoneNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="website">Website</label>
					<div>
					<form:input path="website" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>