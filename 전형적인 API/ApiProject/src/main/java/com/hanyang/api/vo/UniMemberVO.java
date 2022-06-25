package com.hanyang.api.vo;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;

@Getter @Setter
public class UniMemberVO {
	@JsonProperty(value = "Id")
	private String um_id;
	@JsonProperty(value = "Password")
	private String um_password;
	@JsonProperty(value = "Name")
	private String um_name;
	@JsonProperty(value = "Date")
	private String um_date;
	@JsonProperty(value = "Apikey")
	private String um_apikey;
	@JsonProperty(value = "Keydate")
	private String um_keydate;
	
}
