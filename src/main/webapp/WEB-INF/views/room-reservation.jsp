<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getroom">
				<div>
					<label for="roomId">Room_id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">Room_type</label>
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
				<label for="payDayrate">Pay_dayrate</label>
					<div>
						<form:input path="payDayrate" />
					</div>
				    <div>
					<label for="withToilet">With_toilet</label>
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
	<table border="2" width="100%" cellpadding="2">
		<thead>
			<tr>
				<th>Res_num</th>
				<th>Guest_id</th>
				<th>Hotel_id</th>
				<th>Room_id</th>
				<th>Res_date</th>
				<th>From_date</th>
				<th>To_date</th>
				<th>No_of_persons</th>
				<th>Payment_status</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach var="reservation" items="${reservationdetails}">
				<!-- var-variables,items-collection -->
				<tr>
					<td>${reservation.reservationNumber}</td>
					<td>${reservation.guestId}</td>
					<td>${reservation.hotelId}</td>
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
