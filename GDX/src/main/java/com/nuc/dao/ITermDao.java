package com.nuc.dao;
/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午9:06:26 
* 日期持久层
*/

import com.nuc.model.Term;

public interface ITermDao {
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
