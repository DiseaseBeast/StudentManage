package com.nuc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nuc.dao.IStudentDao;
import com.nuc.model.SCourse;
import com.nuc.model.Student;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 下午8:08:07 
* 学生Service层
*/
@Service
public class StudentServiceImpl implements IStudentService{
	@Resource
	private IStudentDao studentDao;
	
	@Override
	public String querySnameBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.querySnameBySno(Sno);
	}

	@Override
	public Student queryStudentBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.queryStudentBySno(Sno);
	}

	@Override
	public int updatePasswordBySno(String Sno, String password) {
		// TODO Auto-generated method stub
		return studentDao.updatePasswordBySno(Sno, password);
	}

	@Override
	public String querySpasswordBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.querySpasswordBySno(Sno);
	}

	@Override
	public String querySdepBySmajor(String major) {
		// TODO Auto-generated method stub
		return studentDao.querySdepBySmajor(major);
	}

	@Override
	public List<SCourse> queryResultBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.queryResultBySno(Sno);
	}

	@Override
	public List<SCourse> queryPResultBySno(String Sno, String Time) {
		// TODO Auto-generated method stub
		return studentDao.queryPResultBySno(Sno, Time);
	}

	@Override
	public List<SCourse> queryChooseBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.queryChooseBySno(Sno);
	}

	@Override
	public int cancelChooseByCno(String Sno, String Cno) {
		// TODO Auto-generated method stub
		return studentDao.cancelChooseByCno(Sno, Cno);
	}

	@Override
	public int insertSCourseByCno(String Sno, String Cno) {
		// TODO Auto-generated method stub
		return studentDao.insertSCourseByCno(Sno, Cno);
	}

	@Override
	public String queryGradeByCno(String Sno, String Cno) {
		// TODO Auto-generated method stub
		return studentDao.queryGradeByCno(Sno, Cno);
	}

	@Override
	public String queryPGradeByCno(String Sno, String Cno, String Time) {
		// TODO Auto-generated method stub
		return studentDao.queryPGradeByCno(Sno, Cno, Time);
	}

	@Override
	public int getStudentTotal(String Sno, String Sclass, String SDimName, String Ssex, String Smajor, String Sdept) {
		// TODO Auto-generated method stub
		return studentDao.getStudentTotal(Sno, Sclass, SDimName, Ssex, Smajor, Sdept);
	}

	@Override
	public List<Student> queryStudentListByPage(String Sno, String Sclass, String SDimName, String Ssex, String Smajor,
			String Sdept, int start, int count) {
		// TODO Auto-generated method stub
		return studentDao.queryStudentListByPage(Sno, Sclass, SDimName, Ssex, Smajor, Sdept, start, count);
	}

	@Override
	public int insertStudentByStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDao.insertStudentByStudent(student);
	}

	@Override
	public int deleteStudentBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.deleteStudentBySno(Sno);
	}

	@Override
	public int resetSpassBySno(String Sno) {
		// TODO Auto-generated method stub
		return studentDao.resetSpassBySno(Sno);
	}

	@Override
	public int updatestudent(String Sno, String Smajor, String Sclass, String Stel, String Semail) {
		// TODO Auto-generated method stub
		return studentDao.updatestudent(Sno, Smajor, Sclass, Stel, Semail);
	}

}
