package com.yc.tn.entity;

import java.util.Date;

public class Answer {
	private Integer answer_Id;
	private Integer user_Id;
	private Integer ask_Id;
	private Integer likeCount;
	private String answer_content;
	private Date answer_time;
	
	
	public Answer() {
		super();
	}
	public Answer(Integer answer_Id, Integer user_Id, Integer ask_Id, Integer likeCount, String answer_content,
			Date answer_time) {
		super();
		this.answer_Id = answer_Id;
		this.user_Id = user_Id;
		this.ask_Id = ask_Id;
		this.likeCount = likeCount;
		this.answer_content = answer_content;
		this.answer_time = answer_time;
	}
	public Integer getAnswer_Id() {
		return answer_Id;
	}
	public void setAnswer_Id(Integer answer_Id) {
		this.answer_Id = answer_Id;
	}
	public Integer getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(Integer user_Id) {
		this.user_Id = user_Id;
	}
	public Integer getAsk_Id() {
		return ask_Id;
	}
	public void setAsk_Id(Integer ask_Id) {
		this.ask_Id = ask_Id;
	}
	public Integer getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(Integer likeCount) {
		this.likeCount = likeCount;
	}
	public String getAnswer_content() {
		return answer_content;
	}
	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}
	public Date getAnswer_time() {
		return answer_time;
	}
	public void setAnswer_time(Date answer_time) {
		this.answer_time = answer_time;
	}
	@Override
	public String toString() {
		return "Answer [answer_Id=" + answer_Id + ", user_Id=" + user_Id + ", ask_Id=" + ask_Id + ", likeCount="
				+ likeCount + ", answer_content=" + answer_content + ", answer_time=" + answer_time + "]";
	}
	
	
}
