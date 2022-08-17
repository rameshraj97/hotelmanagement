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
/* image source: https://www.pexels.com/photo/blooming-sakura-tree-in-daylight-6830332/ */

body {
    background-image:   url(https://snz04pap002files.storage.live.com/y4mePmRsiPcOXcfns_-SUM5tWfHzAh8uvANUvCJhFuJuadvaQCFKo1zPa7w7tMpej9SoSqOmZv4CSkXYxwuqTV1L4mtRGnNqGMNkMb8SOKaLzkttBbZVj-4KdzrbimI1kJPl2J3l-9NarDTpYpzV6naveJLKqR5GalHK6pcOAgyO8Y5D110upnkezsepvBuzQCJ?width=5400&height=3600&cropmode=none);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    min-height: 100vh;
    padding: 0;
    margin: 0;
}

p {
    text-align: center;
    font-family: Helvetica;
    font-size: 2.5rem;
    font-weight: 900;
    color: #FFFFFF;
    text-shadow: 
     2px 2px 0 rgb(245, 140, 157), 
     2px -2px 0 rgb(245, 140, 157),
    -2px 2px 0 rgb(245, 140, 157),
    -2px -2px 0 rgb(245, 140, 157),
     2px 0px 0 rgb(245, 140, 157),
     0px 2px 0 rgb(245, 140, 157), 
    -2px 0px 0 rgb(245, 140, 157),
     0px -2px 0 rgb(245, 140, 157);
}

form {
    background-color: hsla(0, 2%, 29%, 0.527);
    text-align: center;
    font-family: Helvetica;
    font-size: 2rem;
    font-weight: 900;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-width: 30%;
    line-height: 0.6;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

input {
  border-radius: 5rem;
  border: none;
}

.remember {
    color: black;
    font-size: 1.2rem;
    font-weight: 900;
    margin-right: 10rem;
}

#remember {
    height: 15px;
    width: 15px;
    margin-top: -0.65rem;
}

button {
    padding-left: 2.5rem;
    padding-right: 2.5rem;
    font-family: Helvetica;
    font-size: 1.5rem;
    font-weight: 900;
    background-color: rgb(245, 140, 157);
    color: white;
    margin-bottom: 2rem;
    margin-top: 2rem;
}
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


	