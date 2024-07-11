<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "java.util.*" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "com.csm.DBManager" %>
    <%@ page import = "com.csm.dao.AnimalManage" %>
    <%@ page import = "com.csm.entity.Animal" %>
    
    <%@ include file="Animal_list.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Animal</title>
</head>
<body>

<%
  String aId = request.getParameter("animal_id");
  String aName = request.getParameter("animal_name");
  String aGender = request.getParameter("gender");
  String aArrived = request.getParameter("yearArrived");
  String aEnclosures = request.getParameter("species_Species_ID");
  String aKeepers = request.getParameter("keepers_Keepers_ID");
  String aDiet = request.getParameter("diet_Diet_ID");
  String aSpecies = request.getParameter("enclosures_Enclosures_ID");
  
  
  
  out.println(aId);
  out.println(aName);
  out.println(aGender);
  out.println(aArrived);
  out.println(aEnclosures);
  out.println(aKeepers);
  out.println(aDiet);
  out.println(aSpecies);
  
  AnimalManage dao = new AnimalManage();
  Animal a = new Animal(Integer.parseInt(aId),aName,aGender,aArrived,Integer.parseInt(aEnclosures), Integer.parseInt(aKeepers),Integer.parseInt(aDiet),Integer.parseInt(aSpecies));
  
  int rowAffected;
  try {
    rowAffected = dao.update(a);
    out.println("Update record..");
  }catch (ClassNotFoundException ex){
    out.println(ex.getMessage());
  }catch (SQLException e){
    out.println(e.getMessage());
  }
%>

</body>
</html>