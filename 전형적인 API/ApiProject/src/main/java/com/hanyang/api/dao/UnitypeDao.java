package com.hanyang.api.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hanyang.api.vo.UniMemberVO;
import com.hanyang.api.vo.UnitypeVO;

@Mapper
public interface UnitypeDao {
	List<UniMemberVO> SelectApikey();	
	
	//List<UnitypeVO> SelectAll();

	List<UnitypeVO> SelectByName(String name);

	List<UnitypeVO> SelectByRecruit(String recruit);

	List<UnitypeVO> SelectByDepart(String depart);

	List<UnitypeVO> SelectBySelection(String selection);

	List<UnitypeVO> SelectBySelection_Type(String selection_type);

	List<UnitypeVO> SelectBySelection_Name(String selection_name);
	
	List<UnitypeVO> SelectAllByApiKey(String apikey);
}