package com.yc.tn.entity;

import java.util.Date;

public class AskInfo {
	private Integer ask_Id;
	private Integer user_Id;
	private String ask_Content;
	private Integer ask_status;
	private Integer ask_click;
	private Date ask_time;
	
	
	public AskInfo() {
		super();
	}
	
	public AskInfo(Integer ask_Id, Integer user_Id, String ask_Content, Integer ask_status, Integer ask_click,
			Date ask_time) {
		super();
		this.ask_Id = ask_Id;
		this.user_Id = user_Id;
		this.ask_Content = ask_Content;
		this.ask_status = ask_status;
		this.ask_click = ask_click;
		this.ask_time = ask_time;
	}

	public Integer getAsk_Id() {
		return ask_Id;
	}
	public void setAsk_Id(Integer ask_Id) {
		this.ask_Id = ask_Id;
	}
	public Integer getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(Integer user_Id) {
		this.user_Id = user_Id;
	}
	public String getAsk_Content() {
		return ask_Content;
	}
	public void setAsk_Content(String ask_Content) {
		this.ask_Content = ask_Content;
	}
	public Integer getAsk_status() {
		return ask_status;
	}
	public void setAsk_status(Integer ask_status) {
		this.ask_status = ask_status;
	}
	public Date getAsk_time() {
		return ask_time;
	}
	public void setAsk_time(Date ask_time) {
		this.ask_time = ask_time;
	}

	public Integer getAsk_click() {
		return ask_click;
	}

	public void setAsk_click(Integer ask_click) {
		this.ask_click = ask_click;
	}

	@Override
	public String toString() {
		return "AskInfo [ask_Id=" + ask_Id + ", user_Id=" + user_Id + ", ask_Content=" + ask_Content + ", ask_status="
				+ ask_status + ", ask_click=" + ask_click + ", ask_time=" + ask_time + "]";
	}
	
	
	
}
