<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.KeepersManage" %>
    <%@ page import = "com.csm.entity.Keepers" %>
    
    <%@ include file="Keepers_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Keepers</title>
</head>
<body>

<%
	String kId = request.getParameter("keepers_id");
	String kname = request.getParameter("keepers_name");
	String kdob = request.getParameter("date_of_birth");
	String krank = request.getParameter("keepers_rank");
	
	out.println(kId);
	out.println(kname);
	out.println(kdob);
	out.println(krank);
	
	KeepersManage dao = new KeepersManage();
	Keepers c = new Keepers(Integer.parseInt(kId), kname, kdob, krank);
	
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

