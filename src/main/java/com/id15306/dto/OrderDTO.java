package com.id15306.dto;

import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
	//@NotNull
	private Integer id;
	
	@NotNull
	private Date createDate;
	
	@NotNull
	private String address;
}
