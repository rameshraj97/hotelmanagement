
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<link rel="stylesheet"
  href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcwr560kNW5e8ZC1ljxR9xflyy9DAHHm6yfw&usqp=CAU">
 <script src='https://kit.fontawesome.com/a076d05399.js'crossorigin='anonymous'></script>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
<%@include file="views1/index.css"%>
</style>
</head>
<body>
    <div class="navbar">
        <div class="dropdown">
          <i class="fa fa-home"></i>
            <button class="dropbtn">
                Stay <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/home/list">Views</a> 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
            <i class='fas fa-user-tie'></i>
                Employees <i class="fa fa-caret-down"></i>
            </button>
                <div class="dropdown-content">
                <a href="/employee/login">RoomList</a> </div>
                <a href="/employee/list">EmployeeList</a> </div>
        </div>
        </div>
        
        <h1 align="center">Welcome Hotel Management</h1><br>
     <h2 align="center"> ITC Grand chola, chennai</h2>

</body>
</html>	