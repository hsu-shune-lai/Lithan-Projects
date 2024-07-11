package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.Animal;
import com.csm.entity.Species;
import com.csm.DBManager;

public class AnimalManage {

  //insert
  public int insert (Animal a)throws ClassNotFoundException, SQLException{
    int result = -1;
    
    //get connection
    DBManager dbMgr = new DBManager();
    Connection conn = dbMgr.getConnection();
    
    //prepare statement
    String sql = "INSERT INTO gwwp.animal (`animal_Name`,`Gender`,`yearArrived`,`species_Species_ID`,`keepers_Keepers_ID`,`diet_Diet_ID`,`Enclosures_Enclosures_ID`) " +
        "VALUES (?,?,?,?,?,?,?)"; 

    PreparedStatement pstmt = conn.prepareStatement(sql);
    
    //first and second parameters inserted 1. type and location
    pstmt.setString(1, a.getAnimal_Name());
    pstmt.setString(2, a.getGender());
    pstmt.setString(3, a.getYearArrived());
    pstmt.setInt(4, a.getSpecies_Species_ID());
    pstmt.setInt(5, a.getKeepers_Keepers_ID());
    pstmt.setInt(6, a.getDiet_Diet_ID());
    pstmt.setInt(7, a.getEnclosures_Enclosures_ID());
    
        
    //3. execute statement
    result = pstmt.executeUpdate();
    
    return result;
  } 
////View
	public ArrayList<Animal>fetchAll() throws ClassNotFoundException, SQLException{
		
		ArrayList<Animal> animal = new ArrayList<Animal>();
		
		Animal a;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//query
		String sql = "select * from gwwp.animal";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()){
			a = new Animal(	rs.getInt("Animal_ID"),
					rs.getString("Animal_Name"),
					rs.getString("Gender"),
					rs.getString("YearArrived"),
					rs.getInt("Species_Species_ID"),
					rs.getInt("Keepers_Keepers_ID"),
					rs.getInt("Diet_Diet_ID"),
					rs.getInt("Enclosures_Enclosures_ID"));
					
			animal.add(a);
		}
		return animal;
		
	}
	//Report 1
			public ArrayList<Animal> fetchDaveorTemi()throws ClassNotFoundException, SQLException{ //select all
				ArrayList<Animal> animal = new ArrayList<Animal>();
				Animal animalInfo;
				// get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();

				// query
				String sql = "SELECT * FROM gwwp.sortname1;";  //calling report 
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();


				while (rs.next()) {
					animalInfo = new Animal(
							
							rs.getInt("a_id"),
							rs.getString("a_name"),
							rs.getString("a_gender"),
							rs.getString("a_arrived"),
							rs.getInt("k_id"),
							rs.getString("k_name"));
						animal.add(animalInfo); //add entity into collection to arraylist
				}


				return animal;
		
			}
			// Report 2
			public ArrayList<Animal> fetchAnimalGroupByKeeper()throws ClassNotFoundException, SQLException{ //select all
				ArrayList<Animal> animals = new ArrayList<Animal>();
				Animal animalinfobykeeper;
				// get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();

				// query
		String sql ="SELECT keepers.Keepers_Name AS Keepers_Name, COUNT(animal.Animal_ID) AS Total_Animals\r\n"
				+ "FROM gwwp.keepers\r\n"
				+ "Inner JOIN animal ON keepers.Keepers_ID = animal.Keepers_Keepers_ID\r\n"
				+ "GROUP BY keepers.Keepers_Name;";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();


				while (rs.next()) {
					animalinfobykeeper = new Animal(
							
							rs.getString("Keepers_Name"),
							rs.getInt("Total_Animals"));
							
					animals.add(animalinfobykeeper); //add entity into collection to arraylist
				}

				return animals;

			}	
			//delete
			public int delete (int Animal_ID) throws ClassNotFoundException,
			SQLException{
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "DELETE FROM `gwwp`.`animal` " +
						"WHERE (`Animal_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Animal_ID);
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
			//update
			public int update(Animal c)throws ClassNotFoundException,
			SQLException{
				
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "UPDATE `gwwp`.`Animal` SET " +
						"`Animal_Name` = ?, " +
						"`Gender` = ?, " +
						"`YearArrived` = ?, " +
						"`Species_Species_ID` = ?, " +
						"`Keepers_Keepers_ID` = ?, " +
						"`Diet_Diet_ID` = ?, " +
						"`Enclosures_Enclosures_ID` = ?" +
						" WHERE (`Animal_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				
				pstmt.setString(1, c.getAnimal_Name());
				pstmt.setString(2, c.getGender());
				pstmt.setString(3, c.getYearArrived());
				pstmt.setInt(4, c.getSpecies_Species_ID());
				pstmt.setInt(5, c.getKeepers_Keepers_ID());
				pstmt.setInt(6, c.getDiet_Diet_ID());
				pstmt.setInt(7, c.getEnclosures_Enclosures_ID());
				pstmt.setInt(8, c.getAnimal_ID());
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
			


	// getting Animal id
	    public Animal getById (int AnimalId) throws ClassNotFoundException,
			SQLException{
				String sql;
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				sql = "SELECT * FROM `gwwp`.`animal` " +
						"WHERE (`Animal_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt (1, AnimalId);
				ResultSet rs = pstmt.executeQuery();
				
				Animal animal = null;
				
				while (rs.next()){
					animal = new Animal(rs.getInt("Animal_ID"),
							rs.getString("Animal_Name"),
							rs.getString("Gender"),
							rs.getString("YearArrived"),
							rs.getInt("Species_Species_ID"),
							rs.getInt("Keepers_Keepers_ID"),
							rs.getInt("Diet_Diet_ID"),
							rs.getInt("Enclosures_Enclosures_ID"));
				}
				return animal;
			}

}