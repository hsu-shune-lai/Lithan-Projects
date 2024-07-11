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
<title>Report 2</title>
</head>

<style>

body{
background-image:url(bgcc1.jpg);
background-repeat:no-repeat;
background-size:cover;}

table, td, th {
  border: 1px solid black;}

table {
  border-collapse: collapse;
  width: 80%;}

th,td {
  height: 30px;}

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
	ArrayList<Animal> animal = aMgr.fetchAnimalGroupByKeeper();

%>
	<center>
	
	<div>
	<h1>Report 2</h1>
	<table>
	<a href="main.jsp" id="home">Home</a>
		<tr>
			<th>Keeper Name</th>
			<th>Total Animal</th>	
		</tr>
		<%
			for (Animal a : animal){
		%>
			<tr>
				<td> <%= a.getKeepers_Name() %></td>
				<td> <%= a.getTotal_Animals() %></td>
			</tr>
			<%
				}
			%>
		
	</table>
	</div></center>
	
<%
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
%>

</body>
</html>
