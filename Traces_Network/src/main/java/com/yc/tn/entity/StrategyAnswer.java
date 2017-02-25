package com.yc.tn.entity;

import java.util.Date;

public class StrategyAnswer {
	
	private int strategyAnswer_Id;//评论编号
	private int strategyInfo_Id;//攻略编号
	private String strategyAnswer_Content;//评论内容
	private int user_Id;//评论者编号
	private Date strategyAnswer_AddTime;//评论时间
	int status;//审核状态
	
	public StrategyAnswer(int strategyAnswer_Id, int strategyInfo_Id, String strategyAnswer_Content, int user_Id,
			Date strategyAnswer_AddTime, int status) {
		super();
		this.strategyAnswer_Id = strategyAnswer_Id;
		this.strategyInfo_Id = strategyInfo_Id;
		this.strategyAnswer_Content = strategyAnswer_Content;
		this.user_Id = user_Id;
		this.strategyAnswer_AddTime = strategyAnswer_AddTime;
		this.status = status;
	}

	public StrategyAnswer() {
		super();
	}

	public int getStrategyAnswer_Id() {
		return strategyAnswer_Id;
	}

	public void setStrategyAnswer_Id(int strategyAnswer_Id) {
		this.strategyAnswer_Id = strategyAnswer_Id;
	}

	public int getStrategyInfo_Id() {
		return strategyInfo_Id;
	}

	public void setStrategyInfo_Id(int strategyInfo_Id) {
		this.strategyInfo_Id = strategyInfo_Id;
	}

	public String getStrategyAnswer_Content() {
		return strategyAnswer_Content;
	}

	public void setStrategyAnswer_Content(String strategyAnswer_Content) {
		this.strategyAnswer_Content = strategyAnswer_Content;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public Date getStrategyAnswer_AddTime() {
		return strategyAnswer_AddTime;
	}

	public void setStrategyAnswer_AddTime(Date strategyAnswer_AddTime) {
		this.strategyAnswer_AddTime = strategyAnswer_AddTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "StrategyAnswer [strategyAnswer_Id=" + strategyAnswer_Id + ", strategyInfo_Id=" + strategyInfo_Id
				+ ", strategyAnswer_Content=" + strategyAnswer_Content + ", user_Id=" + user_Id
				+ ", strategyAnswer_AddTime=" + strategyAnswer_AddTime + ", status=" + status + "]";
	}
	
	
	
}
