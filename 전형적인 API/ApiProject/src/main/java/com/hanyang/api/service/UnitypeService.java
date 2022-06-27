package com.hanyang.api.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanyang.api.dao.UnitypeDao;
import com.hanyang.api.vo.UniMemberVO;
import com.hanyang.api.vo.UnitypeVO;

@Service
public class UnitypeService {
	@Autowired
	UnitypeDao unitypeDao;
	
//	public List<UnitypeVO> SelectAll() {
//		return unitypeDao.SelectAll();
//	}
	
	public List<UnitypeVO> SelectByName(String name) {
		return unitypeDao.SelectByName(name);
	}
	
	public List<UnitypeVO> SelectByRecruit(String recruit) {
		return unitypeDao.SelectByRecruit(recruit);
	}
	
	public List<UnitypeVO> SelectByDepart(String depart) {
		return unitypeDao.SelectByDepart(depart);
	}
	
	public List<UnitypeVO> SelectBySelection(String selection) {
		return unitypeDao.SelectBySelection(selection);
	}
	
	public List<UnitypeVO> SelectBySelection_Type(String selection_type) {
		return unitypeDao.SelectBySelection_Type(selection_type);
	}
	
	public List<UnitypeVO> SelectBySelection_Name(String selection_name) {
		return unitypeDao.SelectBySelection_Name(selection_name);
	}
	
	public List<UnitypeVO> SelectAllByApiKey(String apikey) {
		List<UniMemberVO> list = new ArrayList<UniMemberVO>();
		List<UnitypeVO> list2 = new ArrayList<UnitypeVO>();
		list = unitypeDao.SelectApikey();
		
		list2.add(null);
		
		if(!list.contains(apikey)) {
			return unitypeDao.SelectAllByApiKey(apikey);
		} else {
			return list2;
		}
		
	}
}