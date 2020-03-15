package com.nuc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.nuc.model.Course;
import com.nuc.model.Student;
import com.nuc.model.Teacher;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 上午11:26:13 
* 课程持久层
*/
public interface ICourseDao {
	/**
	 * 根据课程号获取课程信息
	 * @param Sno
	 * @return
	 */
	public Course queryCourseByCourse(String Cno);
	
	/**
	 * 根据课程号获取过去课程信息
	 * @param Sno
	 * @return
	 */
	public Course queryPCourseByCno(@Param("Cno")String Cno, @Param("Time")String Time);
	
	/**
	 * 根据教师工号获取教师当前学期所带课程
	 * @param Tno
	 * @return
	 */
	public List<Course> queryCourseByTno(String Tno);
	
	/**
	 * 根据教师工号获取教师过去学期所带课程
	 * @param Tno
	 * @param Time
	 * @return
	 */
	public List<Course> queryPCourseByTno(@Param("Tno")String Tno, @Param("Time")String Time);
	
	/**
	 * 获取课程总数
	 * @return
	 */
	public int getCourseTotal(@Param("Cno")String Cno, @Param("CDimName")String CDimName, @Param("TDimName")String TDimName, @Param("Time")String Time);
	
	/**
	 * 获取已选课程总数
	 * @param Sno
	 * @return
	 */
	public int getPCourseTotal(String Sno);
	
	/**
	 * 获取模糊查找课程总数
	 * @param Sno
	 * @return
	 */
	public int getDCourseTotal(@Param("Sno")String Sno, @Param("DimName")String DimName);
	
	/**
	 * 获取指定页的课程
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Course> queryCourseByPage(@Param("Sno")String Sno, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 获取指定页模糊查找的课程
	 * @param Sno
	 * @param DimName
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Course> queryCourseByDimName(@Param("Sno")String Sno, @Param("DimName")String DimName, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 根据课程号获取学生列表
	 * @param Cno
	 * @return
	 */
	public List<Student> queryStudentByCno(String Cno);
	
	/**
	 * 根据过去课程号获取过去学生列表
	 * @param Cno
	 * @param Time
	 * @return
	 */
	public List<Student> queryPStudentByCno(@Param("Cno")String Cno, @Param("Time")String Time);
	
	/**
	 * 根据课程号修改学生当前学期课程分数
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public int updateGradeByCno(@Param("Sno")String Sno, @Param("Cno")String Cno, @Param("Grade")String Grade);
	
	/**
	 * 根据课程号修改学生过去学期课程分数
	 * @param Sno
	 * @param Cno
	 * @return
	 */
	public int updatePGradeByCno(@Param("Sno")String Sno, @Param("Cno")String Cno, @Param("Time")String Time, @Param("Grade")String Grade);
	
	/**
	 * 获取指定页的课程
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Course> queryCourseListByPage(@Param("Cno")String Cno, @Param("CDimName")String CDimName, @Param("TDimName")String TDimName, @Param("Time")String Time, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 获取过去课程总数
	 * @return
	 */
	public int getPACourseTotal(@Param("Cno")String Cno, @Param("CDimName")String CDimName, @Param("TDimName")String TDimName, @Param("Time")String Time);

	/**
	 * 获取过去指定页的课程
	 * @param start
	 * @param count
	 * @return
	 */
	public List<Course> queryPACourseListByPage(@Param("Cno")String Cno, @Param("CDimName")String CDimName, @Param("TDimName")String TDimName, @Param("Time")String Time, @Param("start")int start, @Param("count")int count);
	
	/**
	 * 增加一门课程
	 * @param Course
	 * @return
	 */
	public int insertCourseByCourse(Course course);
	
	/**
	 * 根据课程号删除一门课程
	 * @param Cno
	 * @return
	 */
	public int deleteCourseByCno(String Cno);
	
	/**
	 * 修改课程信息
	 * @param Ccredit
	 * @param Cperiod
	 * @param Cname
	 * @return
	 */
	public int updatecourse(@Param("Cno")String Cno, @Param("Ccredit")String Ccredit, @Param("Cperiod")String Cperiod, @Param("Cname")String Cname);
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next0(String Time);
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next1(String Time);
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next2(String Time);
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next3();
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next4();
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next5();
	
	/**
	 * 进入下学期
	 * @return
	 */
	public int next6();
	
	/**
	 * 获取录入状态
	 * @return
	 */
	public String getentryStatus();
	
	/**
	 * 获取选课状态
	 * @return
	 */
	public String getselectStatus();
	
	/**
	 * 设置录入状态
	 * @param status
	 * @return
	 */
	public int setentryStatus(String status);
	
	/**
	 * 设置选课状态
	 * @param status
	 * @return
	 */
	public int setselectStatus(String status);
	
	/**
	 * 根据学号删除选课信息
	 * @param Sno
	 * @return
	 */
	public int deleteSCBySno(String Sno);
	
	/**
	 * 根据教师工号删除选课信息
	 * @param Tno
	 * @return
	 */
	public int deleteSCByTno(String Tno);
	
	/**
	 * 根据学号删除过去选课信息
	 * @param Sno
	 * @return
	 */
	public int deletePSCBySno(String Sno);
	
	/**
	 * 根据教师工号删除过去选课信息
	 * @param Tno
	 * @return
	 */
	public int deletePSCByTno(String Tno);
	
	/**
	 * 根据学号删除课程信息
	 * @param Sno
	 * @return
	 */
	public int deleteCourseByTno(String Tno);
	
	/**
	 * 根据学号删除过去课程信息
	 * @param Sno
	 * @return
	 */
	public int deletePCourseByTno(String Tno);
}
