package com.nuc.dao;

import com.nuc.model.Tourist;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 下午9:27:04 
* 游客持久层
*/
public interface ITouristDao {
	/**
	 * 根据学号获取密码
	 * @param Sno
	 * @return
	 */
	public Tourist queryTouristBySno(String Sno);
	
	/**
	 * 根据教师工号获取密码
	 * @param Tno
	 * @return
	 */
	public Tourist queryTouristByTno(String Tno);
	
	/**
	 * 根据教务处教师工号获取密码
	 * @param Ono
	 * @return
	 */
	public Tourist queryTouristByAno(String Ano);
}
