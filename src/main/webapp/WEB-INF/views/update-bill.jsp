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
					<label for="invoice">invoice</label>
					<div>
						<form:input path="invoice" />
					</div>
				</div>
				<div>
					<label for="guestId">guest_id</label>
					<div>
						<form:input path="guestId" />
					</div>
				</div>
				<div>
					<label for="roomCharge">room_charge</label>
					<div>
						<form:input path="roomCharge" />
					</div>
				</div>
				<div>
					<label for="invoiceDate">invoice_date</label>
					<div>
						<form:input path="invoiceDate" />
					</div>
				  </div>
				<label for="reservationNumber">res_num</label>
					<div>
						<form:input path="reservationNumber" />
					</div>
				    <div>
					<label for=paymentMode>payment_mode</label>
					<div>
						<form:input path="paymentMode" />
					</div>
				</div>
				<div>
					<label for=invoiceStatus>invoice_status</label>
					<div>
						<form:input path="invoiceStatus" />
					</div>
				</div>
				<div>
					<form:button>Update Bill</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>