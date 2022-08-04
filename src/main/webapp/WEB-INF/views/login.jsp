<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
</head>
<body>
<style>

 form{
   background-color:skyblue;
  width: 250px;
  height: 200 px;
  border-style:solid;
  border-color:blue;
  padding:10px 
 }

</style>
<div>
<form action="/login" method="post">
    <div>UserName:<input type="text" name="userName" value=""></div>
    <div><br></div> 
    <div>Password: <input type="text" name="password" value=""></div>
    <div><input type="submit" value="login"style="background-color:lime;"></div>
    <div><input type="butten" value="Register"style="background-color:orange;"></div>
    </form>
</body>
</html>