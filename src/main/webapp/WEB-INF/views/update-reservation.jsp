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
					<label for="guestId">Guest_id</label>
					<div>
						<form:input path="guestId" />
					</div>
				</div>
				<div>
					<label for="hotelId">Hotel_code</label>
					<div>
						<form:input path="hotelId" />
					</div>
				</div>
				<div>
					<label for="roomId">Room_id</label>
					<div>
						<form:input path="roomId" />
					</div>
				  </div>
				<label for="reservationDate">Res_date</label>
					<div>
						<form:input path="reservationDate" />
					</div>
				    <div>
					<label for="fromDate">From_date</label>
					<div>
						<form:input path="fromDate" />
					</div>
				</div>
				<div>
					<label for="toDate">ToDate</label>
					<div>
						<form:input path="toDate" />
					</div>
				</div>
				<div>
					<label for="noOfPersons">No_of_persons</label>
					<div>
						<form:input path="noOfPersons" />
					</div>
				</div>
				<div>
					<label for="fromDate">Payment_status</label>
					<div>
						<form:input path="paymentStatus" />
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