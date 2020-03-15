package com.nuc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nuc.dao.ITeacherDao;
import com.nuc.model.Course;
import com.nuc.model.Teacher;

/** 
* @author 作者:ly 
* @version 创建时间：2020年1月1日 上午11:19:46 
* 教师Service层
*/
@Service
public class TeacherServiceImpl implements ITeacherService{
	@Resource
	private ITeacherDao teacherDao;
	
	@Override
	public Teacher queryTeacherByTno(String Tno) {
		// TODO Auto-generated method stub
		return teacherDao.queryTeacherByTno(Tno);
	}

	@Override
	public String queryTpasswordByTno(String Tno) {
		// TODO Auto-generated method stub
		return teacherDao.queryTpasswordByTno(Tno);
	}

	@Override
	public int updatePasswordByTno(String Tno, String password) {
		// TODO Auto-generated method stub
		return teacherDao.updatePasswordByTno(Tno, password);
	}

	@Override
	public int getTeacherTotal(String Tno, String TDimName, String Tsex, String Ttitle, String Tdept) {
		// TODO Auto-generated method stub
		return teacherDao.getTeacherTotal(Tno, TDimName, Tsex, Ttitle, Tdept);
	}

	@Override
	public List<Teacher> queryTeacherListByPage(String Tno, String TDimName, String Tsex, String Ttitle, String Tdept,
			int start, int count) {
		// TODO Auto-generated method stub
		return teacherDao.queryTeacherListByPage(Tno, TDimName, Tsex, Ttitle, Tdept, start, count);
	}

	@Override
	public int insertTeacherByTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.insertTeacherByTeacher(teacher);
	}

	@Override
	public int deleteTeacherByTno(String Tno) {
		// TODO Auto-generated method stub
		return teacherDao.deleteTeacherByTno(Tno);
	}

	@Override
	public int resetTpassByTno(String Tno) {
		// TODO Auto-generated method stub
		return teacherDao.resetTpassByTno(Tno);
	}

	@Override
	public int updateteacher(String Tno, String Tdept, String Ttitle, String Ttel, String Temail) {
		// TODO Auto-generated method stub
		return teacherDao.updateteacher(Tno, Tdept, Ttitle, Ttel, Temail);
	}
}
