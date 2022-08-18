<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addemployee">
				<div>
					<label for="empId">EmployeeId</label>
					<div>
						<form:input path="empId"  placeholder="enter User ID"
                           pattern="[0-9]{4}" title="user ID only contains Numbers"
                           required="true" />
					</div>
				</div>
				<div>
					<label for="firstName">FisrtName</label>
					<div>
						<form:input path="firstName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter First Name"  />
					</div>
				</div>
				<div>
					<label for="lastName">LastName</label>
					<div>
						<form:input path="lastName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter First Name"  />
					</div>
				</div>
				<div>
					<label for="phone">Phone</label>
					<div>
						<form:input path="phone" pattern="[0-9]{10}"
							title="please enter your Ten Digit phone numbers" required="true"/>
					</div>
				</div>
				<label for="dob">Dob</label>
				<div>
		      <form:input path="dob" type="date" />
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" cols="50"
                        rows="6" title="Enter your valid address" required="true"  />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" required="true"/>
						Male
						<form:radiobutton path="gender" value="Female" required="true"/>
						Female
					</div>
				</div>
				<div>
					<div>
						<label for="email">Email</label>
						<div>
							<form:input path="email" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email welcome03@gmail.com"
							placeholder="Enter a Email" required="true" />
						</div>
					</div>
					<div>
						<label for="qualification">Qualification</label>
						<div>
							<form:input path="qualification" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name"/>
						</div>
					</div>
					<div>
						<label for="role">Role</label>
						<div>
						<form:radiobutton path="role" value="hotel receptionist" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name" />	
						hotel receptionist
						</div>
						<div>
							<form:radiobutton path="role" value="maintance" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name" />	
						maintance
						</div>
						<div>
						<form:radiobutton path="role" value="assistant hotel manager" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name" />	
					   assistant hotel manager	
						</div>
					</div>
					<div>
						<label for="dateOfJoining">DateOfJoining</label>
						<div>
						<form:input path="dateOfJoining" type="date" />
						</div>
					</div>
					<div>
						<label for="department">Department</label>
						<div>
						<form:radiobutton path="department" value="front Office" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name"   />
						front Office	
						</div>
						<div>
						<form:radiobutton path="department" value="accounts" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name" />
					    accounts
						</div>
						<div>
						<form:radiobutton path="department" value="housekeeping" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name"  />
					   housekeeping
						</div>
					</div>
				</div>
				<div>
					<label for="manager">Manager</label>
					<div>
						<form:input path="manager" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Last Name"  />
					</div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>