<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatehotel" method="post" modelAttribute="updatehotel">
				<div>
					<label for="hotelId">Hotel_id</label>
					<div>
						<form:input path="hotelId" />
					</div>
				</div>
				<div>
					<label for="hotelName">Hotel_name</label>
					<div>
						<form:input path="HotelName" />
					</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" />
					</div>
				</div>
				<div>
					<label for="numberOfRooms">Numof_rooms</label>
					<div>
						<form:input path="numberOfRooms" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="phoneNo">phone_no</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="website">Website</label>
					<div>
						<form:input path="Website" />
					</div>
				</div>
				<div>
					<form:button>Update Hotel</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
