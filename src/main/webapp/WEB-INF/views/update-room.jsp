<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateroom" method="post" modelAttribute="updateroom">
				<div>
					<label for="roomId">Room_id</label>
					<div>
						<form:input path="roomId" />
					</div>
				</div>
				<div>
					<label for="roomType">Room_type</label>
					<div>
						<form:input path="roomType" />
					</div>
				</div>
				<div>
					<label for="capacity">capacity</label>
					<div>
						<form:input path="capacity" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				  </div>
				<label for="payDayrate">Pay_dayrate</label>
					<div>
						<form:input path="payDayrate" />
					</div>
				    <div>
					<label for="withToilet">With_toilet</label>
					<div>
						<form:input path="withToilet" />
					</div>
				</div>
				<div>
					<form:button>update Room</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>