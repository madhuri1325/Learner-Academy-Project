package com.simplilearn.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.simplilearn.DbUtil.DbUtil;
import com.simplilearn.bean.Classes;

//import com.simplilearn.bean.Students;

public class ClassesDao {
	public int insert(Classes s) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null)
		{
			System.out.println("connection established");
			
		}
		else
		{
			System.out.println("connection not established");
		}
		
		String sql="insert into Classes values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,s.getCid() );
		ps.setString(2, s.getC_name());
		return ps.executeUpdate();
	}
	public List<Classes> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Classes> list=new ArrayList<Classes>();
		String sql="select * from Classes";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Classes s=new Classes();
			s.setCid(rs.getInt(1));
			s.setC_name(rs.getString(2));
			list.add(s);
		}
		return list;
}
	
	public int edit(Classes s) throws SQLException, ClassNotFoundException
	{
		Connection con=DbUtil.dbConn();
		if (con!=null)
		{
			System.out.println("connection establised");
		}
		else
		{
			System.out.println("connection not established");
		}
	
	String sql="Update  Classes set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(2, s.getCid());
	ps.setString(1, s.getC_name());
	return ps.executeUpdate();
	
	
	}
	public int delete(Classes c) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from Classes where id =?";
		PreparedStatement ps=con.prepareStatement(sql);
	     ps.setInt(1, c.getCid());
		
		return ps.executeUpdate();
	
}

}
