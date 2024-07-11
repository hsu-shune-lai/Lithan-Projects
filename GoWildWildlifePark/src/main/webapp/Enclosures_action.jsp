<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.EnclosuresManage" %>
    <%@ page import = "com.csm.entity.Enclosures" %>
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
	String et = request.getParameter("Enclosures_Type");
	
	String ef = request.getParameter("Location");
	
	//calling DBManager 
	DBManager dbMgr = new DBManager();
	
	//using object calling jdbc getconnection
	dbMgr.getConnection();
	
	//two parameter passing 
	Enclosures c = new Enclosures(et, ef );
	
	//calling DietManage
	EnclosuresManage eMag = new EnclosuresManage();
	int Affect = -1;
	
	//calling dao 
	Affect = eMag.insert(c);
	
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