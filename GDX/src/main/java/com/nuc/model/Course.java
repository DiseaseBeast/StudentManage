package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月29日 下午2:11:45 
* 课程类
*/
public class Course {
	@Override
	public String toString() {
		return "Course [Cno=" + Cno + ", Cname=" + Cname + ", Ccredit=" + Ccredit + ", Cperiod=" + Cperiod + ", Tno="
				+ Tno + "]";
	}
	private String Cno;					//课程号
	private String Cname;				//课程名
	private String Ccredit;				//学分
	private String Cperiod;				//学时
	private String Tno;					//教师工号
	public String getCno() {
		return Cno;
	}
	public void setCno(String cno) {
		Cno = cno;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		Cname = cname;
	}
	public String getCcredit() {
		return Ccredit;
	}
	public void setCcredit(String ccredit) {
		Ccredit = ccredit;
	}
	public String getCperiod() {
		return Cperiod;
	}
	public void setCperiod(String cperiod) {
		Cperiod = cperiod;
	}
	public String getTno() {
		return Tno;
	}
	public void setTno(String tno) {
		Tno = tno;
	}
}
