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

<style>

</style>
<body>
	<h1>RoomBooking</h1>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addroom" object="room" enctype="multipart/form-data" >
				<div>
					<label for="roomId">RoomId</label>
					<div>
						<form:input path="roomId" placeholder="enter User ID"
							pattern="[0-9]{4}" title="user ID only contains Numbers"
							required="true" />
					</div>
				</div>
				<div>
					<label for="roomType">RoomType</label>
					<div>
						<select name="roomType" id="roomType">
							<option value="Single">SingleRoom</option>
							<option value="TwinRoom">TwinRoom</option>
							<option value="Penthouse">Penthouse</option>
						</select>
					</div>
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
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<select name="status" id="status">
							<option value="Available">Available</option>
							<option value="Unavailable">Unavailable</option>
						</select>
					</div>
				</div>
				<div>
					<label for="payDayrate">Paydayrate</label>
					<div>
						<form:radiobutton path="payDayrate" value="${5500}" />
						Rs,5500
						<form:radiobutton path="payDayrate" value="${6000}" />
						Rs,6000
						<form:radiobutton path="payDayrate" value="${7500}" />
						Rs,7500
						<form:radiobutton path="payDayrate" value="${8000}" />
						Rs,8000
					</div>
				</div>
				<div>
					<label for="withToilet">WithToilet</label>
					<div>
						<form:radiobutton path="withToilet" value="Gravity-Fed" />
						Gravity-Fed
						<form:radiobutton path="withToilet" value="Pressure-Assisted" />
						Pressure-Assisted
					</div>
				</div>
				<div class="col-sm-5">
					<p>Room Image</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="roomImage"
							accept="image/jpeg, image/png ,image/jpg" id="roomImage" /> <label
							class="custom-file-label" for=roomImage>Choosefile</label>
					</div>
				</div>
				<input type="hidden" name="imgName" value="room.image">
				<form:button>submit</form:button>
			</form:form>
			
		</div>
	</div>
</body>
</html>
