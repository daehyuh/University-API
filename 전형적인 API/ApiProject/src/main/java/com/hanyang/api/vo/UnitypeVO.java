package com.hanyang.api.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class UnitypeVO {
	@JsonProperty(value = "Count")
	private int uni_idx;
	
	@JsonProperty(value="University")
	private String uni_name;
	
	@JsonProperty(value="Branch")
	private String uni_branch;
	
	@JsonProperty(value="Region")
	private String uni_region;
	
	@JsonProperty(value="Recruitment")
	private String uni_recruitment;
	
	@JsonProperty(value="Department")
	private String uni_department;
	
	@JsonProperty(value="Selection")
	private String uni_selection;
	
	@JsonProperty(value="Selection_Type")
	private String uni_selection_type;
	
	@JsonProperty(value="Selection_Name")
	private String uni_selection_name;
	
	@JsonProperty(value="Type_Number")
	private int uni_type_number;
	
	@JsonProperty(value="Competition_Rate")
	private int uni_2022_competition_rate;
	
	@JsonProperty(value="Rate")
	private int uni_2022_rate;
}