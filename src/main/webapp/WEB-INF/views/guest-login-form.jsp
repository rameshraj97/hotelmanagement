<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>

</style>
</head>

<body>
    <h1>login</h1>
    <form:form action="checkguestlogin"  method="post"
    modelAttribute="login" > <table class="center">
            <tr>
                <td>Email :</td>
                <td><form:input path="email" name="email" /></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><form:password path="password" name="password" /></td>
             </tr>
             <tr>
                 <td>RoomID:</td>    
                <td><form:password path="roomId" name="roomId" value="${roomId}"/></td>
            </tr> 
            <tr> 
                 <td><form:button>Sign In</form:button></td>
                <td><a href="/guest/addform">Sign Up</a></td>
            </tr>
        </table>
    </form:form>
    <div>${message}</div>
</body>
</html>