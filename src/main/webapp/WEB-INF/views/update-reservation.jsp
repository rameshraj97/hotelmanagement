<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Reservation</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatereservation" method="post" modelAttribute="updatereservation">
				<div>
					<label for="reservationNumber">Res_num</label>
					<div>
						<form:input path="reservationNumber" />
					</div>
				</div>
				<div>
					<label for="guestId">GuestId</label>
					<div>
						<form:input path="guestId" />
					</div>
				</div>
				<div>
				
				</div>
				<div>
					<label for="roomId">RoomId</label>
					<div>
						<form:input path="roomId" />
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
					<label for="noOfPersons">No_ofPersons</label>
					<div>
					<form:radiobutton path="noOfPersons" value="${1}" />
					1
					<form:radiobutton path="noOfPersons" value="${2}" />
					2
					<form:radiobutton path="noOfPersons" value="${3}" />
					3
					<form:radiobutton path="noOfPersons" value="${4}" />
					4
					<form:radiobutton path="noOfPersons" value="${5}" />
					5
					</div>
				</div>
				<div>
					<label for="paymentStatus">Payment_status</label>
					<div>
						<form:radiobutton path="paymentStatus" value="Card"/>Card
						<form:radiobutton path="paymentStatus" value="Cash"/>Cash
					</div>
				</div>
				<div>
					<form:button>update Reservation</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>