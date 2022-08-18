<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Bill</title>
</head >
<style>
<%@include file="views1/addbill.css"%>
</style>
<body>
<h1>Bill Details</h1>
	<div id="root">
		<div id="form">
			<form:form action="addbill" method="post" modelAttribute="addbill">
				<div>
				    <h1>Guest Invoice</h1>
					<label for="invoice">Invoice</label>
					<div>
						<form:input path="invoice"  />
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
					<label for="paymentMode">PaymentMode</label>
					<div>
						<form:radiobutton path="paymentMode" value="DebitCard" required="true" />DebitCard
						<form:radiobutton path="paymentMode" value="Cash" required="true" />Cash
					</div>
				</div>
				<div>
					<label for="invoiceStatus">InvoiceStatus</label>
					<div>
					    <form:radiobutton path="invoiceStatus" value="Paid" required="true" />Paid
						<form:radiobutton path="invoiceStatus" value="NotPaid" required="true" />NotPaid
					</div>
				</div>
				   <form:button>submit</form:button>
				<div>
	          </div>
			</form:form>
		</div>
		<td><div>${result}</div></td>
	</div>
</body>
</html>