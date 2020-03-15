package com.nuc.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nuc.dao.ITermDao;
import com.nuc.model.Term;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月31日 下午9:50:45 
* 日期服务层
*/
@Service
public class TermServiceImpl implements ITermService{
	@Resource
	private ITermDao termDao;
	
	@Override
	public Term getTerm() {
		// TODO Auto-generated method stub
		return termDao.getTerm();
	}

	@Override
	public int setTerm(String newTime) {
		// TODO Auto-generated method stub
		return termDao.setTerm(newTime);
	}
	
}
