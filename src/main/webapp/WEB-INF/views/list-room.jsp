<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}

th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
</style>


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
         <h1 align="center">Room Booking</h1>
            <c:forEach var="room" items="${allroom}">
                <!-- var-variables,items-collection -->
                <tr>
                    <th>${room.roomId}</th>
                    <th>${room.roomType}</th>
                    <th>${room.capacity}</th>
                    <th>${room.status}</th>
                    <th>${room.payDayrate}</th>
                    <th>${room.withToilet}</th>
                   	<th><a href="guestlogin?roomId=${room.roomId}"><button>Book</button></a></th>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>