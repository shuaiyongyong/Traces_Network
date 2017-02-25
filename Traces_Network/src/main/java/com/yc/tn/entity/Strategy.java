package com.yc.tn.entity;

public class Strategy {
	
	private int strategy_Id;//分类编号
	private String strategy_Name;//名称
	private String strategy_SubTxt;//简要说明
	
	public Strategy(int strategy_Id, String strategy_Name, String strategy_SubTxt) {
		super();
		this.strategy_Id = strategy_Id;
		this.strategy_Name = strategy_Name;
		this.strategy_SubTxt = strategy_SubTxt;
	}

	public Strategy() {
		super();
	}

	public int getStrategy_Id() {
		return strategy_Id;
	}

	public void setStrategy_Id(int strategy_Id) {
		this.strategy_Id = strategy_Id;
	}

	public String getStrategy_Name() {
		return strategy_Name;
	}

	public void setStrategy_Name(String strategy_Name) {
		this.strategy_Name = strategy_Name;
	}

	public String getStrategy_SubTxt() {
		return strategy_SubTxt;
	}

	public void setStrategy_SubTxt(String strategy_SubTxt) {
		this.strategy_SubTxt = strategy_SubTxt;
	}

	@Override
	public String toString() {
		return "Strategy [strategy_Id=" + strategy_Id + ", strategy_Name=" + strategy_Name + ", strategy_SubTxt="
				+ strategy_SubTxt + "]";
	}
	
}
