<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Keepers</title>
</head>

<style>
body{
background-color: #D5F3FE;
background-repeat:no-repeat;
background-size:cover;
margin: 180px 600px 40px;}
h2{
text-align:center;
}
form{
width:300px;
border: 2px solid;
border-radius:30px;
height: 450px;
align:center;
padding:10px;
background-color:lightblue;}
input[type=text],select{
width: 80%;
height: 28px;
display:inline-block;
border: 2px solid;
align:center;
margin: 8px 21px 0;
padding-left: 5px;
font-size: 14px;}
input[type=text]:hover{
color:green;}
input[type=number],selete{
width: 80%;
height: 28px;
display:inline-block;
border: 2px solid;
align:center;
margin: 8px 21px 0;
padding-left: 5px;
font-size: 14px;}
input[type=number]:hover{
color:#green;}
button{
width:80%;
height: 34px;
border: 2px solid;
border-radius: 30px;
background-color: skyblue;
margin: 10px 23px 10px;
align:center;
font-size:18px;}
button:hover{
color:blue;}
label[for=dtype]{
margin:10px 18px 0;
color:blue;
font-size:19px;}
label[for=dfeed]{
margin:10px 18px 0;
color:blue;
font-size:19px;}
#home{
border: 2px solid;
border-radius: 10px;
padding: 20px;
text-decoration:none;
color: black;
background-color:#80aaff;
margin-left: 550px;}
#home:hover{
color: #199EF3;}

</style>

<body>

<a href="main.jsp" id="home">Home</a>

<form action = "Keepers_action.jsp" target="_top">

<h2>Add Keepers</h2>
<label for ="kName" >Keepers Name</label><br>
<input type="text" name="Keepers_Name" required><br><br>

<label for ="kdateofbirth">Date Of Birth</label><br>
<input type="text" name="Date_Of_Birth" required><br><br>

<label for ="kRank" >Keepers Rank</label><br>
<input type="text" name="Keepers_Rank" required><br><br>



<button type = "submit">Save</button>
<button type = "reset">Clear</button>

</form>

</body>
</html>