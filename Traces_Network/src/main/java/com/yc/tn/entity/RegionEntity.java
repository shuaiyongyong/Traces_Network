package com.yc.tn.entity;

public class RegionEntity {

	private int region_Id;
	private String region_Name;
	
	public RegionEntity() {
		super();
	}

	public RegionEntity(int region_Id, String region_Name) {
		super();
		this.region_Id = region_Id;
		this.region_Name = region_Name;
	}

	public int getRegion_Id() {
		return region_Id;
	}

	public void setRegion_Id(int region_Id) {
		this.region_Id = region_Id;
	}

	public String getRegion_Name() {
		return region_Name;
	}

	public void setRegion_Name(String region_Name) {
		this.region_Name = region_Name;
	}

	@Override
	public String toString() {
		return "RegionEntity [region_Id=" + region_Id + ", region_Name="
				+ region_Name + "]";
	}
	
	
	
	
}
