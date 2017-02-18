package com.yc.tn.entity;

public class LocationEntity {
	
	private int id;
	private double longitude;	//经度
	private double latitude;	//纬度
	private String address;		//地址
	private int userid;			//用户ID
	
	public LocationEntity() {
		super();
	}
	
	public LocationEntity(int id, double longitude, double latitude,
			String address, int userid) {
		super();
		this.id = id;
		this.longitude = longitude;
		this.latitude = latitude;
		this.address = address;
		this.userid = userid;
	}
	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	
	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address = address;
	}
	
	public int getUserid(){
		return userid;
	}
	public void setUserid(int userid){
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "LocationEntity [id=" + id + ", longitude=" + longitude
				+ ", latitude=" + latitude + ", address=" + address
				+ ", userid=" + userid + "]";
	}
	
	
}

