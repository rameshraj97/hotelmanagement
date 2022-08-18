<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta charset="ISO-8859-1">
<title>Add Guest</title>
<style >
<%@include file="views1/addguest.css"%>
text-align ="center";
</style>
</head>
<body>

	<div id="registration-form">
		<h1>New Guest Add Detalis</h1>
		<div id="form" class="fieldset">
			<form:form action="add" method="post" modelAttribute="addguest">
				<div>
					<label for="guestId">GuestId</label>
					<div>
						<form:input path="guestId"  placeholder="enter User ID"
                           pattern="[0-9]{4}" title="user ID only contains Numbers"
                           required="true" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" cols="50"
                       rows="6" title="Enter your valid address" required="true" />
					</div>
				</div>
				<div>
					<label for="firstName">FirstName</label>
					<div>
						<form:input path="firstName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter First Name" />
					</div>
				</div>
				<div>
					<label for="lastName">LastName</label>
					<div>
						<form:input path="lastName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name" />
					</div>
				</div>

				<div>
					<label for="phoneNo">PhoneNo</label>
					<div>
						<form:input path="phoneNo" pattern="[0-9]{10}"
							title="please enter your Ten Digit phone numbers" required="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" cols="50"
                        rows="6" title="Enter your valid address" required="true" />
					</div>
				</div>

				<div>

					<label for="email">Email</label>
					<div>
						<form:input path="email"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email welcome03@gmail.com"
							placeholder="Enter a Email" required="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" required="true" />
						Male

						<form:radiobutton path="gender" value="Female" required="true"/>
						Female
					</div>
				</div>
				<div>
					<label for="dob">Dob</label>
					<div>
						<form:input path="dob" type="date" />
					</div>	
				</div>
				<div>
					<label for="aadharNumber">AadharNumber</label>
					<div>
						<form:input path="aadharNumber"
							pattern="^[1-9]{4}{1}[0-9]{4}{1}[0-9]{4}$"
							title="aadharNumber(ex: 123456789012)" required="true" />
					</div>
				</div>
				<div>
				<footer>
					<input type="submit" class="signupbtn" value='submit'/>
					<input type="reset"class="cancelbtn" >
				</footer>   
				</div>
				<div></div>
			</form:form>
		</div>
	</div>
	<div>${result}</div>
</body>
</html>