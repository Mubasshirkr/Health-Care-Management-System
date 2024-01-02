package com.entity;

public class Specialist {
	
	private int id;
	private String sepcialistName;
	
	
	
	public Specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Specialist(int id, String sepcialistName) {
		super();
		this.id = id;
		this.sepcialistName = sepcialistName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSepcialistName() {
		return sepcialistName;
	}
	public void setSepcialistName(String sepcialistName) {
		this.sepcialistName = sepcialistName;
	}

	
	
}
