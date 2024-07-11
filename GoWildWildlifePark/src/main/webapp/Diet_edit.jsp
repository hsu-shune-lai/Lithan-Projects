<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.DietManage" %>
    <%@ page import = "com.csm.entity.Diet" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Diet</title>
</head>

<style>
body{
background-image:url(bg.jpg);
background-repeat:no-repeat;
background-color:#E4F6F8;
background-size:cover;
margin: 180px 600px 40px;}
h2{
text-align:center;
width: 300px;}
form{
width:300px;
border: 2px solid;
border-radius:30px;
height: 280px;
align:center;
padding:10px;}
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

<h2>Edit form for Diet</h2>
<form method="POST" action="Diet_update.jsp">
<%
	String sId = request.getParameter("Diet_ID");
		if (sId == null){
			out.println("Diet ID is not found");
		}else {
			int id = Integer.parseInt(sId);
			DietManage dao = new DietManage();
			try {
				Diet c = dao.getById(id);
				//out.print(c);
%>
			<input type ="hidden" name="diet_id" value="<%=c.getDiet_ID() %>"> <br><br>
			
			<label for="diet_type">Diet Type</label><br>
			<input type="text" name="diet_type" id="diet_type" value="<%=c.getDiet_Type() %>" required><br><br>
			
			<label for="diet_feed">Number of feed per day</label><br>
			<input type="number" name="diet_feed" id="diet_feed" value= "<%=c.getNoOfFeedPerDay() %>" required><br><br>
			
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

</body>
<script>
function confirmUpdate() {
	var result = confirm("Are you sure you want to update this data?");
	return result; // Return the confirmation result to the link's onclick event
}
</script>
</html>


