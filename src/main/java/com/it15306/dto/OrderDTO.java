package com.it15306.dto;

import java.util.Date;

import javax.validation.constraints.NotNull;

import com.it15306.entity.User;

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
	
	//@NotNull
	private String createDate;
	
	@NotNull
	private String address;
	
	//@NotNull(message = "User id không thể trống")
	private User user;
}
