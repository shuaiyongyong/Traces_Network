package com.yc.tn.entity;

import java.util.Date;
import java.util.List;

public class UserEntity {

	private int User_Id;//用户编号
	private String User_UserName;//用户帐号
	private String User_UserPassword;//会员密码
	private String User_Sex;//性别
	private Date User_Date;//用户注册时间
	private String User_Pic;//头像
	private String User_Email;//邮箱
	private String User_Adress;//地址
	private String User_Phone;//电话
	private List<AskInfo> askInfo;
	private List<Answer> answer;
	private List<StrategyInfo> strategyInfo;
	
	public UserEntity() {
		super();
	}

	public UserEntity(int user_Id, String user_UserName,
			String user_UserPassword, String user_Sex, Date user_Date,
			String user_Pic, String user_Email, String user_Adress,
			String user_Phone, List<AskInfo> askInfo, List<Answer> answer,
			List<StrategyInfo> strategyInfo) {
		super();
		User_Id = user_Id;
		User_UserName = user_UserName;
		User_UserPassword = user_UserPassword;
		User_Sex = user_Sex;
		User_Date = user_Date;
		User_Pic = user_Pic;
		User_Email = user_Email;
		User_Adress = user_Adress;
		User_Phone = user_Phone;
		this.askInfo = askInfo;
		this.answer = answer;
		this.strategyInfo = strategyInfo;
	}




	public int getUser_Id() {
		return User_Id;
	}

	public void setUser_Id(int user_Id) {
		User_Id = user_Id;
	}

	public String getUser_UserName() {
		return User_UserName;
	}

	public void setUser_UserName(String user_UserName) {
		User_UserName = user_UserName;
	}

	public String getUser_UserPassword() {
		return User_UserPassword;
	}

	public void setUser_UserPassword(String user_UserPassword) {
		User_UserPassword = user_UserPassword;
	}

	public String getUser_Sex() {
		return User_Sex;
	}

	public void setUser_Sex(String user_Sex) {
		User_Sex = user_Sex;
	}

	public Date getUser_Date() {
		return User_Date;
	}

	public void setUser_Date(Date user_Date) {
		User_Date = user_Date;
	}

	public String getUser_Pic() {
		return User_Pic;
	}

	public void setUser_Pic(String user_Pic) {
		User_Pic = user_Pic;
	}

	public String getUser_Email() {
		return User_Email;
	}

	public void setUser_Email(String user_Email) {
		User_Email = user_Email;
	}

	public String getUser_Adress() {
		return User_Adress;
	}

	public void setUser_Adress(String user_Adress) {
		User_Adress = user_Adress;
	}

	public String getUser_Phone() {
		return User_Phone;
	}

	public void setUser_Phone(String user_Phone) {
		User_Phone = user_Phone;
	}

	public List<AskInfo> getAskInfo() {
		return askInfo;
	}


	public void setAskInfo(List<AskInfo> askInfo) {
		this.askInfo = askInfo;
	}


	public List<Answer> getAnswer() {
		return answer;
	}


	public void setAnswer(List<Answer> answer) {
		this.answer = answer;
	}


	public List<StrategyInfo> getStrategyInfo() {
		return strategyInfo;
	}

	public void setStrategyInfo(List<StrategyInfo> strategyInfo) {
		this.strategyInfo = strategyInfo;
	}

	@Override
	public String toString() {
		return "UserEntity [User_Id=" + User_Id + ", User_UserName="
				+ User_UserName + ", User_UserPassword=" + User_UserPassword
				+ ", User_Sex=" + User_Sex + ", User_Date=" + User_Date
				+ ", User_Pic=" + User_Pic + ", User_Email=" + User_Email
				+ ", User_Adress=" + User_Adress + ", User_Phone=" + User_Phone
				+ ", askInfo=" + askInfo + ", answer=" + answer
				+ ", strategyInfo=" + strategyInfo + "]";
	}
	
}
