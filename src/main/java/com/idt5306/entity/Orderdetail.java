package com.idt5306.entity;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Component
@Entity
@Table(name = "oderdetails")
public class Orderdetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	
	@Column(name="quantity")
	private Integer quantity;
	
	@Column(name = "price")
	private Integer price;
	
	@OneToOne
	@JoinColumn(
		name = "order_id",
		nullable = false,
		referencedColumnName = "id"
	)			
	private Order order;
	
	@OneToMany
	@JoinColumn(
				name = "produc_id",
				nullable = false,
				referencedColumnName = "id"
			)
	private List<Product> product;
}
