package com.nuc.service;

import com.nuc.model.Term;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午9:49:36 
* 日期Service接口
*/
public interface ITermService {
	/**
	 * 获取当前日期
	 * @return
	 */
	public Term getTerm();
	
	/**
	 * 更改当前日期
	 * @return
	 */
	public int setTerm(String newTime);
}
