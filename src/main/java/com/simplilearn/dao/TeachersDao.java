package com.simplilearn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.simplilearn.DbUtil.DbUtil;


import com.simplilearn.bean.Teacher;


public class TeachersDao {

	public int insert(Teacher T) throws ClassNotFoundException, SQLException
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
		
		String sql="insert into Teacher values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,T.getId());
		ps.setString(2,T.getFname());
		ps.setString(3,T.getLname());
		ps.setString(4, T.getAddress());
		ps.setLong(5, T.getPhone());
		
		return ps.executeUpdate();
	}
	public List<Teacher> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Teacher> list=new ArrayList<Teacher>();
		String sql="select * from Teacher";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Teacher t=new Teacher();
			t.setId(rs.getInt(1));
			t.setFname(rs.getString(2));
			t.setLname(rs.getString(3));
			t.setAddress(rs.getString(4));
			t.setPhone(rs.getLong(5));
			
			
			list.add(t);
		}
		return list;
}
	
	public int edit(Teacher T) throws SQLException, ClassNotFoundException
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
	
	String sql="Update  Teacher set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);
	System.out.println("enter teachers id");
	ps.setInt(2, T.getId());
	System.out.println("enter name");
	ps.setString(1, T.getFname());
	return ps.executeUpdate();
	
	
	}
	public int delete(Teacher t) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from Teacher where id =?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,t.getId());
		
		return ps.executeUpdate();
	
	
}

}

