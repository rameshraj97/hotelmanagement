<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Bill</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="bill">
				<div>
					<label for="invoice">Invoice</label>
					<div>
						<form:input path="invoice" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="guestId">Guest_id</label>
					<div>
						<form:input path="guestId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="roomCharge">Room_charge</label>
					<div>
						<form:input path="roomCharge" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceDate">Invoice_date</label>
					<div>
						<form:input path="invoiceDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="reservationNumber">Res_num</label>
					<div>
						<form:input path="reservationNumber" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentMode">Payment_mode</label>
					<div>
						<form:input path="paymentMode" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceStatus">Invoice_status</label>
					<div>
					<form:input path="invoiceStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>