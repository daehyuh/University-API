package com.hanyang.api.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class UnitypeVO {
	@JsonProperty(value = "카운트")
	private int uni_idx;
	
	@JsonProperty(value="대학교")
	private String uni_name;
	
	@JsonProperty(value="본분교")
	private String uni_branch;
	
	@JsonProperty(value="지역")
	private String uni_region;
	
	@JsonProperty(value="모집시기")
	private String uni_recruitment;
	
	@JsonProperty(value="학과")
	private String uni_department;
	
	@JsonProperty(value="전형유형")
	private String uni_selection;
	
	@JsonProperty(value="종합교과")
	private String uni_selection_type;
	
	@JsonProperty(value="전형명")
	private String uni_selection_name;
	
	@JsonProperty(value="모집인원")
	private int uni_type_number;
	
	@JsonProperty(value="2022학년도 경쟁률")
	private double uni_2022_competition_rate;
	
	@JsonProperty(value="2022학년도 평균등급")
	private double uni_2022_rate;
}