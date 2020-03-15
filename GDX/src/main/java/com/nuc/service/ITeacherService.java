package com.nuc.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nuc.model.Course;
import com.nuc.model.Teacher;

/** 
* @author 作者:ly 
* @version 创建时间：2020年1月1日 上午11:19:22 
* 教师Service接口
*/
public interface ITeacherService {
	/**
	 * 根据教师学号查询教师信息
	 * @return
	 */
	public Teacher queryTeacherByTno(String Tno);
	
	/**
	 * 根据教师工号获取教师密码
	 * @param Tno
	 * @return
	 */
	public String queryTpasswordByTno(String Tno);
	
	/**
	 * 根据教师工号修改教师密码
	 * @param Tno
	 * @param password
	 * @return
	 */
	public int updatePasswordByTno(@Param("Tno")String Tno, @Param("password")String password);
	
	/**
	 * 获取教师总数
	 * @return
	 */
	public int getTeacherTotal(@Param("Tno")String Tno, @Param("TDimName")String TDimName, @Param("Tsex")String Tsex, @Param("Ttitle")String Ttitle, @Param("Tdept")String Tdept);
	
	/**
	 * 获取指定页的教师
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Teacher> queryTeacherListByPage(@Param("Tno")String Tno, @Param("TDimName")String TDimName, @Param("Tsex")String Tsex, @Param("Ttitle")String Ttitle, @Param("Tdept")String Tdept, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 增加一名教师
	 * @param teacher
	 * @return
	 */
	public int insertTeacherByTeacher(Teacher teacher);
	
	/**
	 * 根据教师工号删除一名教师
	 * @param Tno
	 * @return
	 */
	public int deleteTeacherByTno(String Tno);
	
	/**
	 * 根据教师工号重置教师密码
	 * @param Tno
	 * @return
	 */
	public int resetTpassByTno(String Tno);
	
	/**
	 * 修改教师信息
	 * @param Tno
	 * @param Tdept
	 * @param Ttitle
	 * @param Ttel
	 * @param Temail
	 * @return
	 */
	public int updateteacher(@Param("Tno")String Tno, @Param("Tdept")String Tdept, @Param("Ttitle")String Ttitle, @Param("Ttel")String Ttel, @Param("Temail")String Temail);
}
