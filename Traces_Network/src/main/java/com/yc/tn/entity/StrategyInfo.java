package com.yc.tn.entity;

import java.util.Date;

public class StrategyInfo {
	
	private int strategyInfo_Id;//攻略编号
	private int strategy_Id;//分类编号
	private String strategyInfo_Title;//标题
	private String strategyInfo_Content;//攻略内容
	private String strategyInfo_Picture;//图片
	private int user_Id;//发布者编号
	private int status;//审核状态
	private int strategyInfo_Click;//点击率
	private Date strategyInfo_AddTime;//发布时间
	
	public StrategyInfo(int strategyInfo_Id, int strategy_Id, String strategyInfo_Title, String strategyInfo_Content,
			String strategyInfo_Picture, int user_Id, int status, int strategyInfo_Click, Date strategyInfo_AddTime) {
		super();
		this.strategyInfo_Id = strategyInfo_Id;
		this.strategy_Id = strategy_Id;
		this.strategyInfo_Title = strategyInfo_Title;
		this.strategyInfo_Content = strategyInfo_Content;
		this.strategyInfo_Picture = strategyInfo_Picture;
		this.user_Id = user_Id;
		this.status = status;
		this.strategyInfo_Click = strategyInfo_Click;
		this.strategyInfo_AddTime = strategyInfo_AddTime;
	}

	public StrategyInfo() {
		super();
	}

	public int getStrategyInfo_Id() {
		return strategyInfo_Id;
	}

	public void setStrategyInfo_Id(int strategyInfo_Id) {
		this.strategyInfo_Id = strategyInfo_Id;
	}

	public int getStrategy_Id() {
		return strategy_Id;
	}

	public void setStrategy_Id(int strategy_Id) {
		this.strategy_Id = strategy_Id;
	}

	public String getStrategyInfo_Title() {
		return strategyInfo_Title;
	}

	public void setStrategyInfo_Title(String strategyInfo_Title) {
		this.strategyInfo_Title = strategyInfo_Title;
	}

	public String getStrategyInfo_Content() {
		return strategyInfo_Content;
	}

	public void setStrategyInfo_Content(String strategyInfo_Content) {
		this.strategyInfo_Content = strategyInfo_Content;
	}

	public String getStrategyInfo_Picture() {
		return strategyInfo_Picture;
	}

	public void setStrategyInfo_Picture(String strategyInfo_Picture) {
		this.strategyInfo_Picture = strategyInfo_Picture;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getStrategyInfo_Click() {
		return strategyInfo_Click;
	}

	public void setStrategyInfo_Click(int strategyInfo_Click) {
		this.strategyInfo_Click = strategyInfo_Click;
	}

	public Date getStrategyInfo_AddTime() {
		return strategyInfo_AddTime;
	}

	public void setStrategyInfo_AddTime(Date strategyInfo_AddTime) {
		this.strategyInfo_AddTime = strategyInfo_AddTime;
	}

	@Override
	public String toString() {
		return "StrategyInfo [strategyInfo_Id=" + strategyInfo_Id + ", strategy_Id=" + strategy_Id
				+ ", strategyInfo_Title=" + strategyInfo_Title + ", strategyInfo_Content=" + strategyInfo_Content
				+ ", strategyInfo_Picture=" + strategyInfo_Picture + ", user_Id=" + user_Id + ", status=" + status
				+ ", strategyInfo_Click=" + strategyInfo_Click + ", strategyInfo_AddTime=" + strategyInfo_AddTime + "]";
	}
	
}
