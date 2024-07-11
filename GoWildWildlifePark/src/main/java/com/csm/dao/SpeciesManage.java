package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.Enclosures;
import com.csm.entity.Keepers;
import com.csm.entity.Species;
import com.csm.DBManager;

public class SpeciesManage {

	//insert
	public int insert (Species s)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "INSERT INTO `gwwp`.`species` (`Species_Type`, `Species_group`,`Lifestyle`,`Conversation_Status`) " +
				"VALUES (?,?,?,?)"; 

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, s.getSpecies_Type());
		pstmt.setString(2, s.getSpecies_group());
		pstmt.setString(3, s.getLifestyle());
		pstmt.setString(4, s.getConversation_Status());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 
	//View
			public ArrayList<Species>fetchAll() throws ClassNotFoundException, SQLException{
				
				ArrayList<Species> species = new ArrayList<Species>();
				
				Species s;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//query
				String sql = "select * from gwwp.species";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while (rs.next()){
					s = new Species(	rs.getInt("Species_ID"),
							rs.getString("Species_Type"),
							rs.getString("Species_group"),
							rs.getString("Lifestyle"),
							rs.getString("Conversation_Status"));
							
					species.add(s);
				}
				return species;
			}
			//delete
			public int delete (int Species_ID) throws ClassNotFoundException,
			SQLException{
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "DELETE FROM `gwwp`.`species` " +
						"WHERE (`Species_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Species_ID);
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
			//update
			public int update(Species c)throws ClassNotFoundException,
			SQLException{
				
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "UPDATE `gwwp`.`species` SET " +
						"`Species_Type` = ?, " +
						"`Species_group` = ?, " +
						"`Lifestyle` = ?, " +
						"`Conversation_Status` = ?" +
						" WHERE (`Species_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				
				pstmt.setString(1, c.getSpecies_Type());
				pstmt.setString(2, c.getSpecies_group());
				pstmt.setString(3, c.getLifestyle());
				pstmt.setString(4, c.getConversation_Status());
				pstmt.setInt(5, c.getSpecies_ID());
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
			


	// getting Species id
	    public Species getById (int SpeciesId) throws ClassNotFoundException,
			SQLException{
				String sql;
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				sql = "SELECT * FROM `gwwp`.`species` " +
						"WHERE (`Species_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt (1, SpeciesId);
				ResultSet rs = pstmt.executeQuery();
				
				Species species = null;
				
				while (rs.next()){
					species = new Species(rs.getInt("Species_ID"),
							rs.getString("Species_Type"),
							rs.getString("Species_group"),
							rs.getString("Lifestyle"),
							rs.getString("Conversation_Status"));
				}
				return species;
			}

}