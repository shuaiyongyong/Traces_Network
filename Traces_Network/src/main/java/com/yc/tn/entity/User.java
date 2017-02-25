package com.yc.tn.entity;


import java.util.Date;
import java.util.List;

public class User {
	private Integer user_Id;
	private String userName;
	private String userPassword;
	private String user_trueName;
	private String user_sex;
	private Date user_birthday;
	private String user_pic;
	private String user_email;
	private String user_adress;
	private String user_phone;
	private Integer user_config;
	private List<AskInfo> askInfo;
	private List<Answer> answer;
	
	public User() {
		super();
	}
	
	public User(Integer user_Id, String userName, String userPassword, String user_trueName, String user_sex,
			Date user_birthday, String user_pic, String user_email, String user_adress, String user_phone,
			Integer user_config, List<AskInfo> askInfo, List<Answer> answer) {
		super();
		this.user_Id = user_Id;
		this.userName = userName;
		this.userPassword = userPassword;
		this.user_trueName = user_trueName;
		this.user_sex = user_sex;
		this.user_birthday = user_birthday;
		this.user_pic = user_pic;
		this.user_email = user_email;
		this.user_adress = user_adress;
		this.user_phone = user_phone;
		this.user_config = user_config;
		this.askInfo = askInfo;
		this.answer = answer;
	}

	public Integer getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(Integer user_Id) {
		this.user_Id = user_Id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUser_trueName() {
		return user_trueName;
	}
	public void setUser_trueName(String user_trueName) {
		this.user_trueName = user_trueName;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public Date getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(Date user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_pic() {
		return user_pic;
	}
	public void setUser_pic(String user_pic) {
		this.user_pic = user_pic;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_adress() {
		return user_adress;
	}
	public void setUser_adress(String user_adress) {
		this.user_adress = user_adress;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public Integer getUser_config() {
		return user_config;
	}
	public void setUser_config(Integer user_config) {
		this.user_config = user_config;
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

	@Override
	public String toString() {
		return "User [user_Id=" + user_Id + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", user_trueName=" + user_trueName + ", user_sex=" + user_sex + ", user_birthday=" + user_birthday
				+ ", user_pic=" + user_pic + ", user_email=" + user_email + ", user_adress=" + user_adress
				+ ", user_phone=" + user_phone + ", user_config=" + user_config + ", askInfo=" + askInfo + ", answer="
				+ answer + "]";
	}
	
	
	
}
