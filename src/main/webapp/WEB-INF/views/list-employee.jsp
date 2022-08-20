<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Hotel List</title>
<style >
<%@include file="views1/listemployee.css"%>
</style>
</head>
<body>
    <div id="Table root"></div>
    <table style="border:2 width:100%"><caption></caption>
        <thead>
            <tr> 
                <th>Emp_id</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>PhoneNo</th>
                <th>Dob</th>
                <th>Address</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Qualification</th>
                <th>Role</th>
                <th>Dateofjoining</th>
                <th>Department</th>
                 <th>Manager</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${allemployee}">
                <!-- var-variables,items-collection -->
                <tr>
                    <td>${employee.empId}</td>
                    <td>${employee.firstName}</td>
                    <td>${employee.lastName}</td>
                    <td>${employee.phone}</td>
                    <td>${employee.dob}</td>
                    <td>${employee.address}</td>
                    <td>${employee.gender}</td>
                    <td>${employee.email}</td>
                    <td>${employee.qualification}</td>
                    <td>${employee.role}</td>
                    <td>${employee.dateOfJoining}</td>
                    <td>${employee.department}</td>
                    <td>${employee.manager}</td>
                   
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>