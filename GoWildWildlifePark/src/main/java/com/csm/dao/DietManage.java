package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.entity.Diet;
import com.csm.DBManager;

public class DietManage {

	//insert
	public int insert (Diet c)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "INSERT INTO `gwwp`.`diet` (`Diet_Type`, `NoOfFeedPerDay`) " +
				"VALUES (?, ?)"; 

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, c.getDiet_Type());
		pstmt.setInt(2, c.getNoOfFeedPerDay());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	} 
	//View
	public ArrayList<Diet>fetchAll() throws ClassNotFoundException, SQLException{
		
		ArrayList<Diet> diets = new ArrayList<Diet>();
		
		Diet c;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//query
		String sql = "select * from gwwp.diet";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()){
			c = new Diet(	rs.getInt("Diet_ID"),
					rs.getString("Diet_Type"),
					rs.getInt("NoOfFeedPerDay"));
					
			diets.add(c);
		}
		return diets;
	}
	//delete
			public int delete (int DietId) throws ClassNotFoundException,
			SQLException{
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "DELETE FROM `gwwp`.`diet` " +
						"WHERE (`Diet_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, DietId);
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
			//update
			public int update(Diet c)throws ClassNotFoundException,
			SQLException{
				
				int result = -1;
				
				//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				String sql = "UPDATE `gwwp`.`diet` SET " +
						"`Diet_Type` = ?, " +
						"`NoOfFeedPerDay` = ?" +
						" WHERE (`Diet_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, c.getDiet_Type());
				pstmt.setInt(2, c.getNoOfFeedPerDay());
				pstmt.setInt(3, c.getDiet_ID());
				
				//execute statement
				result = pstmt.executeUpdate();
				return result;
			}
	// getting Diet id
	    public Diet getById (int DietId) throws ClassNotFoundException,
			SQLException{
				String sql;
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConnection();
				
				//prepare statement
				sql = "SELECT * FROM `gwwp`.`diet` " +
						"WHERE (`Diet_ID` = ?)";
				
				PreparedStatement pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt (1, DietId);
				ResultSet rs = pstmt.executeQuery();
				
				Diet diet = null;
				
				while (rs.next()){
					diet = new Diet(rs.getInt("Diet_ID"),
							rs.getString("Diet_Type"),
							rs.getInt("NoOfFeedPerDay"));
				}
				return diet;
			}
}