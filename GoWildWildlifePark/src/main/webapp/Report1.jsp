<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
	<%@ page import = "java.sql.*" %>
	<%@ page import = "com.csm.dao.AnimalManage"%>
	<%@ page import = "com.csm.entity.Animal" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report 1</title>
</head>

<style>

body{
background-image:url(bgcc1.jpg);
background-repeat:no-repeat;
background-size:cover;}

table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 80%;
}

th,td {
  height: 30px;
}

#home{
border: 2px solid;
border-radius: 10px;
padding: 20px;
text-decoration:none;
color: black;
background-color:#80aaff;
margin-left: 1250px;}
#home:hover{
color: #199EF3;}
</style>

<body>

<%
	try{
		
		AnimalManage aMgr = new AnimalManage();
		ArrayList<Animal> animals = aMgr.fetchDaveorTemi();
%>
	<center>
	<div>
	<h1>Report 1</h1>
	<table>
	<a href="main.jsp" id="home">Home</a>
		<tr>
			<th>Animals ID</th>
			<th>Animals Name</th>
			<th>Gender</th>
			<th>Arrived Year</th>
			<th>Keepers ID</th>
			<th>Keepers Name</th>
		</tr>
	<%
		for (Animal a : animals){
	%>
		<tr>
			<td> <%= a.getAnimal_ID() %></td>
			<td> <%= a.getAnimal_Name() %></td>
			<td> <%= a.getGender() %> </td>
			<td> <%= a.getYearArrived() %> </td>
			<td> <%= a.getKeepers_Keepers_ID() %> </td>
			<td> <%= a.getKeepers_Name() %> </td>
			
		</tr>
		<%
			}
		%>
</table>
</div></center>
<%
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
%>

</body>
</html>
