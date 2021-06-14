package com.it15306.dto;

import javax.validation.constraints.NotNull;

import com.it15306.entity.Order;
import com.it15306.entity.Product;

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
	
	//@NotNull
	private Integer price;
	
	@NotNull
	private Order order;
	
	private Product product;
}
