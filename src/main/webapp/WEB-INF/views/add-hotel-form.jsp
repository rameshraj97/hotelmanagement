<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Hotel</title>
</head>
<body>
	<div id="root">
		<div id="form">
		
			<form:form action="add" method="post" modelAttribute="addhotel">
				<div>
					<label for="hotelId">Hotel_id</label>
					<div>
						<form:input path="hotelId" />
					</div>
				</div>
				<div>
					<label for="hotelName">Hotel_name</label>
					<div>
						<form:input path="hotelName" />
					</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
						<form:input path="location" />
					</div>
				</div>
				<div>
					<label for="numberOfRooms">NumOfRooms</label>
					<div>
						<form:input path="numberOfRooms" />
					</div>
				  </div>
				<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				    <div>
					<label for=phoneNo>Phone_no</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for=website>Website</label>
					<div>
						<form:input path="website" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>