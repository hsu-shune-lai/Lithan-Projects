<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.KeepersManage" %>
    <%@ page import = "com.csm.entity.Keepers" %>
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
	String kn = request.getParameter("Keepers_Name");
	
	String kdob = request.getParameter("Date_Of_Birth");
	String kr = request.getParameter("Keepers_Rank");
	
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//three parameter passing 
	Keepers k = new Keepers(kn, kdob, kr);
	
	//calling KeepersManage
	KeepersManage eMag = new KeepersManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(k);
	
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