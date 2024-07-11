<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Species</title>
</head>

<style>
body{

background-repeat:no-repeat;
background-size:cover;
background-color: #D5F3FE;
margin: 180px 600px 40px;}
h2{
text-align:center;
}
form{
width:300px;
border: 2px solid;
border-radius:30px;
height: 500px;
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
color: green;}
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
color: green;}
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
margin-left: 500px;}
#home:hover{
color: #199EF3;}

</style>

<body>

<a href="main.jsp" id="home">Home</a>

<form action = "Species_action.jsp" target="_top">

<h2>Add Species</h2>
<label for ="stype" >Species Type </label><br>
<input type="text" name="Species_Type" required><br><br>

<label for ="sgroup">Species group</label><br>
<input type="text" name="Species_group" required><br><br>

<label for ="slifestyle" >LifeStyle</label><br>
<input type="text" name="Lifestyle" required><br><br>

<label for ="sconversationStatus" >Conversation Status</label><br>
<input type="text" name="Conversation_Status" required><br><br>

<button type = "submit">Save</button>
<button type = "reset">Clear</button>

</form>

</body>
</html>