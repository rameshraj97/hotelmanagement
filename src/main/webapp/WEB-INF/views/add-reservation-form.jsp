<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Reservation</title>
</head>
<body>
<h1>Room Reservation</h1>
	<div id="root">
		<div id="form">
			<form:form action="reservationadd" method="post" modelAttribute="addreservation">
				<div>
					<label for="guestId">GuestId</label>
					<div>
						<form:input path="guestId" value="${guestId}" />
					</div>
				</div>
				
				<div>
					<label for="roomId">RoomId</label>
					<div>
						<form:input path="roomId" value="${roomId}" />
					</div>
				  </div>
				<label for="reservationDate">ReservationDate</label>
					<div>
						<form:input type ="date" path ="reservationDate" />
					</div>
				    <div>
					<label for="fromDate">FromDate</label>
					<div>
						<form:input type ="date" path ="fromDate" />
					</div>
				</div>
				<div>
					<label for="toDate">ToDate</label>
					<div>
					<form:input type ="date" path ="toDate" />
					</div>
				</div>
				<div>
					<label for="noOfPersons">NoOfPersons</label>
					<div>
					<form:radiobutton path="noOfPersons" value="${1}" required="true" />
					1
					<form:radiobutton path="noOfPersons" value="${2}" required="true" />
					2
					<form:radiobutton path="noOfPersons" value="${3}" required="true" />
					3
					<form:radiobutton path="noOfPersons" value="${4}" required="true"/>
					4
					<form:radiobutton path="noOfPersons" value="${5}" required="true"/>
					5
					</div>
				</div>
				<div>
					<label for="paymentStatus">PaymentStatus</label>
					<div>
						<form:radiobutton path="paymentStatus" value="Card"/>Card
						<form:radiobutton path="paymentStatus" value="Cash"/>Cash
					</div>
				</div>
				<div>
					<form:button >submit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>