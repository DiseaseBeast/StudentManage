package com.nuc.service;

import org.apache.ibatis.annotations.Param;

import com.nuc.model.Department;

/** 
* @author 作者:ly 
* @version 创建时间：2020年1月3日 下午9:36:33 
* 
*/
public interface IDepartmentService {
	/**
	 * 根据账号获取账号信息
	 * @param Ano
	 * @return
	 */
	public Department queryDepartmentByAno(String Ano);
	
	/**
	 * 根据账号获取账号密码
	 * @param Ano
	 * @return
	 */
	public String queryApasswordByAno(String Ano);
	
	/**
	 * 根据账号修改密码
	 * @param Ano
	 * @param password
	 * @return
	 */
	public int updatePasswordByAno(@Param("Ano")String Ano, @Param("password")String password);
}
