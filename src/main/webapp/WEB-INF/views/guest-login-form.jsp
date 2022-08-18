<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Slide Navbar</title>
<link rel="stylesheet" type="text/css" href="slide navbar style.css">
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<style>
 <%@include file="views1/guestlogin.css"%>
/* image source: https://www.pexels.com/photo/blooming-sakura-tree-in-daylight-6830332/ */
</style>
<body>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login form</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div id="conteiner">
    <form action="checkguestlogin" method="post" id="form">
    
        <p>Login</p>
        <label for="email">Email</label><br>
        <input type="text" id="email" name="email" required><br>
        <label for="password">Password</label><br>
        <input type="password" id="password" name="password"><br><br>
         <label for="RoomId">RoomId</label><br>
        <input form:password path="roomId" name="roomId" value="${roomId}"/>
        <button type="submit">Login</button>
        <div><a href="/guest/addform">Sign Up</a></div>
    </form>
     </div>
    <div>${message}</div>
               
                <button onclick="document.location='/home/list/'">Back</button>
           
   </body>
</html>


	