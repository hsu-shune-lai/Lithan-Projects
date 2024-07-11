
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager "%>
    <%@ page import = "com.csm.dao.DietManage" %>
    <%@ page import = "com.csm.entity.Diet" %>
    
    <%@ include file="Diet_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Diet</title>

</head>
<body>

<%
	String diet_id = request.getParameter("Diet_ID");

	DietManage dao = new DietManage();
	int rowAffected;
	try {
		rowAffected = dao.delete(Integer.parseInt(diet_id));
		out.println ("<h2>The data has been deleted</h2> " );
		
	}catch (ClassNotFoundException ex){
		out.println(ex.getMessage());
	}catch (SQLException e){
		out.println(e.getMessage());
	}

%>

</body>
</html>