package com.nuc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nuc.dao.IDepartmentDao;
import com.nuc.model.Department;

/** 
* @author 作者:ly 
* @version 创建时间：2020年1月3日 下午9:36:56 
* 
*/
@Service
public class DepartmentServiceImpl implements IDepartmentService{
	@Resource
	private IDepartmentDao departmentDao;
	
	@Override
	public Department queryDepartmentByAno(String Ano) {
		// TODO Auto-generated method stub
		return departmentDao.queryDepartmentByAno(Ano);
	}

	@Override
	public String queryApasswordByAno(String Ano) {
		// TODO Auto-generated method stub
		return departmentDao.queryApasswordByAno(Ano);
	}

	@Override
	public int updatePasswordByAno(String Ano, String password) {
		// TODO Auto-generated method stub
		return departmentDao.updatePasswordByAno(Ano, password);
	}

}
