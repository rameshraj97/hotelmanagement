<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel List</title>
</head>
<body>
    <div id="Table root"></div>
    <table border=2px width= "100%" cellpadding="2">
        <thead>
            <tr> 
                <th>Hotel_id</th>
                <th>Hotel_name</th>
                <th>Location</th>
                <th>Address</th>
                <th>Num_rooms</th>
                <th>Phone_no</th>
                <th>Website</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="hotel" items="${allhotel}">
                <!-- var-variables,items-collection -->
               <tr>
                    <td>${hotel.hotelId}</td>
                    <td>${hotel.hotelName}</td>
                    <td>${hotel.location}</td>
                    <td>${hotel.address}</td>
                    <td>${hotel.numberOfRooms}</td>
                    <td>${hotel.phoneNo}</td>
                    <td>${hotel.website}</td>
                <td><a href="/room/list?hotelId=${hotel.hotelId}"><button>Go</button></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>