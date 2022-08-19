<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>New Guest booked Details</h1>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getroom">
				<div>
					<label for="roomId">RoomId</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">RoomType</label>
					<div>
						<form:input path="roomType" />
					</div>
				</div>
				<div>
					<label for="capacity">Capacity</label>
					<div>
						<form:input path="capacity" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				  </div>
				<label for="payDayrate">Payrate</label>
					<div>
						<form:input path="payDayrate" />
					</div>
				    <div>
					<label for="withToilet">WithToilet</label>
					<div>
						<form:input path="withToilet" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<div id="Table root"></div>
	<table style="border:2 width:100%"><caption></caption>
		<thead>
			<tr>
				<th>ReservationNumber</th>
				<th>GuestId</th>
				<th>RoomId</th>
				<th>ReservationDate</th>
				<th>FromDate</th>
				<th>ToDate</th>
				<th>NoofPersons</th>
				<th>PaymentStatus</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach var="reservation" items="${reservationdetails}">
				<!-- var-variables,items-collection -->
				<tr>
					<td>${reservation.reservationNumber}</td>
					<td>${reservation.guestId}</td>
				    <td>${reservation.roomId}</td>
					<td>${reservation.reservationDate}</td>
					<td>${reservation.fromDate}</td>
					<td>${reservation.toDate}</td>
					<td>${reservation.noOfPersons}</td>
					<td>${reservation.paymentStatus}</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
