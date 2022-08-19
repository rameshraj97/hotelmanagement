<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.hotelManagement.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<style>
<%@include file="views1/addreservation.css"%>
text-align ="center";
</style>

<title>Add Reservation</title>
</head>
<body>
   <div id="registration-form">
	<h1>Room Reservation</h1>
		<div id="form "class="fieidset">
			<form:form action="add" method="post" modelAttribute="addreservation">
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
					<form:input type ="date" path ="reservationDate" value="<%=Logic.getSystemDate()%>" />
					</div>
				    <div>
					<label for="fromDate">FromDate</label>
					<div>
						<form:input type ="date" path ="fromDate" min="<%=Logic.getSystemDate()%>" required="true"  />
					</div>
				</div>
				<div>
					<label for="toDate">ToDate</label>
					<div>
					<form:input type ="date" path ="toDate" min="<%=Logic.getSystemDate()%>" required="true"  />
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
					<form:radiobutton path="noOfPersons" value="${4}" required="true" />
					4
					<form:radiobutton path="noOfPersons" value="${5}" required="true" />
					5
					</div>
				</div>
				<div>
					<label for="paymentStatus">PaymentStatus</label>
					<div>
						<form:radiobutton path="paymentStatus" value="Card" required="true" />Card
						<form:radiobutton path="paymentStatus" value="Cash" required="true" />Cash
					</div>
					</div>
				<div>
					<footer>
					<button type="submit"  class="signupbtn" >Submit</button>
					<button type="reset" class="cancelbtn" >Reset</button>
					<button onclick="document.location='/home/guestlogin?roomId=1002'" style="float:left">Back</button>
				</footer>
				</div>
			</form:form>
		</div>
	</div>
</body>

</html>