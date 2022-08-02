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
<body>
    <div id="Table root"></div>
    <table border="2" width= "100%" cellpadding="2">
        <thead>
            <tr> 
                <th>Invoice</th>
                <th>Guest_id</th>
                <th>Room_charge</th>
                <th>Invoice_date</th>
                <th>Res_num</th>
                <th>Payment_mode</th>
                <th>Invoice_status</th>
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