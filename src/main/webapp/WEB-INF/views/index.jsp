 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index Page</title>
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<style>

body {

    background-image:
        url("https://i.pinimg.com/originals/81/1f/23/811f231684b2665921a06a652a3e8f99.jpg");
        background-height: 786px;
    background-width: 1366px;
    background-attachment: fixed;
    background-size: cover;
    font-family: Arial, Helvetica, sans-serif;
}
h1{
font-family:lucida Handwriting, Cursive;
color:black;
}
.navbar {
    overflow: hidden;
    background-color: #38fca4;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: #fa6e6e;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}


</style>
</head>
<body>
  
   <h1 align="center">Welcome hotel Management</h1>
     <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">
                <i class="fa fa-home"></i>
              Stays<i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
                <a href="/home/list">Views</a> <a></a>  
            </div>
           </div>
          <div class="dropdown">
            <button class="dropbtn">
              <i class='fas fa-user-alt'></i>
               Employee<i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
            <ul>
               <li> <a href="/employee/list">Employeelist</a> </li> 
                <li> <a href="/room/addform">NewRoomAdd</a></li>
               <li> <a href="/room/updateform?roomid=">RoomUpdate</a></li>
               <li> <a href="/room/list">List</a></li>
            </div>
           </div> 
      </body>
</html>