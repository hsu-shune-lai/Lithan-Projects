<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
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
  String an = request.getParameter("Animal_Name");
  
  String agd = request.getParameter("Gender");
  String aya= request.getParameter("YearArrived");
  int asp = Integer.parseInt(request.getParameter("Species_Species_ID"));
  int akp = Integer.parseInt(request.getParameter("Keepers_Keepers_ID"));
  int ad = Integer.parseInt(request.getParameter("Diet_Diet_ID"));
  int ae = Integer.parseInt(request.getParameter("Enclosures_Enclosures_ID"));
  //calling DBManager 
  DBManager dbMgr = new DBManager();
  
  //using object calling jdbc getconnection
  dbMgr.getConnection();
  
  //seven parameter passing 
  Animal a = new Animal(an, agd, aya,asp,akp,ad,ae);
  
  //calling SpeciesManage
  AnimalManage eMag = new AnimalManage();
  int Affect = -1;
  
  //calling dao 
  Affect = eMag.insert(a);
  
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