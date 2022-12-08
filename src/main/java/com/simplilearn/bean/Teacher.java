package com.simplilearn.bean;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class Teacher {
	private int id;
	private String fname;
	private String lname;
	private String Address;
	private long Phone;
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
	public Subjects getS() {
		return s;
	}
	public void setS(Subjects s) {
		this.s = s;
	}
	private int age;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="id")
	private Subjects s;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getAclass() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
