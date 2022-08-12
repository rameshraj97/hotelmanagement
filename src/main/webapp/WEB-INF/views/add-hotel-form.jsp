<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Hotel</title>
</head>
  
<body><style type="text/css">
<h2>hotel </h2>
body {
	background-image:
		url(https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80);
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
</style>

	<div id="root">
		<div id="form">
		
			<form:form action="hotel" method="post" modelAttribute="addhotel">
				<div>
					<label for="hotelId">HotelId</label>
					<div>
						<form:input path="hotelId" />
					</div>
				</div>
				<div>
					<label for="hotelName">HotelName</label>
					<div>
					<form:radiobutton path="hotelName" value="Town and Country"/>Town and Country
					<form:radiobutton path="hotelName" value="Four Seasons Resort"/>Four Seasons Resort
					<form:radiobutton path="hotelName" value="Happy Stay"/>Happy Stay
					<form:radiobutton path="hotelName" value="Quick Stop"/>Quick Stop
					<form:radiobutton path="hotelName" value="Inn Of Dreams"/>Inn Of Dreams
					<form:radiobutton path="hotelName" value="Fountain Fune"/>Fountain Fune
					<form:radiobutton path="hotelName" value="Olympus Hotel"/>Olympus Hotel
					<form:radiobutton path="hotelName" value="Enchanted Isles Hotel"/>Enchanted Isles Hotel
				</div>
				</div>
				<div>
					<label for="location">Location</label>
					<div>
					<form:radiobutton path="location" value="Mudurai"/>Mudurai
					<form:radiobutton path="location" value="Chennai"/>Chennai
					<form:radiobutton path="location" value="Bangalore"/>Bangalore
					<form:radiobutton path="location" value="Ooty"/>Ooty
					<form:radiobutton path="location" value="Goa"/>Goa
					<form:radiobutton path="location" value="Kerala"/>Kerala
					<form:radiobutton path="location" value="Mumbai"/>Mumbai
					<form:radiobutton path="location" value="Kolkata"/>Kolkata
					</div>
				</div>
				<div>
					<label for="numberOfRooms">NumberOfRooms</label>
					<div>
						<form:input path="numberOfRooms" />
					</div>
				  </div>
				<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				    <div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="website">Website</label>
					<div>
					<form:radiobutton path="website" value="Yatra Smart"/>Yatra Smart
					<form:radiobutton path="website" value="Oyo"/>Oyo
					<form:radiobutton path="website" value="Treebo Hotel"/>Treebo Hotel
					<form:radiobutton path="website" value="AccorHotel"/>AccorHotel
					</div>
				</div>
				<div>
					<form:button>Next</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<div align="center">${result}</div>
</body>
</html>
