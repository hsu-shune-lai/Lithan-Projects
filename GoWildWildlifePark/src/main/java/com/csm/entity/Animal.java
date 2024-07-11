package com.csm.entity;

public class Animal {
	private int Animal_ID;
	private String Animal_Name;
	private String Gender;
	private String YearArrived;
	private int Species_Species_ID;
	private int Keepers_Keepers_ID;
	private int Diet_Diet_ID;
	private int Enclosures_Enclosures_ID;
	
	//For Report 1
	private String Keepers_Name;
	
	
	
	public Animal(int animal_ID, String animal_Name, String gender, String yearArrived, int keepers_Keepers_ID,
			String keepers_Name) {
		super();
		Animal_ID = animal_ID;
		Animal_Name = animal_Name;
		Gender = gender;
		YearArrived = yearArrived;
		Keepers_Keepers_ID = keepers_Keepers_ID;
		Keepers_Name = keepers_Name;
	}
	//For Report 2
	
	private int Total_Animals;
	
	
	public Animal(String keepers_Name, int total_Animals) {
		super();
		Keepers_Name = keepers_Name;
		Total_Animals = total_Animals;
	}
	public Animal(int animal_ID, String animal_Name, String gender, String yearArrived, int species_Species_ID,
			int keepers_Keepers_ID, int diet_Diet_ID, int enclosures_Enclosures_ID) {
		super();
		Animal_ID = animal_ID;
		Animal_Name = animal_Name;
		Gender = gender;
		YearArrived = yearArrived;
		Species_Species_ID = species_Species_ID;
		Keepers_Keepers_ID = keepers_Keepers_ID;
		Diet_Diet_ID = diet_Diet_ID;
		Enclosures_Enclosures_ID = enclosures_Enclosures_ID;
	}
	public Animal(String animal_Name, String gender, String yearArrived, int species_Species_ID, int keepers_Keepers_ID,
			int diet_Diet_ID, int enclosures_Enclosures_ID) {
		super();
		Animal_Name = animal_Name;
		Gender = gender;
		YearArrived = yearArrived;
		Species_Species_ID = species_Species_ID;
		Keepers_Keepers_ID = keepers_Keepers_ID;
		Diet_Diet_ID = diet_Diet_ID;
		Enclosures_Enclosures_ID = enclosures_Enclosures_ID;
	}
	public int getAnimal_ID() {
		return Animal_ID;
	}
	public void setAnimal_ID(int animal_ID) {
		Animal_ID = animal_ID;
	}
	public String getAnimal_Name() {
		return Animal_Name;
	}
	public void setAnimal_Name(String animal_Name) {
		Animal_Name = animal_Name;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getYearArrived() {
		return YearArrived;
	}
	public void setYearArrived(String yearArrived) {
		YearArrived = yearArrived;
	}
	public int getSpecies_Species_ID() {
		return Species_Species_ID;
	}
	public void setSpecies_Species_ID(int species_Species_ID) {
		Species_Species_ID = species_Species_ID;
	}
	public int getKeepers_Keepers_ID() {
		return Keepers_Keepers_ID;
	}
	public void setKeepers_Keepers_ID(int keepers_Keepers_ID) {
		Keepers_Keepers_ID = keepers_Keepers_ID;
	}
	public int getDiet_Diet_ID() {
		return Diet_Diet_ID;
	}
	public void setDiet_Diet_ID(int diet_Diet_ID) {
		Diet_Diet_ID = diet_Diet_ID;
	}
	public int getEnclosures_Enclosures_ID() {
		return Enclosures_Enclosures_ID;
	}
	public void setEnclosures_Enclosures_ID(int enclosures_Enclosures_ID) {
		Enclosures_Enclosures_ID = enclosures_Enclosures_ID;
	}
	public String getKeepers_Name() {
		return Keepers_Name;
	}
	public void setKeepers_Name(String keepers_Name) {
		Keepers_Name = keepers_Name;
	}
	public int getTotal_Animals() {
		return Total_Animals;
	}
	public void setTotal_Animals(int total_Animals) {
		Total_Animals = total_Animals;
	}
	
	
	
	
	
}
