<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Guest  Bill list</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getguest">
				<div>
					<label for="guestId">GuestId</label>
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
				<div>
					<form:button>Add Guest</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<body>
    <div id="Table root"></div>
    <table border="2" width= "100%" cellpadding="2">
        <thead>
            <tr> 
                <th>Invoice</th>
                <th>GuestId</th>
                <th>RoomCharge</th>
                <th>InvoiceDate</th>
                <th>ReservationNumber</th>
                <th>PaymentMode</th>
                <th>InvoiceStatus</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="bill" items="${billdetails}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${bill.invoice}</td>
                    <td>${bill.guestId}</td>
                    <td>${bill.roomCharge}</td>
                    <td>${bill.invoiceDate}</td>
                    <td>${bill.reservationNumber}</td>
                    <td>${bill.paymentMode}</td>
                    <td>${bill.invoiceStatus}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>