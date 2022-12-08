package com.simplilearn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.simplilearn.DbUtil.DbUtil;
import com.simplilearn.bean.Classes;
import com.simplilearn.bean.Classs;

//	private int id;
//
//private String teacher;
//private String subject;

public class ClasssDAO {
	public int insert(Classs s) throws ClassNotFoundException, SQLException
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
		
		String sql="insert into Classs values(?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1, s.getId());
	ps.setString(2, s.getTeacher());
	ps.setString(3, s.getSubject());
		return ps.executeUpdate();
	}
	public List<Classs> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Classs> list=new ArrayList<Classs>();
		String sql="select * from Classs";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Classs s=new Classs();
			s.setId(rs.getInt(1));
			s.setTeacher(rs.getString(2));
			s.setSubject(rs.getString(3));
			list.add(s);
		}
		return list;
}
	
	public int edit(Classs s) throws SQLException, ClassNotFoundException
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
	
	String sql="Update  Classs set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(2, s.getId());
	ps.setString(1, s.getSubject());
	return ps.executeUpdate();
	
	
	}
	public int delete(Classs c) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from Classs where id =?";
		PreparedStatement ps=con.prepareStatement(sql);
	     ps.setInt(1, c.getId());
		
		return ps.executeUpdate();
	
}

}
