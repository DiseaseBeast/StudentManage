package com.nuc.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.nuc.dao.ITouristDao;
import com.nuc.model.Tourist;

/** 
* @author 作者:ly 
* @version 创建时间：2019年12月30日 下午9:32:19 
* 游客Service层
*/
@Service
public class TouristServiceImpl implements ITouristService{
	@Resource
	private ITouristDao touristDao;
	
	@Override
	public Tourist queryTouristBySno(String Sno) {
		// TODO Auto-generated method stub
		return touristDao.queryTouristBySno(Sno);
	}

	@Override
	public Tourist queryTouristByTno(String Tno) {
		// TODO Auto-generated method stub
		return touristDao.queryTouristByTno(Tno);
	}

	@Override
	public Tourist queryTouristByAno(String Ano) {
		// TODO Auto-generated method stub
		return touristDao.queryTouristByAno(Ano);
	}

}
