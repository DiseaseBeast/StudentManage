package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 上午11:09:51 
* 教务处类
*/
public class Department {
	private String Ano;					//账号
	private String Aname;				//姓名
	private String Atitle;				//职称
	private String Apassword;			//密码
	public String getAno() {
		return Ano;
	}
	public void setAno(String ano) {
		Ano = ano;
	}
	public String getApassword() {
		return Apassword;
	}
	public void setApassword(String apassword) {
		Apassword = apassword;
	}
	public String getAname() {
		return Aname;
	}
	public void setAname(String aname) {
		Aname = aname;
	}
	public String getAtitle() {
		return Atitle;
	}
	public void setAtitle(String atitle) {
		Atitle = atitle;
	}
	@Override
	public String toString() {
		return "Department [Ano=" + Ano + ", Aname=" + Aname + ", Atitle=" + Atitle + ", Apassword=" + Apassword + "]";
	}
	
}
