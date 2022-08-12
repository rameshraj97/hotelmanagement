<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Room</title>
</head>
<body>
 <h1 >RoomBooking</h1>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addroom">
				<div>
					<label for="roomId">RoomId</label>
					<div>
						<form:input path="roomId"  placeholder="enter User ID"
                           pattern="[0-9]{4}" title="user ID only contains Numbers"
                           required="true"  />
					</div>
				</div>
				<div>
					<label for="roomType">Roomtype</label>
					<div>
					<select name="roomType" id="roomType">
                      <option value="Single">SingleRoom</option>
                      <option value="saab">TwinRoom</option>
                      <option value="opel">Penthouse</option>
                    </select>
                     </div>
				<div>
					<label for="capacity">Capacity</label>
					<div>
					<select name="capacity" id="capacity">
                      <option value="Single">Single</option>
                      <option value="Double">Double</option>
                      <option value="Triple">Triple</option>
                      <option value="Quad">Quad</option>
                      <option value="Queen">Queen</option>
                      <option value="King">King</option>
                      <option value="Twin">Twin</option>
                    </select>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
					<select name="status" id="status">
                      <option value="Available">Available</option>
                      <option value="Unavailable">Unavailable</option>
                    </select>
				<div>
				</div>
				<label for="payDayrate">Paydayrate</label>
				<div>
					<form:radiobutton path="payDayrate" value="${5500}" />
					5500
					<form:radiobutton path="payDayrate" value="${6000}" />
					6000
					<form:radiobutton path="payDayrate" value="${7500}" />
					7500
					<form:radiobutton path="payDayrate" value="${8000}" />
					8000
				</div>
				<div>
					<label for="withToilet">WithToilet</label>
					<div>
					<form:radiobutton path="withToilet" value="Gravity-Fed" />Gravity-Fed
					<form:radiobutton path="withToilet" value="Pressure-Assisted" />Pressure-Assisted
					</div>
				</div>
				
				<div>
					<form:button>submit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>
