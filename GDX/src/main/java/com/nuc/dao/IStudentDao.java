package com.nuc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nuc.model.Course;
import com.nuc.model.SCourse;
import com.nuc.model.Student;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 上午11:24:19 
* 学生持久层
*/
public interface IStudentDao {
	/**
	 * 根据学号获取姓名
	 * @param Sno
	 * @return
	 */
	public String querySnameBySno(String Sno);
	
	/**
	 * 根据学号获取学生信息
	 * @param Sno
	 * @return
	 */
	public Student queryStudentBySno(String Sno);
	
	/**
	 * 根据学号修改学生密码
	 * @param Sno
	 * @param password
	 * @return
	 */
	public int updatePasswordBySno(@Param("Sno")String Sno, @Param("password")String password);
	
	/**
	 * 根据学号获取学生密码
	 * @param Sno
	 * @return
	 */
	public String querySpasswordBySno(String Sno);
	
	/**
	 * 根据学号获取学生密码
	 * @param major
	 * @return
	 */
	public String querySdepBySmajor(String major);
	
	/**
	 * 根据学号获取学生当前学期成绩
	 * @param Sno
	 * @return
	 */
	public List<SCourse> queryResultBySno(String Sno);
	
	/**
	 * 根据学号获取学生过去学期成绩
	 * @param Sno
	 * @param Time
	 * @return
	 */
	public List<SCourse> queryPResultBySno(@Param("Sno")String Sno, @Param("Time")String Time);
	
	/**
	 * 根据学号获取学生当前已选课程
	 * @param Sno
	 * @return
	 */
	public List<SCourse> queryChooseBySno(String Sno);
	
	/**
	 * 根据课程号取消学生当前已选课程
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public int cancelChooseByCno(@Param("Sno")String Sno, @Param("Cno")String Cno);
	
	/**
	 * 根据课程号添加学生当前已选课程
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public int insertSCourseByCno(@Param("Sno")String Sno, @Param("Cno")String Cno);
	
	/**
	 * 根据课程号获取学生当前学期该课程成绩
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public String queryGradeByCno(@Param("Sno")String Sno, @Param("Cno")String Cno);
	
	/**
	 * 根据课程号获取学生过去学期该课程成绩
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public String queryPGradeByCno(@Param("Sno")String Sno, @Param("Cno")String Cno, @Param("Time")String Time);
	
	/**
	 * 获取学生总数
	 * @return
	 */
	public int getStudentTotal(@Param("Sno")String Sno, @Param("Sclass")String Sclass, @Param("SDimName")String SDimName, @Param("Ssex")String Ssex, @Param("Smajor")String Smajor, @Param("Sdept")String Sdept);
	
	/**
	 * 获取指定页的学生
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Student> queryStudentListByPage(@Param("Sno")String Sno, @Param("Sclass")String Sclass, @Param("SDimName")String SDimName, @Param("Ssex")String Ssex, @Param("Smajor")String Smajor, @Param("Sdept")String Sdept, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 增加一名学生
	 * @param student
	 * @return
	 */
	public int insertStudentByStudent(Student student);
	
	/**
	 * 根据学号删除一名学生
	 * @param Sno
	 * @return
	 */
	public int deleteStudentBySno(String Sno);
	
	/**
	 * 根据学号重置学生密码
	 * @param Sno
	 * @return
	 */
	public int resetSpassBySno(String Sno);
	
	/**
	 * 修改学生信息
	 * @param Sno
	 * @param Sdpet
	 * @param Smajor
	 * @param Sclass
	 * @param Stel
	 * @param Semail
	 * @return
	 */
	public int updatestudent(@Param("Sno")String Sno, @Param("Smajor")String Smajor, @Param("Sclass")String Sclass, @Param("Stel")String Stel, @Param("Semail")String Semail);
}
