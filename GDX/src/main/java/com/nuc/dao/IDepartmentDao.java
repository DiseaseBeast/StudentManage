package com.nuc.dao;

import org.apache.ibatis.annotations.Param;

import com.nuc.model.Department;
import com.nuc.model.Student;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 上午11:26:44 
* 教务处持久层
*/
public interface IDepartmentDao {
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
