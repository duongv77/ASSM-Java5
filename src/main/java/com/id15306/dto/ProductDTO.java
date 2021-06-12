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
public class ProductDTO {
	//@NotNull
	private Integer id;
	
	@NotNull
	private String name;
	
	@NotNull
	private Integer price;
	
	@NotNull
	private String createdate;
	
	@NotNull
	private Integer available;
	
	//@NotNull
	private String image;
}
