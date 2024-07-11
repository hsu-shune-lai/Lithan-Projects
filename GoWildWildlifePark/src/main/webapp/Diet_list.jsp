<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.DietManage" %>
    <%@ page import = "com.csm.entity.Diet" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diet Lists</title>
</head>


<style>
body{
background-image:url(bgcc1.jpg);
background-color:#E4F6F8;
background-repeat:no-repeat;
background-size:cover;}

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

<center><h1>Diet Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		DietManage eMgr = new DietManage();
		ArrayList<Diet> diets = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Diet ID</th>
		<th>Diet Type</th>
		<th>No of feed per day</th>
		<th>Edit Diet</th>  
		<th>Delete Diet</th>
	</tr>
<%
	for (Diet diet :diets){
%>

	<tr>
	<td><%=diet.getDiet_ID() %></td>
	<td><%=diet.getDiet_Type() %></td>
	<td><%=diet.getNoOfFeedPerDay() %></td>
	<td><a href="Diet_edit.jsp?Diet_ID=<%= diet.getDiet_ID() %>">Edit</a></td>
	<td><a href="Diet_delete.jsp?Diet_ID=<%= diet.getDiet_ID() %>" onclick="return confirmDelete()">Delete</a></td>
 	
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