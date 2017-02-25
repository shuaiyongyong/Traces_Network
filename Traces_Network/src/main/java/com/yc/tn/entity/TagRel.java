package com.yc.tn.entity;

import java.util.List;

public class TagRel {
	private Integer id;
	private Integer ask_Id;
	private Integer tag_Id;
	private List<TagInfo> tagInfo;
	
	public TagRel() {
		super();
	}
	public TagRel(Integer id, Integer ask_Id, Integer tag_Id, List<TagInfo> tagInfo) {
		super();
		this.id = id;
		this.ask_Id = ask_Id;
		this.tag_Id = tag_Id;
		this.tagInfo = tagInfo;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAsk_Id() {
		return ask_Id;
	}
	public void setAsk_Id(Integer ask_Id) {
		this.ask_Id = ask_Id;
	}
	public Integer getTag_Id() {
		return tag_Id;
	}
	public void setTag_Id(Integer tag_Id) {
		this.tag_Id = tag_Id;
	}
	public List<TagInfo> gettagInfo() {
		return tagInfo;
	}
	public void settagInfo(List<TagInfo> tagInfo) {
		this.tagInfo = tagInfo;
	}
	@Override
	public String toString() {
		return "TagRel [id=" + id + ", ask_Id=" + ask_Id + ", tag_Id=" + tag_Id + ", tagInfo=" + tagInfo + "]";
	}
	
	
}
