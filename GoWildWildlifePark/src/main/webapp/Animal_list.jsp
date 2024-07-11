<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animal Lists</title>
</head>

<style>
body{
background-image:url(bgcc1.jpg);
background-repeat:no-repeat;
background-size:cover;
background-color:#E4F6F8;}

table,td,th{
border:2px solid black;}

table{
border-collapse: collapse;
width: 80%;}

th{
height:40px;}

td {
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

<center><h1>Animal Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		AnimalManage eMgr = new AnimalManage();
		ArrayList<Animal> animals = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Animal ID</th>
		<th>Animal Name</th>
		<th>Gender</th>
		<th>Year Arrival</th>
		<th>Species ID</th>
		<th>Keepers ID</th>
		<th>Diet ID</th>
		<th>Enclosures ID</th>
		<th>Edit Animal</th> 
		<th>Delete Animal</th> 
	</tr>
<%
	for (Animal animal :animals){
%>

	<tr>
	<td><%=animal.getAnimal_ID() %></td>
	<td><%=animal.getAnimal_Name() %></td>
	<td><%=animal.getGender() %></td>
	<td><%=animal.getYearArrived() %></td>
	<td><%=animal.getSpecies_Species_ID() %></td>
    <td><%=animal.getKeepers_Keepers_ID() %></td>
    <td><%=animal.getDiet_Diet_ID() %></td>
    <td><%=animal.getEnclosures_Enclosures_ID() %></td>
    <td><a href="Animal_edit.jsp?Animal_ID=<%= animal.getAnimal_ID() %>">Edit</a></td>
    <td><a href="Animal_delete.jsp?Animal_ID=<%= animal.getAnimal_ID() %>" onclick="return confirmDelete()">Delete</a></td>
	</tr>

<%
	}
%>

	</table></center>

<%
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>


</body>
<script>
function confirmDelete() {
	var result = confirm("Are you sure you want to delete this data?");
	return result; // Return the confirmation result to the link's onclick event
}
</script>
</html>