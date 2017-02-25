package com.yc.tn.entity;

public class TagInfo {
	private Integer tag_Id;
	private String tagName;
	
	public TagInfo() {
		super();
	}
	public TagInfo(Integer tag_Id, String tagName) {
		super();
		this.tag_Id = tag_Id;
		this.tagName = tagName;
	}
	public Integer getTag_Id() {
		return tag_Id;
	}
	public void setTag_Id(Integer tag_Id) {
		this.tag_Id = tag_Id;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	@Override
	public String toString() {
		return "TagInfo [tag_Id=" + tag_Id + ", tagName=" + tagName + "]";
	}
	
}
