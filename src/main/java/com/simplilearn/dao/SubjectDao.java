package com.simplilearn.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import com.simplilearn.DbUtil.DbUtil;
import com.simplilearn.bean.Subjects;


public class SubjectDao {
	public int insert(Subjects s) throws ClassNotFoundException, SQLException
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
		
		String sql="insert into Subjects values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		
	
		//ps.setString(1,s.getSname());
		
		ps.setInt(1,s.getSid());
		ps.setString(2, s.getSname());
		
		
		return ps.executeUpdate();
	}
	public List<Subjects> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Subjects> list=new ArrayList<Subjects>();
		String sql="select * from Subjects";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Subjects s=new Subjects();
			s.setSid(rs.getInt(1));
			s.setSname(rs.getString(2));
			
			
			list.add(s);
		}
		return list;
}
	
	public int edit(Subjects s) throws SQLException, ClassNotFoundException
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
	
	String sql="Update  Subjects set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	System.out.println("enter teachers id");
	ps.setInt(1, s.getSid());
	System.out.println("enter name");
	ps.setString(2, s.getSname());
	return ps.executeUpdate();
	
	
	}
	
	
}



