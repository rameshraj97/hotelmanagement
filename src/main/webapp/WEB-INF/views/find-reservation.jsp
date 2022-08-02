<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Reservation</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findreservationbyid">
				<div>
					<label for="reservationNumber">Res_num</label>
					<div>
						<form:input path="reservationNumber" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="guestId">Guest_id</label>
					<div>
						<form:input path="guestId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="hotelId">Hotel_code</label>
					<div>
						<form:input path="hotelId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="roomId">room_id</label>
					<div>
						<form:input path="roomId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="reservationDate">Res_date</label>
					<div>
						<form:input path="reservationDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="fromDate">From_date</label>
					<div>
						<form:input path="fromDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="toDate">To_date</label>
					<div>
					<form:input path="toDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="noOfPersons">No_of_persons</label>
					<div>
					<form:input path="noOfPersons" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentStatus">Payment_status</label>
					<div>
					<form:input path="paymentStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>