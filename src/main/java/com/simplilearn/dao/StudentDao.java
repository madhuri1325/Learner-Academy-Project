package com.simplilearn.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.simplilearn.DbUtil.DbUtil;
import com.simplilearn.bean.Students;

public class StudentDao {
	
	public int insert(Students s) throws ClassNotFoundException, SQLException
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
		
		String sql="insert into Students values(?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,s.getId());
		//ps.setInt(2,s.getAge());
		ps.setString(2,s.getFname());
		ps.setString(3,s.getLname());
		ps.setString(4, s.getAddress());
		ps.setLong(5, s.getPhone());
		ps.setString(6, s.getClassName());
		return ps.executeUpdate();
	}
	public List<Students> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<Students> list=new ArrayList<Students>();
		String sql="select * from Students";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Students s=new Students();
			s.setId(rs.getInt(1));
			s.setFname(rs.getString(2));
			s.setLname(rs.getString(3));
		s.setAddress(rs.getString(4));
		s.setPhone(rs.getLong(5));
		s.setClassName(rs.getString(6));
			list.add(s);
		}
		return list;
}
	
	public int edit(Students s) throws SQLException, ClassNotFoundException
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
	
	String sql="Update  Students set name=? where id=? ";
	PreparedStatement ps=con.prepareStatement(sql);

	ps.setInt(1, s.getId());

	ps.setString(2, s.getFname());
	//System.out.println("enter last name");
	//ps.setString(3, s.getLname());
	return ps.executeUpdate();
	
	
	}
	public int delete(Students c) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established ");
		}
		else {
			System.out.println("connection failed ");
		}
		String sql="delete from Students where id =?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,c.getId());
		
		return ps.executeUpdate();
	
	
	
}


}