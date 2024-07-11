<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.SpeciesManage" %>
    <%@ page import = "com.csm.entity.Species" %>
     <%@ page import = "com.csm.DBManager" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String st = request.getParameter("Species_Type");
	
	String sg = request.getParameter("Species_group");
	String sl = request.getParameter("Lifestyle");
	String scs = request.getParameter("Conversation_Status");
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//four parameter passing 
	Species s = new Species(st, sg, sl, scs );
	
	//calling SpeciesManage
	SpeciesManage eMag = new SpeciesManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(s);
	
	if(Affect == 1)
		out.println("Successfully Insert..");

}catch (ClassNotFoundException e){
	e.printStackTrace();
}catch (SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>