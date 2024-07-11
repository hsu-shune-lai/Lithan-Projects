package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.Diet;
import com.csm.entity.Keepers;
import com.csm.DBManager;

public class KeepersManage {

	//insert
	public int insert (Keepers k)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "INSERT INTO `gwwp`.`keepers` (`Keepers_Name`, `Date_Of_Birth`,`Keepers_Rank`) " +
				"VALUES (?,?,?)"; 

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, k.getKeepers_Name());
		pstmt.setString(2, k.getDate_Of_Birth());
		pstmt.setString(3, k.getKeepers_Rank());
		
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 
	//View
		public ArrayList<Keepers>fetchAll() throws ClassNotFoundException, SQLException{
			
			ArrayList<Keepers> keepers = new ArrayList<Keepers>();
			
			Keepers k;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//query
			String sql = "select * from gwwp.keepers";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()){
				k = new Keepers(	rs.getInt("Keepers_ID"),
						rs.getString("Keepers_Name"),
						rs.getString("Date_Of_Birth"),
						rs.getString("Keepers_Rank"));
						
				keepers.add(k);
			}
			return keepers;
		}
		//delete
		public int delete (int keepers_id) throws ClassNotFoundException,
		SQLException{
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "DELETE FROM `gwwp`.`keepers`" +
					"WHERE (`Keepers_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, keepers_id);
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
		//update
		public int update(Keepers c)throws ClassNotFoundException,
		SQLException{
			
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "UPDATE `gwwp`.`keepers` SET " +
					"`Keepers_Name` = ?, " +
					"`Date_Of_Birth` = ?, " +
					"`Keepers_Rank` = ?" +
					" WHERE (`Keepers_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, c.getKeepers_Name());
			pstmt.setString(2, c.getDate_Of_Birth());
			pstmt.setString(3, c.getKeepers_Rank());
			pstmt.setInt(4, c.getKeepers_ID());
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
		


// getting Keepers id
    public Keepers getById (int KeepersId) throws ClassNotFoundException,
		SQLException{
			String sql;
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			sql = "SELECT * FROM `gwwp`.`keepers` " +
					"WHERE (`Keepers_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt (1, KeepersId);
			ResultSet rs = pstmt.executeQuery();
			
			Keepers keeper = null;
			
			while (rs.next()){
				keeper = new Keepers(rs.getInt("Keepers_ID"),
						rs.getString("Keepers_Name"),
						rs.getString("Date_Of_Birth"),
						rs.getString("Keepers_Rank"));
			}
			return keeper;
		}


}