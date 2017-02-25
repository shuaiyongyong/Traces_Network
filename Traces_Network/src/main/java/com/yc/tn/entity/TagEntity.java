package com.yc.tn.entity;

public class TagEntity {

	private int tag_Id;
	private String tag_Pic;
	private String tag_Name;
	
	public TagEntity() {
		super();
	}

	public TagEntity(int tag_Id, String tag_Pic, String tag_Name) {
		super();
		this.tag_Id = tag_Id;
		this.tag_Pic = tag_Pic;
		this.tag_Name = tag_Name;
	}

	public int getTag_Id() {
		return tag_Id;
	}

	public void setTag_Id(int tag_Id) {
		this.tag_Id = tag_Id;
	}

	public String getTag_Pic() {
		return tag_Pic;
	}

	public void setTag_Pic(String tag_Pic) {
		this.tag_Pic = tag_Pic;
	}

	public String getTag_Name() {
		return tag_Name;
	}

	public void setTag_Name(String tag_Name) {
		this.tag_Name = tag_Name;
	}

	@Override
	public String toString() {
		return "TagEntity [tag_Id=" + tag_Id + ", tag_Pic=" + tag_Pic
				+ ", tag_Name=" + tag_Name + "]";
	}

}
