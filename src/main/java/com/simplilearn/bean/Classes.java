package com.simplilearn.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Classes {
	
	@Id
	private int Cid;
	public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		Cid = cid;
	}
	public String getC_name() {
		return C_name;
	}
	public void setC_name(String c_name) {
		C_name = c_name;
	}
	private String C_name; 

}
