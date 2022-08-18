<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js' ='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<style>
<%@include file="views1/listroom.css"%>	
</style>
</head>
<body>
<p>
  <button onclick="document.location= '/'" style="float:left">Back</button>
    </p>
	<table border="2" width="100%" cellpadding="2">
		<thead>
			<tr>
				<th>RoomNo</th>
				<th>RoomType</th>

			</tr>
		</thead>
		<tbody>
			<h1 align="center">Room Booking</h1>
			<c:forEach var="room" items="${allroom}">
				<!-- var-variables,items-collection -->
				<tr>
				
					<th>${room.roomId}</th>
					 <td><td><img
                        src="file://C:\Users\rame3119\eclipse-workspace\hotelManagement\src\main\resources\Images/${room.image}"
                            width="100" height="100"></td>
					<th>${room.roomType}<br> 
			            ${room.capacity}<br>
						${room.status}<br>
						<i class="fa fa-rupee" style="font-size:36px"></i>${room.payDayrate}
						${room.withToilet}
						<i class='fab fa-cc-visa' style='font-size:36px'></i>
						<i class='fas fa-coffee' style='font-size:36px'> 
						<i class='fas fa-rss' style='font-size:48px;color:red'>
						<i class='fas fa-phone-volume' style='font-size:48px;color:red'>
						<i class="fa fa-television" style="font-size:36px"></i>
						 
                         
					</th>
				
					<th><a href="guestlogin?roomId=${room.roomId}"><button>Booknow</button></a>
                    
                   </th>
				</tr>
			</c:forEach>
		</tbody>
		    
	</table>
	        
</body>
</html>