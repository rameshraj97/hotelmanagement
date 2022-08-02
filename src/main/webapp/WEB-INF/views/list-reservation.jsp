<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation List</title>
</head>
<body>
    <div id="Table root"></div>
    <table border="2" width= "100%" cellpadding="2">
        <thead>
            <tr> 
                <th>Res_num</th>
                <th>Guest_id</th>
                <th>Hotel_id</th>
                <th>Room_id</th>
                <th>Res_date</th>
                <th>From_date</th>
                <th>To_date</th>
                 <th>No_of_persons</th>
                  <th>Payment_status</th>
               
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reservation" items="${allreservation}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${reservation.reservationNumber}</td>
                    <td>${reservation.guestId}</td>
                    <td>${reservation.hotelId}</td>
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