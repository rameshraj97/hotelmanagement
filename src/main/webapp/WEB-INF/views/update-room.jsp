<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateroom" method="post" modelAttribute="updateroom">
				<div>
							<label for="roomId">Room_id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">Room_type</label>
					<div>
						<form:radiobutton path="roomType" value="Single Room" />
						Single Room
						<form:radiobutton path="roomType" value="Twin Room" />
						Twin Room
						<form:radiobutton path="roomType" value="Penthouse Suite" />
						Penthouse Suite
					</div>
				</div>
				<div>
					<label for="capacity">Capacity</label>
					<div>
						<form:radiobutton path="capacity" value="single Room type " />
						Single Room
						<form:radiobutton path="capacity" value="Tiwn Room " />
						Tiwn Room
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
						<ul>
							<h1>Select RoomStatus</h1>
							<ul>
								<li>Occupied.</li>
								<li>Vacant & Dirty.</li>
								<li>Occupied & Ready.</li>
								<li>Occupied & Clean.</li>
								<li>Out of Order.</li>
								<li>Do Not Disturb..</li>
							</ul>
						</ul>
					</div>
				</div>
				<label for="payDayrate">Pay_dayrate</label>
				<div>
					<form:radiobutton path="payDayrate" value="${5500}" />
					5500
					<form:radiobutton path="payDayrate" value="${6000}" />
					6000
					<form:radiobutton path="payDayrate" value="${7500}" />
					7500
					<form:radiobutton path="payDayrate" value="${8000}" />
					8000
				</div>
				<div>
					<label for="withToilet">With_Toilet</label>
					<div>
					<form:radiobutton path="withToilet" value="Gravity-Fed" />Gravity-Fed
					<form:radiobutton path="withToilet" value="Pressure-Assisted" />Pressure-Assisted
					</div>
				</div>
				<div>
				  <label for="availabity">Availabity</label>
					<div>
						<form:input path="availabity" />
					</div>
				<div>
					<form:button>update Room</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>