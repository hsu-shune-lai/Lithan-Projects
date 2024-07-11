<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.EnclosuresManage" %>
    <%@ page import = "com.csm.entity.Enclosures" %>
    
    <%@ include file="Enclosures_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Enclosures</title>
</head>
<body>

<%
	String eId = request.getParameter("enclosures_id");
	String etype = request.getParameter("enclosures_type");
	String elocation = request.getParameter("location");
	
	
	out.println(eId);
	out.println(etype);
	out.println(elocation);
	
	EnclosuresManage dao = new EnclosuresManage();
	Enclosures c = new Enclosures(Integer.parseInt(eId),etype,elocation);
	
	int rowAffected;
	try {
		rowAffected = dao.update(c);
		out.println("Successfully Update Record..");
	}catch (ClassNotFoundException ex){
		out.println(ex.getMessage());
	}catch (SQLException e){
		out.println(e.getMessage());
	}
%>

</body>
</html>

