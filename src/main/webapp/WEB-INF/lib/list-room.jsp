<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room List</title>
</head>
<body>
    <div id="Table root"></div>
    <table>
        <thead>
            <tr> 
                <th>Room_id</th>
                <th>Room_type</th>
                <th>Capacity</th>
                <th>Status</th>
                <th>Pay_dayrate</th>
                <th>With_toilet</th>
          </tr>
        </thead>
        <tbody>
            <c:forEach var="room" items="${allroom}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${room.Room_id}</td>
                    <td>${room.Room_type}</td>
                    <td>${room.Capacity}</td>
                    <td>${room.Status}</td>
                    <td>${room.Pay_dayrate}</td>
                    <td>${room.With_toilet}</td>
                  
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>