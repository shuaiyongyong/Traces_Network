package com.yc.tn.entity;

public class CityEntity {

	private int city_Id;
	private String city_Name;
	private int region_Id;
	
	public CityEntity() {
		super();
	}

	public CityEntity(int city_Id, String city_Name, int region_Id) {
		super();
		this.city_Id = city_Id;
		this.city_Name = city_Name;
		this.region_Id = region_Id;
	}

	public int getCity_Id() {
		return city_Id;
	}

	public void setCity_Id(int city_Id) {
		this.city_Id = city_Id;
	}

	public String getCity_Name() {
		return city_Name;
	}

	public void setCity_Name(String city_Name) {
		this.city_Name = city_Name;
	}

	public int getRegion_Id() {
		return region_Id;
	}

	public void setRegion_Id(int region_Id) {
		this.region_Id = region_Id;
	}

	@Override
	public String toString() {
		return "CityEntity [city_Id=" + city_Id + ", city_Name=" + city_Name
				+ ", region_Id=" + region_Id + "]";
	}
	
	
	
	
}
