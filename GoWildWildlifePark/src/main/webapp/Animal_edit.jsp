<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Animal</title>
</head>

<style>

body{
background-image:url(bg.jpg);
background-repeat:no-repeat;
background-size:cover;
background-color:#E4F6F8;
margin: 180px 600px 40px;}
h2{
text-align:center;
width: 350px;}
form{
width:350px;
border: 2px solid;
border-radius:20px;
height: 750px;
align:center;
padding:10px;
background-color:lightblue;}
input[type=text],[type=number],select{
width: 80%;
height: 28px;
display:inline-block;
border: 2px solid;
align:center;
margin: 8px 21px 0;
padding-left: 5px;
font-size: 14px;}
input[type=text],[type=number]:hover{
color:green;}
input[type=submit]{
width:80%;
height: 34px;
border: 2px solid;
border-radius: 30px;
background-color: skyblue;
margin: 10px 23px 10px;
align:center;
font-size:18px;}
input[type=submit]:hover{
color:blue;}
label[for=diet_type]{
margin:10px 18px 0;
color:blue;
font-size:19px;}
label[for=diet_feed]{
margin:10px 18px 0;
color:blue;
font-size:19px;}

</style>

<body>

<h2>Edit form for Animal</h2>
<form method="POST" action="Animal_update.jsp">
<%
	String sId = request.getParameter("Animal_ID");
		if (sId == null){
			out.println("Animal ID is not found");
		}else {
			int id = Integer.parseInt(sId);
			AnimalManage dao = new AnimalManage();
			try {
				Animal c = dao.getById(id);
				//out.print(c);
%>
			<input type ="hidden" name="animal_id" value="<%=c.getAnimal_ID() %>"> <br><br>
			
			<label for="animal_name">Animal Name</label><br>
			<input type="text" name="animal_name" id="animal_name" value="<%=c.getAnimal_Name() %>" required><br><br>
			
			<label for="gender">Gender</label><br>
			<input type="text" name="gender" id="gender" value="<%=c.getGender() %>" required><br><br>
			
			<label for="yearArrived">Year Arrived</label><br>
			<input type="text" name="yearArrived" id="yearArrived" value="<%=c.getYearArrived() %>" required><br><br>
			
			<label for="species_Species_ID">Species ID</label><br>
			<input type="number" name="species_Species_ID" id="species_Species_ID" value="<%=c.getSpecies_Species_ID() %>" required><br><br>
			
			<label for="keepers_Keepers_ID">Keepers ID</label><br>
			<input type="number" name="keepers_Keepers_ID" id="keepers_Keepers_ID" value="<%=c.getKeepers_Keepers_ID() %>" required><br><br>
			
			<label for="diet_Diet_ID">Diet ID</label><br>
			<input type="number" name="diet_Diet_ID" id="diet_Diet_ID" value="<%=c.getDiet_Diet_ID() %>" required><br><br>
			
			<label for="enclosures_Enclosures_ID">Enclosures ID</label><br>
			<input type="number" name="enclosures_Enclosures_ID" id="enclosures_Enclosures_ID" value="<%=c.getEnclosures_Enclosures_ID() %>" required><br><br>
			
			<input type="submit" value="update" onclick="return confirmUpdate();"/>
<%
			}catch (ClassNotFoundException ex){
				out.println(ex.getMessage());
			}catch (SQLException e){
				out.println(e.getMessage());
			}
		}
%>

</form>
<script>
function confirmUpdate() {
	var result = confirm("Are you sure you want to update this data?");
	return result; // Return the confirmation result to the link's onclick event
}
</script>
</body>
</html>


