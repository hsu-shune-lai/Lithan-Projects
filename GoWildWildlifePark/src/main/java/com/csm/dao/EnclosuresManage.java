package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.Diet;
import com.csm.entity.Enclosures;
import com.csm.DBManager;

public class EnclosuresManage {

	//insert
	public int insert (Enclosures c)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "INSERT INTO `gwwp`.`enclosures` (`Enclosures_Type`, `Location`) " +
				"VALUES (?, ?)"; 

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, c.getEnclosures_Type());
		pstmt.setString(2, c.getLocation());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 
	//View
		public ArrayList<Enclosures>fetchAll() throws ClassNotFoundException, SQLException{
			
			ArrayList<Enclosures> enclosures = new ArrayList<Enclosures>();
			
			Enclosures c;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//query
			String sql = "select * from gwwp.enclosures";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()){
				c = new Enclosures(	rs.getInt("Enclosures_ID"),
						rs.getString("Enclosures_Type"),
						rs.getString("Location"));
						
				enclosures.add(c);
			}
			return enclosures;
		}
		//delete
		public int delete (int Enclosures_ID) throws ClassNotFoundException,
		SQLException{
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "DELETE FROM `gwwp`.`enclosures` " +
					"WHERE (`Enclosures_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Enclosures_ID);
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
		//update
		public int update(Enclosures c)throws ClassNotFoundException,
		SQLException{
			
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "UPDATE `gwwp`.`enclosures` SET " +
					"`Enclosures_Type` = ?, " +
					"`Location` = ?" +
					" WHERE (`Enclosures_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, c.getEnclosures_Type());
			pstmt.setString(2, c.getLocation());
			pstmt.setInt(3, c.getEnclosures_ID());
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
// getting Enclosures id
    public Enclosures getById (int EnclosuresId) throws ClassNotFoundException,
		SQLException{
			String sql;
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			sql = "SELECT * FROM `gwwp`.`enclosures` " +
					"WHERE (`Enclosures_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt (1, EnclosuresId);
			ResultSet rs = pstmt.executeQuery();
			
			Enclosures enclosures = null;
			
			while (rs.next()){
				enclosures = new Enclosures(rs.getInt("Enclosures_ID"),
						rs.getString("Enclosures_Type"),
						rs.getString("Location"));
			}
			return enclosures;
		}

}