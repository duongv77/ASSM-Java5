package com.it15306.dto;

import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderdetailDTO {
	
	private Integer id;
	
	@NotNull
	private Integer quantity;
	
	@NotNull
	private Integer price;
}
