<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.SpeciesManage" %>
    <%@ page import = "com.csm.entity.Species" %>
    
    <%@ include file="Species_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Species</title>
</head>
<body>

<%
	String spId = request.getParameter("species_id");
	String sptype = request.getParameter("species_type");
	String spgroup = request.getParameter("species_group");
	String splifestyle = request.getParameter("lifestyle");
	String spconversation_status = request.getParameter("Conversation_Status");
	
	out.println(spId);
	out.println(sptype);
	out.println(spgroup);
	out.println(splifestyle);
	out.println(spconversation_status);
	
	SpeciesManage dao = new SpeciesManage();
	Species c = new Species(Integer.parseInt(spId),sptype,spgroup,splifestyle,spconversation_status);
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

