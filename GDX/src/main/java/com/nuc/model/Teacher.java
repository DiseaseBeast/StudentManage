package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月29日 下午2:11:11 
* 教师类
*/
public class Teacher {
	private String Tno;					//工号
	private String Tname;				//姓名
	private String Tsex;				//性别
	private String Tdept;				//系别
	private String Ttitle;				//职称
	private String Ttel;				//手机号
	private String Taddress;			//家庭住址
	private String Temail;				//邮箱号
	private String Tpassword;			//密码
	public String getTno() {
		return Tno;
	}
	public void setTno(String tno) {
		Tno = tno;
	}
	public String getTname() {
		return Tname;
	}
	public void setTname(String tname) {
		Tname = tname;
	}
	public String getTsex() {
		return Tsex;
	}
	public void setTsex(String tsex) {
		Tsex = tsex;
	}
	public String getTdept() {
		return Tdept;
	}
	public void setTdept(String tdept) {
		Tdept = tdept;
	}
	public String getTtitle() {
		return Ttitle;
	}
	public void setTtitle(String ttitle) {
		Ttitle = ttitle;
	}
	public String getTtel() {
		return Ttel;
	}
	public void setTtel(String ttel) {
		Ttel = ttel;
	}
	public String getTaddress() {
		return Taddress;
	}
	public void setTaddress(String taddress) {
		Taddress = taddress;
	}
	public String getTemail() {
		return Temail;
	}
	public void setTemail(String temail) {
		Temail = temail;
	}
	public String getTpassword() {
		return Tpassword;
	}
	public void setTpassword(String tpassword) {
		Tpassword = tpassword;
	}
	@Override
	public String toString() {
		return "Teacher [Tno=" + Tno + ", Tname=" + Tname + ", Tsex=" + Tsex + ", Tdept=" + Tdept + ", Ttitle=" + Ttitle
				+ ", Ttel=" + Ttel + ", Taddress=" + Taddress + ", Temail=" + Temail + ", Tpassword=" + Tpassword + "]";
	}
}
