package com.nuc.model;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午8:24:39 
* 日期类
*/

import java.util.ArrayList;
import java.util.List;

public class Term {
	private String Nowterm;
	private List<String> Pastterm;
	public String getNowterm() {
		return Nowterm;
	}
	public void setNowterm(String nowterm) {
		Nowterm = nowterm;
	}
	public List<String> getPastterm() {
		return Pastterm;
	}
	public void setPastterm(List<String> pastterm) {
		Pastterm = pastterm;
	}
	public String getNextterm() {
		String year = Nowterm.split("-")[0];
		Integer integer = Integer.valueOf(year);
		if(Nowterm.contains("一")) {
			String string = Integer.toString(integer) + "-" + Integer.toString(integer+1) + "学年第二学期";
			return string;
		}
		else {
			String string = Integer.toString(integer+1) + "-" + Integer.toString(integer+2) + "学年第一学期";
			return string;
		}
	}
	public void createPastterm() {
		String year = Nowterm.split("-")[0];
		Integer integer = Integer.valueOf(year);
		Pastterm = new ArrayList<String>();
		Pastterm.add(Nowterm);
		String string;
		if(Nowterm.contains("一")) {
			for(int i = 1; i < 5; i++)
			{
				string = Integer.toString(integer - i) + "-" + Integer.toString(integer - i +1) + "学年第二学期";
				Pastterm.add(string);
				string = Integer.toString(integer - i) + "-" + Integer.toString(integer - i +1) + "学年第一学期";
				Pastterm.add(string);
			}
			string = Integer.toString(integer - 5) + "-" + Integer.toString(integer - 4) + "学年第二学期";
			Pastterm.add(string);
		}
		else {
			string = Integer.toString(integer) + "-" + Integer.toString(integer+1) + "学年第一学期";
			Pastterm.add(string);
			for(int i = 1; i < 5; i++)
			{
				string = Integer.toString(integer - i) + "-" + Integer.toString(integer - i +1) + "学年第二学期";
				Pastterm.add(string);
				string = Integer.toString(integer - i) + "-" + Integer.toString(integer - i +1) + "学年第一学期";
				Pastterm.add(string);
			}
		}
	}
	public void print() {
		for (String string : Pastterm) {
			System.out.println(string);
		}
	}
}
