<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bill</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatebill" method="post" modelAttribute="updatebill">
			<div>
				    <h1>Guest Invoice</h1>
					<label for="invoice">Invoice</label>
					<div>
						<form:input path="invoice" />
					</div>
				</div>
				<div>
					<label for="guestId">GuestId</label>
					<div>
						<form:input path="guestId" />
					</div>
				</div>
				<div>
					<label for="roomCharge">RoomCharge</label>
					<div>
					  <form:checkbox path="roomCharge" value="${80}"/> Key-80
					  <form:checkbox path="roomCharge" value="${250}"/>Pillow-250
					  <form:checkbox path="roomCharge" value="${200}"/>BetSheet-300
					  <form:checkbox path="roomCharge" value="${100}"/>Remotecontrol(TV)-150
					  <form:checkbox path="roomCharge" value="${150}"/>Remotecontrol(Air)-200
					  <form:checkbox path="roomCharge" value="${120}"/>Glass-90
					  <form:checkbox path="roomCharge" value="${220}"/>Kettle-120
					</div>
				</div>
				<div>
					<label for="invoiceDate">Invoicedate</label>
					<div>
							<form:input type ="date" path ="invoiceDate"  />
					</div>
				  </div>
				<label for="reservationNumber">ReservationNumber</label>
					<div>
						<form:input path="reservationNumber" />
					</div>
				    <div>
					<label for="paymentMode">Payment_Mode</label>
					<div>
						<form:radiobutton path="paymentMode" value="DebitCard"/>DebitCard
						<form:radiobutton path="paymentMode" value="Cash"/>Cash
					</div>
				</div>
				<div>
					<label for="invoiceStatus">InvoiceStatus</label>
					<div>
					    <form:radiobutton path="invoiceStatus" value="Yes"/>Yes
						<form:radiobutton path="invoiceStatus" value="No"/>No
					</div>
				</div>
				<div>
				<form:button>update Bill</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>