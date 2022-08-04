<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel & Reservation List</title>
</head>
<body>
	<div id="root">
		<div id="form">
		<form:form action="add" method="post" modelAttribute="gethotel">
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
					<form:button>Add Hotel</form:button>
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