<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guest & Reservation list</title>
</head>
<style>
body {
  background-image: url('https://assets.isu.pub/document-structure/200413202426-1b8d31de75b482060822bd528f5e2883/v1/2db9f30fb3cf2fa7a8010aa8ce6ee235.jpg');
}
</style>
<body>

    
 <h1 >Guest & Reservation list</h1>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getguest">
				<div>
					<label for="guestId">Guestd</label>
					<div>
						<form:input path="guestId" />
					</div>
				</div>
				<div>
					<label for="firstName">FirstName</label>
					<div>
						<form:input path="firstName" />
					</div>
				</div>
				<div>
					<label for="lastName">LastName</label>
					<div>
						<form:input path="lastName" />
					</div>
				</div>
				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber" />
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
	
	<div id="Table root"></div>
	<table border="2" width="100%" cellpadding="2">
		<thead>
			<tr>
				<th>ReservationNumber</th>
				<th>GuestId</th>
				<th>RoomId</th>
				<th>ReservationDate</th>
				<th>FromDate</th>
				<th>ToDate</th>
				<th>No_ofPersons</th>
				<th>PaymentStatus</th>
				<th></th>
				
				</tr>
		</thead>
		<tbody>
				<!-- var-variables,items-collection -->
				<tr>
					<td>${reservationdetails.reservationNumber}</td>
					<td>${reservationdetails.guestId}</td>
					<td>${reservationdetails.roomId}</td>
					<td>${reservationdetails.reservationDate}</td>
					<td>${reservationdetails.fromDate}</td>
					<td>${reservationdetails.toDate}</td>
					<td>${reservationdetails.noOfPersons}</td>
					<td>${reservationdetails.paymentStatus}</td>
					

				</tr>
				<h2>Thank You Booked</h2> 
		</tbody>

	
</body>
</html>