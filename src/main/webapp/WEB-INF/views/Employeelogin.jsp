<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Slide Navbar</title>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
<style>
<%@include file="views1/guestlogin.css"%> 
</style>
</head>

<body>

    <div id="conteiner">
    <form:form action="userlogin" method="post"  modelAttribute="employee">
    
        <p>Login</p>
       
         <label for="empId">Id</label><br>
        <form:input path="empId" />
        <label for="email">Email</label><br>
        <form:input path="email" />
        <form:button >Login</form:button>
                        
        <div><a href="/room/addform">Sign Up</a></div>
    </form:form>
   <div>${message}</div>
   </body>
</html>