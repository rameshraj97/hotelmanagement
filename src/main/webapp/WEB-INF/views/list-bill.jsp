<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill List</title>
</head>
<style>
body {
  background-image: url('https://media.istockphoto.com/photos/abstract-defocused-blue-soft-background-picture-id937025430?b=1&k=20&m=937025430&s=170667a&w=0&h=dV83s5bygLIt2r5MJm5ARhXmWxtq8CtS5YMuydofQe8=');
}
</style>
<h1 align="center">Bill Details</h1>
    <div id="Table root"></div>
    <table border="2" width= "100%" cellpadding="2">
        <thead>
            <tr> 
                <th>Invoice</th>
                <th>GuestId</th>
                <th>RoomCharge</th>
                <th>InvoiceDate</th>
                <th>ReservationNumber</th>
                <th>PaymentMode</th>
                <th>InvoiceStatus</th>
             
            </tr>
        </thead>
        <tbody>
            <c:forEach var="bill" items="${allbill}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${bill.invoice}</td>
                    <td>${bill.guestId}</td>
                    <td>${bill.roomCharge}</td>
                    <td>${bill.invoiceDate}</td>
                    <td>${bill.reservationNumber}</td>
                    <td>${bill.paymentMode}</td>
                    <td>${bill.invoiceStatus}</td>
               </tr>
            </c:forEach>
        </tbody>
        
    </table>	
</body>
</html>