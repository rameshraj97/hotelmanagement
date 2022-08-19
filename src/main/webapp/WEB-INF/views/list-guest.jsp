<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Guest List</title>
<style >
<%@include file="views1/listguest.css"%>
</style>
</head>
<body>
<table id="alter" class="center"><caption></caption><th></th>
 <h1 style="border:2 width:100%">Guest Details</h1>
    <div id="Table root"></div>
   <table style="border:2 width:100%"><caption></caption>
        <thead>
            <tr> 
               <th scope="col">GuestId</th>
               <th scope="col">Password</th>
                <th scope="col">FiratName</th>
                <th scope="col">LastName</th>
                <th scope="col">PhoneNo</th>
                <th scope="col">Address</th>
                <th scope="col">Email</th>
                <th scope="col">Gender</th>
                <th scope="col">Dob</th>
                <th scope="col">AadharNumber</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="guest" items="${allguest}">
                <!-- var-variables,items-collection -->
                <tr>
                   
                    <td>${guest.guestId}</td>
                    <td>${guest.password}</td>
                    <td>${guest.firstName}</td>
                    <td>${guest.lastName}</td>
                    <td>${guest.phoneNo}</td>
                    <td>${guest.address}</td>
                    <td>${guest.email}</td>
                    <td>${guest.gender}</td>
                    <td>${guest.dob}</td>
                    <td>${guest.aadharNumber}</td>
                </tr>
            </c:forEach>
        </tbody>
     
    </table>
    </table>
</body>
</html>