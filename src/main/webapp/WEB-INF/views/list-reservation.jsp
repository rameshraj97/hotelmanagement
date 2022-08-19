<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Reservation List</title>
</head>
<body>
    <div id="Table root"></div>
    	<table style="border:2 width:100%"><caption></caption>
        <thead>
            <tr> 
                <th>ReservationNumber</th>
                <th>GuestId</th>
                <th>RoomId</th>
                <th>ReservationDate</th>
                <th>FromDate</th>
                <th>ToDate</th>
                 <th>NoofPersons</th>
                  <th>PaymentStatus</th>
                  
               
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reservation" items="${allreservation}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${reservation.reservationNumber}</td>
                   
                    <td>${reservation.guestId}</td>
                     <td>${reservation.roomId}</td>
                    <td>${reservation.reservationDate}</td>
                    <td>${reservation.fromDate}</td>
                    <td>${reservation.toDate}</td>
                    <td>${reservation.noOfPersons}</td>
                    <td>${reservation.paymentStatus}</td>
                    
                 
                    
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>