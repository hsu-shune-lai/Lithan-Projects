<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild WildLife Park</title>
</head>

<style>

body{
  
  background-position: center;
  background-repeat: no-repeat;
  background-color: #D5F3FE;
  background-size: cover;
  box-sizing: border-size;
  width: 100%;
  height: 100vh;
}

.menu_bar{
  background-color: #C0E3FF;
  text-align: left;
  height: 60px;
  float:top;
}

.menu_bar ul{
  display: inline-flex;
  list-style:none;
  color: white;
  font-size:22px;
  margin:0;
}

.menu_bar ul li{
  width: 120px;
  margin: 7px;
  padding: 15px;
  text-align: center;
}

.menu_bar ul li a {
  text-decoration:none;
  color:black;
  margin: 0;
  font-size: 20px;
}

.menu_bar ul li:hover{
  color: #75B0FE;
  border-radius: 5px;
}

.sub-menu-1 {
  display: none;
}

.menu_bar ul li:hover .sub-menu-1{
  display: block;
  position: absolute;
  background: #4863A0;
  margin-top:15px;
  margin-left:-15px;
}

.menu_bar ul li:hover .sub-menu-1 ul{
  display: block;
  margin:1px;
}
.menu_bar ul li:hover .sub-menu-1 ul li{
  width: 150px;
  padding: 10px;
}

.sub-menu-1 ul li:hover{
background-color:#728FCE;}

h1{
  margin: 200px 80px 10px;
  color:#black;
}

h2{
  margin:20px 150px 10px;
  font-size: 25px;
  color: #black;
}

p{
  margin:20px 75px 15px;
  color: #black;
  
}


.active{
border: 1px solid #004d00;
border-radius: 7px;
color: green;
background-color: #lightblue;
padding: 13px;}

.active:hover{
color: #blue}

</style>

<body>

<div class="menu_bar" >
<ul>		
	<li><a href="main.jsp" class="active">Home</a></li>
	 	
	 
	
	
	<li><a href="#">Diet</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Diet.jsp" >Add Diet</a></li>
			<li><a href="Diet_list.jsp" >View Diet</a></li>
			 
		</ul>
		</div>
	</li>
		
	<li><a href="#">Species</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Species.jsp" >Add Species</a></li>
			<li><a href="Species_list.jsp" >View Species</a></li>
			 
		</ul>
		</div>
	</li>
	
	 	
	<li><a href="#">Keepers</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Keepers.jsp" >Add Keepers</a></li>
			<li><a href="Keepers_list.jsp" >View Keepers</a></li>
			 
		</ul>
		</div>
	</li>
		
	<li><a href="#">Enclosures</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Enclosures.jsp" >Add Enclosures</a></li>
			<li><a href="Enclosures_list.jsp" >View Enclosures</a></li>
		</ul>
		</div>
	</li>
		
	<li><a href="#">Animal</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Animal.jsp" >Add Animal</a></li>
			<li><a href="Animal_list.jsp" >View Animal</a></li>
			 
		</ul>
		</div>
	</li>
	
	<li><a href="#">KeepersReport</a>
	<div class="sub-menu-1" style="background-color: #lightblue">
		<ul style="font-size:19px">
			<li><a href="Report1.jsp" >Report 1</a></li>
			<li><a href="Report2.jsp" >Report 2</a></li>
		</ul>
		</div>
	</li>
	
	
			 
		
</ul>
</div>
<center>
<h1>Welcome To Go Wild WildLife Park</h1>
<h2>Discover the animals world !!!!!!</h2>
<b><p>Over 2000 animals with new challenges and excitement.Just enjoy the moment.</p></b>
</center>

</body>
</html>
