<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager "%>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
    
    <%@ include file="Animal_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String animalid = request.getParameter("Animal_ID");

	AnimalManage dao = new AnimalManage();
	int rowAffected;
	try {
		rowAffected = dao.delete(Integer.parseInt(animalid));
		out.println ("<h2>The data has been deleted</h2> " );
		
	}catch (ClassNotFoundException ex){
		out.println(ex.getMessage());
	}catch (SQLException e){
		out.println(e.getMessage());
	}

%>

</body>
</html>