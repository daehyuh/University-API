package com.hanyang.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hanyang.api.service.UnitypeService;
import com.hanyang.api.vo.UnitypeVO;

@Controller
public class ApiController {
	@Autowired
	UnitypeService unitypeService;

	@GetMapping("/List/All")
	public @ResponseBody List<UnitypeVO> selectListUni() {
		List<UnitypeVO> alluni = unitypeService.selectAll();
		return alluni;
	}

	@GetMapping("/List/Name")
	public @ResponseBody List<UnitypeVO> selectListByName(@RequestParam String name) {
		List<UnitypeVO> NameUni = unitypeService.SelectByName(name);
		return NameUni;
	}

	@GetMapping("/List/Recruit")
	public @ResponseBody List<UnitypeVO> SelectListByRecurit(@RequestParam String recruit) {
		List<UnitypeVO> RecruitUni = unitypeService.SelectByRecruit(recruit);
		return RecruitUni;
	}

	@GetMapping("/List/Depart")
	public @ResponseBody List<UnitypeVO> SelectListByDepart(@RequestParam String depart) {
		List<UnitypeVO> DepartUni = unitypeService.SelectByDepart(depart);
		return DepartUni;
	}

	@GetMapping("/List/Selection")
	public @ResponseBody List<UnitypeVO> SelectListBySelection(@RequestParam String selection) {
		List<UnitypeVO> DepartUni = unitypeService.SelectBySelection(selection);
		return DepartUni;
	}

	@GetMapping("/List/Selection_Type")
	public @ResponseBody List<UnitypeVO> SelectListBySelection_Type(@RequestParam String selection_type) {
		List<UnitypeVO> DepartUni = unitypeService.SelectBySelection_Type(selection_type);
		return DepartUni;
	}

	@GetMapping("/List/Selection_Name")
	public @ResponseBody List<UnitypeVO> SelectListBySelection_Name(@RequestParam String selection_name) {
		List<UnitypeVO> DepartUni = unitypeService.SelectBySelection_Name(selection_name);
		return DepartUni;
	}
}
