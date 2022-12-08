package com.simplilearn.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class Subjects {
	
	
	private int Sid;
	
	private String Sname;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id")
	
	
	public int getSid() {
		return Sid;
	}
	public void setSid(int sid) {
		Sid = sid;
	}
	public String getSname() {
		return Sname;
	}
	public void setSname(String sname) {
		Sname = sname;
	}

	


}
