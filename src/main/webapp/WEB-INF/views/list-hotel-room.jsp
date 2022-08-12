<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Hotel Room</title>
</head>
<body>
<div id="root">
		<div id="form">
		
			<form:form action="" method="post" modelAttribute="gethotel">
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
			</form:form>
		</div>
		<div id="Table root"></div>
    <table border="2" width= "100%" cellpadding="2">
        <thead><tr>    
            
                <th>Room_id</th>
                <th>Room_type</th>
                <th>Capacity</th>
                <th>Status</th>
                <th>Pay_dayrate</th>
                <th>With_toilet</th>
               
            </tr>
        </thead>
        <tbody>
            <c:forEach var="room" items="${roomdetails}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${room.roomId}</td>
                    <td>${room.roomType}</td>
                    <td>${room.capacity}</td>
                    <td>${room.status}</td>
                    <td>${room.payDayrate}</td>
                    <td>${room.withToilet}</td>
                   	<td><a href="/room/list?hotelId=${room.roomId}"><button>Go</button></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
	</div>
</body>
</html>