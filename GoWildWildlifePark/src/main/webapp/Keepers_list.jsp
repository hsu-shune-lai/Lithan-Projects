<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ page import = "com.csm.dao.KeepersManage" %>
    <%@ page import = "com.csm.entity.Keepers" %>
    <%@ page import = "com.csm.DBManager" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Keepers Lists</title>
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

<center><h1>Keepers Lists</h1></center>

<a href="main.jsp" id="home">Home</a>

<%
	try{
		DBManager dbMgr = new DBManager();
		dbMgr.getConnection();
		
		KeepersManage eMgr = new KeepersManage();
		ArrayList<Keepers> keepers = eMgr.fetchAll();
		
%>

	<center><table border="1">
	<tr>
		<th>Keepers ID</th>
		<th>Keepers Name</th>
		<th>Date Of Birth</th>
		<th>Keepers Rank</th>
		<th>Edit Keepers </th>
		<th>Delete Keepers</th>  
	</tr>
<%
	for (Keepers keeper :keepers){
%>

	<tr>
	<td><%=keeper.getKeepers_ID() %></td>
	<td><%=keeper.getKeepers_Name() %></td>
	<td><%=keeper.getDate_Of_Birth() %></td>
	<td><%=keeper.getKeepers_Rank() %></td>
	<td><a href="Keepers_edit.jsp?keepers_ID=<%= keeper.getKeepers_ID() %>">Edit</a></td>
	<td><a href="Keepers_delete.jsp?keepers_ID=<%= keeper.getKeepers_ID() %>" onclick="return confirmDelete()">Delete</a></td>
 	
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