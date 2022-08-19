<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="ISO-8859-1">
<title>find Bill</title>
</head>
<style>
<%@include file="views1/findbill.css"%>
text-align ="center";
</style>
<body>
<div id="registration-form">
	<h1> Bill Detalis</h1>
		<div id="form" class="fieldset">
			<form:form action="bookedDetails" method="post" modelAttribute="bill">
				<div>
					<label for="invoice">Invoice</label>
					<div>
						<form:input path="invoice" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="guestId">GuestId</label>
					<div>
						<form:input path="guestId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roomCharge">RoomCharge</label>
					<div>
						<form:input path="roomCharge" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceDate">Invoicedate</label>
					<div>
						<form:input path="invoiceDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="reservationNumber">ReservationNumber</label>
					<div>
						<form:input path="reservationNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentMode">PaymentMode</label>
					<div>
						<form:input path="paymentMode" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceStatus">InvoiceStatus</label>
					<div>
					<div>
					    <form:radiobutton path="invoiceStatus" value="Paid" required="true" />Paid
						<form:radiobutton path="invoiceStatus" value="NotPaid" required="true" />NotPaid
					</div>
					</div>
				</div>
				<div>
					<form:button>confirm</form:button>
				</div>
			</form:form>
		</div>
		
	</div>
	<p>
	<button onclick="document.location='/home/checkguestlogin'" style="float:left">Back</button>
	</p>
</body>
</html>