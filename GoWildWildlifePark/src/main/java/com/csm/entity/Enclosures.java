package com.csm.entity;

public class Enclosures {
	private int Enclosures_ID;
	private String Enclosures_Type;
	private String Location;
	
	
	public Enclosures(int enclosures_ID, String enclosures_Type, String location) {
		super();
		Enclosures_ID = enclosures_ID;
		Enclosures_Type = enclosures_Type;
		Location = location;
	}
	public Enclosures(String enclosures_Type, String location) {
		super();
		Enclosures_Type = enclosures_Type;
		Location = location;
	}
	public int getEnclosures_ID() {
		return Enclosures_ID;
	}
	public void setEnclosures_ID(int enclosures_ID) {
		Enclosures_ID = enclosures_ID;
	}
	public String getEnclosures_Type() {
		return Enclosures_Type;
	}
	public void setEnclosures_Type(String enclosures_Type) {
		Enclosures_Type = enclosures_Type;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
}
