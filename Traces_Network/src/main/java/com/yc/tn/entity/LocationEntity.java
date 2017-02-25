package com.yc.tn.entity;

public class LocationEntity {
	
	private int scenic_Id;//景点编号
	private String scenic_Name ;//景点名称
	private String scenic_Type;//景点类型
	private int scenic_Level;//景点级别
	private double scenic_Latitude;//景点纬度
	private double scenic_Longitude ;//景点经度
	private int city_Id;//地区编号
	
	public LocationEntity() {
		super();
	}

	public LocationEntity(int scenic_Id, String scenic_Name,
			String scenic_Type, int scenic_Level, double scenic_Latitude,
			double scenic_Longitude, int city_Id) {
		super();
		this.scenic_Id = scenic_Id;
		this.scenic_Name = scenic_Name;
		this.scenic_Type = scenic_Type;
		this.scenic_Level = scenic_Level;
		this.scenic_Latitude = scenic_Latitude;
		this.scenic_Longitude = scenic_Longitude;
		this.city_Id = city_Id;
	}

	public int getScenic_Id() {
		return scenic_Id;
	}

	public void setScenic_Id(int scenic_Id) {
		this.scenic_Id = scenic_Id;
	}

	public String getScenic_Name() {
		return scenic_Name;
	}

	public void setScenic_Name(String scenic_Name) {
		this.scenic_Name = scenic_Name;
	}

	public String getScenic_Type() {
		return scenic_Type;
	}

	public void setScenic_Type(String scenic_Type) {
		this.scenic_Type = scenic_Type;
	}

	public int getScenic_Level() {
		return scenic_Level;
	}

	public void setScenic_Level(int scenic_Level) {
		this.scenic_Level = scenic_Level;
	}

	public double getScenic_Latitude() {
		return scenic_Latitude;
	}

	public void setScenic_Latitude(double scenic_Latitude) {
		this.scenic_Latitude = scenic_Latitude;
	}

	public double getScenic_Longitude() {
		return scenic_Longitude;
	}

	public void setScenic_Longitude(double scenic_Longitude) {
		this.scenic_Longitude = scenic_Longitude;
	}

	public int getCity_Id() {
		return city_Id;
	}

	public void setCity_Id(int city_Id) {
		this.city_Id = city_Id;
	}

	@Override
	public String toString() {
		return "LocationEntity [scenic_Id=" + scenic_Id + ", scenic_Name="
				+ scenic_Name + ", scenic_Type=" + scenic_Type
				+ ", scenic_Level=" + scenic_Level + ", scenic_Latitude="
				+ scenic_Latitude + ", scenic_Longitude=" + scenic_Longitude
				+ ", city_Id=" + city_Id + "]";
	}
}
