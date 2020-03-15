package com.nuc.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.nuc.dao.ICourseDao;
import com.nuc.model.Course;
import com.nuc.model.Student;

/** 
* @author 作者:ly 
* @version 创建时间：2020年1月1日 上午10:02:11 
* 
*/
@Service
public class CourseServiceImpl implements ICourseService{
	@Resource
	private ICourseDao courseDao; 
	
	@Override
	public Course queryCourseByCourse(String Cno) {
		// TODO Auto-generated method stub
		return courseDao.queryCourseByCourse(Cno);
	}

	@Override
	public Course queryPCourseByCno(String Cno, String Time) {
		// TODO Auto-generated method stub
		return courseDao.queryPCourseByCno(Cno, Time);
	}

	@Override
	public int getCourseTotal(@Param("Cno")String Cno, @Param("CDimName")String CDimName, @Param("TDimName")String TDimName, @Param("Time")String Time) {
		// TODO Auto-generated method stub
		return courseDao.getCourseTotal(Cno, CDimName, TDimName, Time);
	}

	@Override
	public List<Course> queryCourseByPage(String Sno, int start, int count) {
		// TODO Auto-generated method stub
		return courseDao.queryCourseByPage(Sno, start, count);
	}

	@Override
	public int getPCourseTotal(String Sno) {
		// TODO Auto-generated method stub
		return courseDao.getPCourseTotal(Sno);
	}

	@Override
	public List<Course> queryCourseByDimName(String Sno, String DimName, int start, int count) {
		// TODO Auto-generated method stub
		return courseDao.queryCourseByDimName(Sno, DimName, start, count);
	}

	@Override
	public int getDCourseTotal(String Sno, String DimName) {
		// TODO Auto-generated method stub
		return courseDao.getDCourseTotal(Sno, DimName);
	}

	@Override
	public List<Course> queryCourseByTno(String Tno) {
		// TODO Auto-generated method stub
		return courseDao.queryCourseByTno(Tno);
	}

	@Override
	public List<Course> queryPCourseByTno(String Tno, String Time) {
		// TODO Auto-generated method stub
		return courseDao.queryPCourseByTno(Tno, Time);
	}

	@Override
	public List<Student> queryStudentByCno(String Cno) {
		// TODO Auto-generated method stub
		return courseDao.queryStudentByCno(Cno);
	}

	@Override
	public List<Student> queryPStudentByCno(String Cno, String Time) {
		// TODO Auto-generated method stub
		return courseDao.queryPStudentByCno(Cno, Time);
	}

	@Override
	public int updateGradeByCno(String Sno, String Cno, String Grade) {
		// TODO Auto-generated method stub
		return courseDao.updateGradeByCno(Sno, Cno, Grade);
	}

	@Override
	public int updatePGradeByCno(String Sno, String Cno, String Time, String Grade) {
		// TODO Auto-generated method stub
		return courseDao.updatePGradeByCno(Sno, Cno, Time, Grade);
	}

	@Override
	public List<Course> queryCourseListByPage(String Cno, String CDimName, String TDimName, String Time, int start,
			int count) {
		// TODO Auto-generated method stub
		return courseDao.queryCourseListByPage(Cno, CDimName, TDimName, Time, start, count);
	}

	@Override
	public int getPACourseTotal(String Cno, String CDimName, String TDimName, String Time) {
		// TODO Auto-generated method stub
		return courseDao.getPACourseTotal(Cno, CDimName, TDimName, Time);
	}

	@Override
	public List<Course> queryPACourseListByPage(String Cno, String CDimName, String TDimName, String Time, int start,
			int count) {
		// TODO Auto-generated method stub
		return courseDao.queryPACourseListByPage(Cno, CDimName, TDimName, Time, start, count);
	}

	@Override
	public int insertCourseByCourse(Course course) {
		// TODO Auto-generated method stub
		return courseDao.insertCourseByCourse(course);
	}

	@Override
	public int deleteCourseByCno(String Cno) {
		// TODO Auto-generated method stub
		return courseDao.deleteCourseByCno(Cno);
	}

	@Override
	public int updatecourse(String Cno, String Ccredit, String Cperiod, String Cname) {
		// TODO Auto-generated method stub
		return courseDao.updatecourse(Cno, Ccredit, Cperiod, Cname);
	}

	@Override
	public int next0(String Time) {
		// TODO Auto-generated method stub
		return courseDao.next0(Time);
	}

	@Override
	public int next1(String Time) {
		// TODO Auto-generated method stub
		return courseDao.next1(Time);
	}

	@Override
	public int next2(String Time) {
		// TODO Auto-generated method stub
		return courseDao.next2(Time);
	}

	@Override
	public int next3() {
		// TODO Auto-generated method stub
		return courseDao.next3();
	}

	@Override
	public int next4() {
		// TODO Auto-generated method stub
		return courseDao.next4();
	}

	@Override
	public int next5() {
		// TODO Auto-generated method stub
		return courseDao.next5();
	}

	@Override
	public int next6() {
		// TODO Auto-generated method stub
		return courseDao.next6();
	}

	@Override
	public String getentryStatus() {
		// TODO Auto-generated method stub
		return courseDao.getentryStatus();
	}

	@Override
	public String getselectStatus() {
		// TODO Auto-generated method stub
		return courseDao.getselectStatus();
	}

	@Override
	public int setentryStatus(String status) {
		// TODO Auto-generated method stub
		return courseDao.setentryStatus(status);
	}

	@Override
	public int setselectStatus(String status) {
		// TODO Auto-generated method stub
		return courseDao.setselectStatus(status);
	}

	@Override
	public int deleteCourseByTno(String Tno) {
		// TODO Auto-generated method stub
		return courseDao.deleteCourseByTno(Tno);
	}

	@Override
	public int deleteSCBySno(String Sno) {
		// TODO Auto-generated method stub
		return courseDao.deleteSCBySno(Sno);
	}

	@Override
	public int deletePSCBySno(String Sno) {
		// TODO Auto-generated method stub
		return courseDao.deletePSCBySno(Sno);
	}

	@Override
	public int deletePCourseByTno(String Tno) {
		// TODO Auto-generated method stub
		return courseDao.deletePCourseByTno(Tno);
	}

	@Override
	public int deleteSCByTno(String Tno) {
		// TODO Auto-generated method stub
		return courseDao.deleteSCByTno(Tno);
	}

	@Override
	public int deletePSCByTno(String Tno) {
		// TODO Auto-generated method stub
		return courseDao.deletePSCByTno(Tno);
	}
}
