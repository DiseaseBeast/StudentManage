package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月29日 下午2:10:41 
* 学生类
*/
public class Student {
	private String Sno;				//学号
	private String Sname;			//姓名
	private String Ssex;			//性别
	private String Sclass;			//班级
	private String Spassword;		//密码
	private String Smajor;			//系别
	private String Stel;			//手机号
	private String Saddress;		//家庭住址
	private String Semail;			//邮箱号
	private String Sdept;			//学院
	public String getSno() {
		return Sno;
	}
	public void setSno(String sno) {
		Sno = sno;
	}
	public String getSname() {
		return Sname;
	}
	public void setSname(String sname) {
		Sname = sname;
	}
	public String getSsex() {
		return Ssex;
	}
	public void setSsex(String ssex) {
		Ssex = ssex;
	}
	public String getSclass() {
		return Sclass;
	}
	public void setSclass(String sclass) {
		Sclass = sclass;
	}
	public String getSpassword() {
		return Spassword;
	}
	public void setSpassword(String spassword) {
		Spassword = spassword;
	}
	public String getSmajor() {
		return Smajor;
	}
	public void setSmajor(String smajor) {
		Smajor = smajor;
	}
	public String getStel() {
		return Stel;
	}
	public void setStel(String stel) {
		Stel = stel;
	}
	public String getSaddress() {
		return Saddress;
	}
	public void setSaddress(String saddress) {
		Saddress = saddress;
	}
	public String getSemail() {
		return Semail;
	}
	public void setSemail(String semail) {
		Semail = semail;
	}
	public String getSdept() {
		return Sdept;
	}
	public void setSdept(String sdept) {
		Sdept = sdept;
	}
	@Override
	public String toString() {
		return "Student [Sno=" + Sno + ", Sname=" + Sname + ", Ssex=" + Ssex + ", Sclass=" + Sclass + ", Spassword="
				+ Spassword + ", Smajor=" + Smajor + ", Stel=" + Stel + ", Saddress=" + Saddress + ", Semail=" + Semail
				+ ", Sdept=" + Sdept + "]";
	}
	
}
