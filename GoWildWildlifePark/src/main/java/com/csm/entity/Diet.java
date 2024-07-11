package com.csm.entity;

public class Diet {

	private int Diet_ID;
	private String Diet_Type;
	private int NoOfFeedPerDay;
	
	public Diet(int diet_ID, String diet_Type, int noOfFeedPerDay) {
		super();
		Diet_ID = diet_ID;
		Diet_Type = diet_Type;
		NoOfFeedPerDay = noOfFeedPerDay;
	}
	public Diet(String diet_Type, int noOfFeedPerDay) {
		super();
		Diet_Type = diet_Type;
		NoOfFeedPerDay = noOfFeedPerDay;
	}
	public int getDiet_ID() {
		return Diet_ID;
	}
	public void setDiet_ID(int diet_ID) {
		Diet_ID = diet_ID;
	}
	public String getDiet_Type() {
		return Diet_Type;
	}
	public void setDiet_Type(String diet_Type) {
		Diet_Type = diet_Type;
	}
	public int getNoOfFeedPerDay() {
		return NoOfFeedPerDay;
	}
	public void setNoOfFeedPerDay(int noOfFeedPerDay) {
		NoOfFeedPerDay = noOfFeedPerDay;
	}
	
}
	
	

