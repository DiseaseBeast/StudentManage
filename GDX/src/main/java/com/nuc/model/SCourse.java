package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月29日 下午2:12:30 
* 选课类
*/
public class SCourse {
	private String Cno;				//课程号
	private String Sno;				//学号
	private String Grade;			//成绩
	public String getCno() {
		return Cno;
	}
	public void setCno(String cno) {
		Cno = cno;
	}
	public String getSno() {
		return Sno;
	}
	public void setSno(String sno) {
		Sno = sno;
	}
	public String getGrade() {
		return Grade;
	}
	public void setGrade(String grade) {
		Grade = grade;
	}
	@Override
	public String toString() {
		return "SCourse [Cno=" + Cno + ", Sno=" + Sno + ", Grade=" + Grade + "]";
	}
}
