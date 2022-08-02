<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>find Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="findroombyid">
				<div>
					<label for="roomId">Room_id</label>
					<div>
						<form:input path="roomId" readonly="true"/>
					</div>
				</div>
				
				<div>
					<label for="roomType">Room_type</label>
					<div>
						<form:input path="roomType" readonly="true" />
					</div>
				</div>
				<div>
					<label for="capacity">Capacity</label>
					<div>
						<form:input path="capacity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="status">status</label>
					<div>
						<form:input path="status" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="payDayrate">Pay_dayrate</label>
					<div>
						<form:input path="payDayrate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="withToilet">With_toilet</label>
					<div>
						<form:input path="withToilet" readonly="true"/>
					</div>
				</div>
				<div>
			   </div>
			</form:form>
		</div>
	</div>
</body>
</html>