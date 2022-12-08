package com.simplilearn.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Students {
	
	private int id;
	private String fname;
	private String lname;
	private String Address;
	private long Phone;
	private String ClassName;
	public String getClassName() {
		return ClassName;
	}
	public void setClassName(String className) {
		ClassName = className;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	public long getPhone() {
		return Phone;
	}
	public void setPhone(long phone) {
		Phone = phone;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id")
	private Classs c;
	
	public Classs getC() {
		return c;
	}
	public void setC(Classs c) {
		this.c = c;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
//	public int getAclass() {
//		return aclass;
//	}
//	public void setAclass(int aclass) {
//		this.aclass = aclass;
//	}
//	

}
