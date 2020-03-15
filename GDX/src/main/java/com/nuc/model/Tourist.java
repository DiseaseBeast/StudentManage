package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 下午9:23:52 
* 游客类
*/
public class Tourist {
	private String Number;				//账号
	private String Password;			//密码
	public String getNumber() {
		return Number;
	}
	public void setNumber(String Number) {
		this.Number = Number;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) {
		this.Password = Password;
	}
	@Override
	public String toString() {
		return "Tourist[Number=" + Number + ", Password=" + Password + "]";
	}
	
}
