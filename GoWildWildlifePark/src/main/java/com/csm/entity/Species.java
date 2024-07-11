package com.csm.entity;
public class Species {
	private int Species_ID;
	private String Species_Type;
	private String Species_group;
	private String Conversation_Status;
	public Species(int species_ID, String species_Type, String species_group, String lifestyle,
			String conversation_Status) {
		super();
		Species_ID = species_ID;
		Species_Type = species_Type;
		Species_group = species_group;
		Lifestyle = lifestyle;
		Conversation_Status = conversation_Status;
	}
	public Species(String species_Type, String species_group, String lifestyle, String conversation_Status) {
		super();
		Species_Type = species_Type;
		Species_group = species_group;
		Lifestyle = lifestyle;
		Conversation_Status = conversation_Status;
	}
	public int getSpecies_ID() {
		return Species_ID;
	}
	public void setSpecies_ID(int species_ID) {
		Species_ID = species_ID;
	}
	public String getSpecies_Type() {
		return Species_Type;
	}
	public void setSpecies_Type(String species_Type) {
		Species_Type = species_Type;
	}
	public String getSpecies_group() {
		return Species_group;
	}
	public void setSpecies_group(String species_group) {
		Species_group = species_group;
	}
	public String getLifestyle() {
		return Lifestyle;
	}
	public void setLifestyle(String lifestyle) {
		Lifestyle = lifestyle;
	}
	public String getConversation_Status() {
		return Conversation_Status;
	}
	public void setConversation_Status(String conversation_Status) {
		Conversation_Status = conversation_Status;
	}
	private String Lifestyle;
	
	

}
