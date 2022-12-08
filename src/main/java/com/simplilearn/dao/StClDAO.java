package com.simplilearn.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.simplilearn.DbUtil.DbUtil;
import com.simplilearn.bean.*;

public class StClDAO {
	public List<StuClassTable> display() throws ClassNotFoundException, SQLException{
		Connection con=DbUtil.dbConn();
		if(con!=null) {
			System.out.println("connection with dB is established in stucls ");
		}
		else {
			System.out.println("connection failed ");
		}
		List<StuClassTable> list=new ArrayList<StuClassTable>();
		String sql="select * from StuClassTable";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StuClassTable s=new StuClassTable();
			s.setId(rs.getInt(1));
			s.setName(rs.getString(2));
			s.setAddress(rs.getString(3));
			list.add(s);
		}
		return list;
}
}
